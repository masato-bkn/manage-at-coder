# frozen_string_literal: true

class ProblemsController < ApplicationController
  def create
    categories = params[:categories]

    problem_id = 0

    ActiveRecord::Base.transaction do
      categories = categories.map do |category|
        Category.create!(value: category)
      end

      problem_id = Problem.create!(problem_params).id

      categories.map do |category|
        ProblemCategory.create!(problem_id: problem_id, category_id: category.id)
      end
    end

    render json: Problem.find(problem_id)
  end

  private

  def category_params
    params.permit(:title, :level, :date)
  end

  def problem_params
    params.permit(:title, :level, :date)
  end
end

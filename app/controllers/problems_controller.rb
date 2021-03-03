# frozen_string_literal: true

class ProblemsController < ApplicationController
  def create
    problem_id = 0

    ActiveRecord::Base.transaction do
      categories = create_category

      problem_id = Problem.create!(problem_params).id

      create_problem_category(problem_id, categories)
    end

    render json: Problem.find(problem_id)
  end

  private

  def create_category
    params[:categories].map do |category|
      Category.find_or_create_by!(value: category)
    end
  end

  def create_problem_category(problem_id, categories)
    categories.map do |category|
      ProblemCategory.create!(problem_id: problem_id, category_id: category.id)
    end
  end

  def category_params
    params.permit(:title, :level, :date)
  end

  def problem_params
    params.permit(:title, :level, :date)
  end
end

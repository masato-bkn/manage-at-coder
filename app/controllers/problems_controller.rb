# frozen_string_literal: true

class ProblemsController < ApplicationController
    def create
      problem = Problem.create(create_params)
      render json: problem
    end

    private

    def create_params
        params.permit(:title, :level, :date)
    end
end

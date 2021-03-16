# frozen_string_literal: true

class CategorysController < ApplicationController
  def create
    Category.create!(category_params)
  end

  private

  def category_params
    params.permit(:name)
  end
end

# frozen_string_literal: true

require 'rails_helper'

RSpec.describe ProblemsController, type: :request do
  subject do
    post categorys_path(params)
    response
  end

  let :params do
    {
      name: '整数'
    }
  end

  it do
    expect(subject).to have_http_status(:success)
  end
end

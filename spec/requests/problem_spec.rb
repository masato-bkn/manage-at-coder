# frozen_string_literal: true

require 'rails_helper'

RSpec.describe ProblemsController, type: :request do
  subject do
    post problems_path(params)
    response
  end

  let :params do
    {
      title: 'hoge',
      level: Enums::Level::A,
      date: Time.zone.now
    }
  end

  it 'returns success' do
    expect(subject).to have_http_status(:success)
  end

  it 'problemが作成されること' do
    expect { subject }.to change { Problem.count }.from(0).to(1)
  end

  it 'パラメタで指定した値でproblemが作成されること' do
    subject
    problem = Problem.first
    expect(problem.title).to eq(params[:title])
    expect(problem.level).to eq(params[:level])
    expect(problem.date).to eq(params[:date].rfc3339)
  end
end

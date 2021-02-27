require 'rails_helper'

RSpec.describe ProblemsController, type: :request do
   subject do
    post problems_path(params)
    response
   end 

   it 'returns success' do
    expect(subject).to have_http_status(:success)
   end

   let :params do
    {
        title: "hoge",
        level: 0,
        date: Time.zone.now
    }
   end
end

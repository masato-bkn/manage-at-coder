# frozen_string_literal: true

require 'rails_helper'

RSpec.describe Problem, type: :model do
  describe 'levelについて' do
    context 'levelがA, B, C以外の場合' do
      it do
        expect(build(:problem, level: 'D')).to be_invalid
      end
    end
  end
end

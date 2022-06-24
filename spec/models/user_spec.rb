# frozen_string_literal: true

require 'rails_helper'

RSpec.describe User, type: :model do
  # subject { build(:user) }
  describe 'Validaciones del modelo User' do
    it { is_expected.to validate_presence_of(:first_name) }
    it { is_expected.to validate_presence_of(:last_name) }
    it { is_expected.to validate_presence_of(:email) }
    it { is_expected.to validate_presence_of(:password_digest) }
    it { is_expected.to validate_length_of(:password).is_at_least(8) }
    # is_expected.to validate_uniqueness_of(:email).ignoring_case_sensitivity
    # it { is_expected.to validate_presence_of(:role) }
  end

  describe 'Asociaciones del modelo User' do
    it { is_expected.to validate_presence_of(:first_name) }
    it { is_expected.to validate_presence_of(:last_name) }
    it { is_expected.to validate_presence_of(:email) }
    it { is_expected.to validate_presence_of(:password_digest) }
    it { is_expected.to validate_length_of(:password).is_at_least(8) }
  end
end

require 'rails_helper'

RSpec.describe Label, type: :model do
  let(:topic) { create(:topic) }
  let(:user) { create(:user) }
  let(:post) { create(:post) }
  let(:label) {Label.create! (name: 'Label') }

  it { should belong_to :labelable }
end

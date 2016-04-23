require 'rails_helper'

RSpec.describe Post, type: :model do
  let(:post) { Post.create!(title: "New Post Title", body: "New Post Body")}

  describe "Post" do
    it { is_expected.to belong_to(:topic) }

    it { is_expected.to validate_presence_of(:title) }
     it { is_expected.to validate_presence_of(:body) }
     it { is_expected.to validate_presence_of(:topic) }

     it { is_expected.to validate_length_of(:title).is_at_least(5) }
     it { is_expected.to validate_length_of(:body).is_at_least(20) }
   end

  # #2
  describe "attributes" do
    it "has title and body attributes" do
      expect(post).to have_attributes(title: "New Post Title", body: "New Post Body")
  end
end
end

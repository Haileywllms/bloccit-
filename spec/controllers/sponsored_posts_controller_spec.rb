require 'rails_helper'

RSpec.describe SponsoredPostsControllerController, type: :controller do

  let(:topics) { Topic.create!(name:  RandomData.random_sentence, description: RandomData.random_paragraph) }
  let(:sponsored_posts) { topics.sponsored_posts.create!(title: RandomData.random_sentence, body: RandomData.random_paragraph) }

  describe "GET show" do
  it "returns http success" do
# #16
    get :show, topic_id: my_topic.id, id: my_post.id
    expect(response).to have_http_status(:success)
  end
  it "renders the #show view" do
# #17
    get :show, topic_id: my_topic.id, id: my_post.id
    expect(response).to render_template :show
  end

  it "assigns my_post to @post" do
    get :show, topic_id: my_topic.id, id: my_post.id
# #18
    expect(assigns(:post)).to eq(my_post)
  end
end

describe "GET edit" do
   it "returns http success" do
      get :edit, topic_id: my_topic.id, id: my_post.id
     expect(response).to have_http_status(:success)
   end

   it "renders the #edit view" do
     get :edit, topic_id: my_topic.id, id: my_post.id
# #1
     expect(response).to render_template :edit
   end

# #2
   it "assigns post to be updated to @post" do
     get :edit, topic_id: my_topic.id, id: my_post.id

     post_instance = assigns(:post)

     expect(post_instance.id).to eq my_post.id
     expect(post_instance.title).to eq my_post.title
     expect(post_instance.body).to eq my_post.body
   end
 end

 describe "GET new" do
   it "returns http success" do
     get :new, topic_id: my_topic.id
     expect(response).to have_http_status(:success)
   end

   it "renders the #new view" do
     get :new, topic_id: my_topic.id
     expect(response).to render_template :new
   end

   it "initializes @post" do
     get :new, topic_id: my_topic.id
     expect(assigns(:post)).not_to be_nil
   end
 end
end

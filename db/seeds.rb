require 'random_data'

# Create Posts
50.times do
  # #1
    Post.create!(
  # #2
    title: RandomData.random_sentence,
    body:  RandomData.random_paragraph
    )
end
posts = Post.all

# Create Comments
# #3
100.times do
  Comment.create!(
  # #4
    post: posts.sample,
    body: RandomData.random_paragraph
    )
end

100.times do
  Question.create!(
    title: RandomData.random_sentence,
    body: RandomData.random_paragraph,
    resolved: false
  )
end

100.times do
  Advertisement.create!(
    title: RandomData.random_sentence,
    copy:  RandomData.random_paragraph,
    price: Random.rand(10)
  )
end


puts "Seed finished"
puts "#{Post.count} posts created"
puts "#{Question.count} comments created"
puts "#{Advertisement.count} advertisements created"

puts "#{Comment.count} comments created"

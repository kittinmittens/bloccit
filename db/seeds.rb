include RandomData

#Create Posts
50.times do
  Post.create!(
    title: RandomData.random_sentence,
    body: RandomData.random_paragraph
  )
end
posts = Post.all

100.times do
  Comment.create!(
  post: posts.sample,
  body: RandomData.random_paragraph
  )
end

puts "Seed finished"
puts "#{Post.count} posts created"
puts "#{Comment.count} comments created"

include RandomQuestion

#Create Posts
50.times do
  Question.create!(
    title: RandomQuestion.random_sentence,
    body: RandomQuestion.random_paragraph
  )
end
questions = Question.all

100.times do
  Question.create!(
  question: question.sample,
  body: RandomQuestion.random_paragraph
  )
end

puts "Seed finished"
puts "#{Question.count} posts created"
puts "#{Resolution.count} comments created"

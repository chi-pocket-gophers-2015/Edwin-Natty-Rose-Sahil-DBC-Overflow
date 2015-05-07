require 'Faker'

mentor = User.create!(username: Faker::Internet.user_name,
                      email: Faker::Internet.email,
                      password_digest: Faker::Internet.password,
                      bio: Faker::Lorem.sentences
                      )

troll = User.create!(username: Faker::Internet.user_name,
                     email: Faker::Internet.email,
                     password_digest: Faker::Internet.password,
                     bio: Faker::Lorem.sentences
                     )

civic = User.create!(username: Faker::Internet.user_name,
                     email: Faker::Internet.email,
                     password_digest: Faker::Internet.password,
                     bio: Faker::Lorem.sentences
                     )


10.times do
  user = User.create!(username: Faker::Internet.user_name,
                      email: Faker::Internet.email,
                      password_digest: Faker::Internet.password,
                      bio: Faker::Lorem.sentences
                      )



  question = user.questions.create!( title: Faker::Lorem.sentence,
                                     body: Faker::Lorem.paragraph,
                                     programming_language: "JavaScript"
                                     )
  question.question_votes.create!(  value: [1, -1].sample,
                                    voter: civic
                                    )
  question.question_comments.create!( comment: Faker::Lorem.sentence,
                                      commenter_id: troll.id
                                      )


  answer = question.answers.create!( title: Faker::Lorem.sentence,
                                     body: Faker::Lorem.paragraph,
                                     answerer_id: mentor.id
                                     )
  answer.answer_votes.create!( value: [1, -1].sample,
                               voter_id: civic.id
                               )
  question.question_comments.create!( comment: Faker::Lorem.sentence,
                                      commenter_id: troll.id
                                      )
end

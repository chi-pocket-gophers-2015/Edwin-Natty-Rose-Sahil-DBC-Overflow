#generate users

mentor = User.create!(username: Faker::Internet.user_name,
                email: Faker::Internet.email,
                password_digest: Faker::Internet.password,
                biography: Faker::Lorem.sentences
    )

troll = User.create!(username: Faker::Internet.user_name,
                email: Faker::Internet.email,
                password_digest: Faker::Internet.password,
                biography: Faker::Lorem.sentences
    )

civic = User.create!(username: Faker::Internet.user_name,
                email: Faker::Internet.email,
                password_digest: Faker::Internet.password,
                biography: Faker::Lorem.sentences
    )


10.times do
  user = User.create!(username: Faker::Internet.user_name,
                email: Faker::Internet.email,
                password_digest: Faker::Internet.password,
                biography: Faker::Lorem.sentences
    )



  question = user.questions.create!( title: Faker::Lorem.word
                                    body: Faker::Lorem.paragraph
                                    programming_language:
    )
  question.question_votes.create!(  value: [1, -1].sample
                                    user_id: civic.id
    )
  question.question_comments.create!( entry: Faker::Lorem.sentence
                                      user_id: troll.id
    )


  answer = question.answers.create!( title: Faker::Lorem.word
                                      body: Faker::Lorem.paragraph
                                      user_id: mentor.id
    )
  answer.answer_votes.create!( value: [1, -1].sample
                                user_id: civic.id
    )
  question.question_comments.create!( entry: Faker::Lorem.sentence
                                      user_id: troll.id
    )

end


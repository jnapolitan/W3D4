# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

user1 = User.create(username: "Albert")
user2 = User.create(username: "Bob")
user3 = User.create(username: "Carol")
user4 = User.create(username: "Dave")
user5 = User.create(username: "Elizabeth")

poll1 = Poll.create(title: "Albert's poll", author_id: user1.id)
poll2 = Poll.create(title: "Bob's poll", author_id: user2.id)

q1 = Question.create(text: "Do you like me?", poll_id: poll1.id)
q2 = Question.create(text: "Will you vote for me?", poll_id: poll1.id)
q3 = Question.create(text: "What is love?", poll_id: poll1.id)

q4 = Question.create(text: "Do you think rent is too damn high?", poll_id: poll2.id)
q5 = Question.create(text: "Will you vote for me?", poll_id: poll2.id)
q6 = Question.create(text: "What is love?", poll_id: poll2.id)

a1 = AnswerChoice.create(text: "Yes", question_id: q1.id)
a2 = AnswerChoice.create(text: "No", question_id: q1.id)
a3 = AnswerChoice.create(text: "Yes", question_id: q2.id)
a4 = AnswerChoice.create(text: "No", question_id: q2.id)
a5 = AnswerChoice.create(text: "Baby don't hurt me...", question_id: q3.id)
a6 = AnswerChoice.create(text: "Don't hurt me no more.", question_id: q3.id)

a7 = AnswerChoice.create(text: "Yes", question_id: q4.id)
a8 = AnswerChoice.create(text: "No", question_id: q4.id)
a9 = AnswerChoice.create(text: "Yes", question_id: q5.id)
a10 = AnswerChoice.create(text: "No", question_id: q5.id)
a11 = AnswerChoice.create(text: "Baby don't hurt me...", question_id: q6.id)
a12 = AnswerChoice.create(text: "Don't hurt me no more.", question_id: q6.id)

Response.create(user_id: user4.id, answer_choice_id: a7.id)
Response.create(user_id: user4.id, answer_choice_id: a10.id)
Response.create(user_id: user4.id, answer_choice_id: a12.id)

Response.create(user_id: user3.id, answer_choice_id: a2.id)
Response.create(user_id: user3.id, answer_choice_id: a3.id)
Response.create(user_id: user3.id, answer_choice_id: a5.id)

Response.create(user_id: user5.id, answer_choice_id: a2.id)
Response.create(user_id: user5.id, answer_choice_id: a3.id)
Response.create(user_id: user5.id, answer_choice_id: a5.id)






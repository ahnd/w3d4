# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
User.destroy_all
Question.destroy_all
Poll.destroy_all
AnswerChoice.destroy_all
Response.destroy_all

user1 = User.create!(username: 'David')
user2 = User.create!(username: 'Tyler')
user3 = User.create!(username: 'Kobe')
user4 = User.create!(username: 'Lebron')
user5 = User.create!(username: 'Jayson')
user6 = User.create!(username: 'Kevin')

poll1 = Poll.create!(title: 'how many 3''s?', author_id: user1.id)
poll2 = Poll.create!(title: 'who''s the best?', author_id: user2.id)
poll3 = Poll.create!(title: 'who''s the worst?', author_id: user1.id)
poll4 = Poll.create!(title: 'who''s winning next year?', author_id: user3.id)
poll5 = Poll.create!(title: 'do you like steven smith?', author_id: user4.id)
poll6 = Poll.create!(title: 'kobe <=> jordan?', author_id: user1.id)
poll7 = Poll.create!(title: 'favorite team?', author_id: user6.id)

question1 = Question.create!(question_text: 'text1', poll_id: poll1.id)
question2 = Question.create!(question_text: 'text1', poll_id: poll2.id)
question3 = Question.create!(question_text: 'text2', poll_id: poll1.id)
question4 = Question.create!(question_text: 'text2', poll_id: poll2.id)
question5 = Question.create!(question_text: 'text3', poll_id: poll1.id)
question6 = Question.create!(question_text: 'text1', poll_id: poll3.id)
question7 = Question.create!(question_text: 'text1', poll_id: poll4.id)
question8 = Question.create!(question_text: 'text1', poll_id: poll5.id)
question9 = Question.create!(question_text: 'text4', poll_id: poll1.id)
question10 = Question.create!(question_text: 'text1', poll_id: poll6.id)
question11 = Question.create!(question_text: 'text2', poll_id: poll5.id)
question12 = Question.create!(question_text: 'text2', poll_id: poll5.id)
question13 = Question.create!(question_text: 'text3', poll_id: poll2.id)

answerchoice1 = AnswerChoice.create!(answer_text: 'anstext1', question_id: question1.id)
answerchoice2 = AnswerChoice.create!(answer_text: 'anstext2', question_id: question1.id)
answerchoice3 = AnswerChoice.create!(answer_text: 'anstext3', question_id: question1.id)
answerchoice4 = AnswerChoice.create!(answer_text: 'anstext1', question_id: question2.id)
answerchoice5 = AnswerChoice.create!(answer_text: 'anstext2', question_id: question2.id)
answerchoice6 = AnswerChoice.create!(answer_text: 'anstext3', question_id: question2.id)
answerchoice7 = AnswerChoice.create!(answer_text: 'anstext1', question_id: question3.id)
answerchoice8 = AnswerChoice.create!(answer_text: 'anstext1', question_id: question4.id)
answerchoice9 = AnswerChoice.create!(answer_text: 'anstext1', question_id: question5.id)
answerchoice10 = AnswerChoice.create!(answer_text: 'anstext1', question_id: question6.id)

response1 = Response.create!(answer_choice_id: answerchoice1.id, answerer_id: user1.id)
response2 = Response.create!(answer_choice_id: answerchoice2.id, answerer_id: user1.id)
response3 = Response.create!(answer_choice_id: answerchoice3.id, answerer_id: user2.id)
response4 = Response.create!(answer_choice_id: answerchoice4.id, answerer_id: user3.id)
response5 = Response.create!(answer_choice_id: answerchoice1.id, answerer_id: user4.id)
response6 = Response.create!(answer_choice_id: answerchoice2.id, answerer_id: user4.id)
response7 = Response.create!(answer_choice_id: answerchoice1.id, answerer_id: user5.id)
response8 = Response.create!(answer_choice_id: answerchoice5.id, answerer_id: user5.id)
response9 = Response.create!(answer_choice_id: answerchoice6.id, answerer_id: user5.id)
response10 = Response.create!(answer_choice_id: answerchoice7.id, answerer_id: user5.id)
response11 = Response.create!(answer_choice_id: answerchoice8.id, answerer_id: user5.id)

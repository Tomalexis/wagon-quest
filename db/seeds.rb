# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

require "open-uri"

puts 'Cleaning up Database...'
Lesson.destroy_all
Question.destroy_all
Answer.destroy_all
Teacher.destroy_all
puts 'Database cleaned.'

puts 'Adding lessons'

first_lesson = Lesson.new(
  name: "Setup terminal and Git",
  hp_user: 10,
  hp_teacher: 10
)

second_lesson = Lesson.new(
  name: "Savoir vivre rules",
  hp_user: 10,
  hp_teacher: 8
)

puts 'Lessons created'

puts 'Creating Slackbot questions...'

first_slackbot_question = Question.new(
  content: 'How do you create a folder in current directory ?',
  lesson_id: first_lesson.id
)

second_slackbot_question = Question.new(
  content: 'How do you push your code on GitHub ?',
  lesson_id: first_lesson.id
)

third_slackbot_question = Question.new(
  content: 'How do you go from current directory to a child folder ?',
  lesson_id: first_lesson.id
)

fourth_slackbot_question = Question.new(
  content: 'How do you create a file in current directory ?',
  lesson_id: first_lesson.id
)

fifth_slackbot_question = Question.new(
  content: 'How can you tell if you have uncommitted changes in your project ?',
  lesson_id: first_lesson.id
)

puts 'Slackbot questions created'

puts 'Creating Jeremy questions...'

first_jeremy_question = Question.new(
  content: 'At what time should you arrive in the morning ?',
  lesson_id: second_lesson.id
)

second_jeremy_question = Question.new(
  content: 'When can you grab beers in the fridge ?',
  lesson_id: second_lesson.id
)

third_jeremy_question = Question.new(
  content: 'Where should you put your dirty coffee cups ?',
  lesson_id: second_lesson.id
)

fourth_jeremy_question = Question.new(
  content: 'How many bottles of shampoo do I use each week to keep my hair so silky ?',
  lesson_id: second_lesson.id
)

puts 'Jeremy questions created.'

puts 'Creating answers...'

first_slackbot_question_first_answer = Answer.new(
  content: 'mkdir <folder_name>',
  kind: perfect,
  question_id: first_slackbot_question.id
)

first_slackbot_question_second_answer = Answer.new(
  content: 'mkdir',
  kind: "correct",
  question_id: first_slackbot_question.id
)

first_slackbot_question_third_answer = Answer.new(
  content: 'touch <folder_name>',
  kind: "misleading",
  question_id: first_slackbot_question.id
)

first_slackbot_question_fourth_answer = Answer.new(
  content: '*You pick a cardboard and actually fold it*',
  kind: "weird",
  question_id: first_slackbot_question.id
)

second_slackbot_question_first_answer = Answer.new(
  content: 'git push <remote> <branch>',
  kind: "perfect",
  question_id: second_slackbot_question.id
)

second_slackbot_question_second_answer = Answer.new(
  content: 'git push origin master',
  kind: "correct",
  question_id: second_slackbot_question.id
)

second_slackbot_question_third_answer = Answer.new(
  content: 'git commit',
  kind: "misleading",
  question_id: second_slackbot_question.id
)

second_slackbot_question_fourth_answer = Answer.new(
  content: 'git putsch',
  kind: "weird",
  question_id: second_slackbot_question.id
)

third_slackbot_question_first_answer = Answer.new(
  content: 'cd <folder_name>',
  kind: "perfect",
  question_id: third_slackbot_question.id
)

third_slackbot_question_second_answer = Answer.new(
  content: 'cd',
  kind: "correct",
  question_id: third_slackbot_question.id
)

third_slackbot_question_third_answer = Answer.new(
  content: 'pwd',
  kind: "misleading",
  question_id: third_slackbot_question.id
)

third_slackbot_question_fourth_answer = Answer.new(
  content: 'laserdisc <folder_name>',
  kind: "weird",
  question_id: third_slackbot_question.id
)

fourth_slackbot_question_first_answer = Answer.new(
  content: 'touch <file_name>',
  kind: "perfect",
  question_id: fourth_slackbot_question.id
)

fourth_slackbot_question_second_answer = Answer.new(
  content: 'touch',
  kind: "correct",
  question_id: fourth_slackbot_question.id
)

fourth_slackbot_question_third_answer = Answer.new(
  content: 'create <file_name>',
  kind: "misleading",
  question_id: fourth_slackbot_question.id
)

fourth_slackbot_question_fourth_answer = Answer.new(
  content: 'Cause everytime we touch I get this feeling 🎵',
  kind: "weird",
  question_id: fourth_slackbot_question.id
)

fifth_slackbot_question_first_answer = Answer.new(
  content: 'git status',
  kind: "perfect",
  question_id: fifth_slackbot_question.id
)

fifth_slackbot_question_second_answer = Answer.new(
  content: 'gst',
  kind: "correct",
  question_id: fifth_slackbot_question.id
)

fifth_slackbot_question_third_answer = Answer.new(
  content: 'git log',
  kind: "misleading",
  question_id: fifth_slackbot_question.id
)

fifth_slackbot_question_fourth_answer = Answer.new(
  content: 'I am not looking for commitment right now...',
  kind: "weird",
  question_id: fifth_slackbot_question.id
)

first_jeremy_question_first_answer = Answer.new(
  content: '8:45 AM',
  kind: "perfect",
  question_id: first_jeremy_question.id
)

first_jeremy_question_second_answer = Answer.new(
  content: '9:00 AM',
  kind: "correct",
  question_id: first_jeremy_question.id
)

first_jeremy_question_third_answer = Answer.new(
  content: '10:30 AM',
  kind: "misleading",
  question_id: first_jeremy_question.id
)

first_jeremy_question_fourth_answer = Answer.new(
  content: 'What year is this ?!!',
  kind: "weird",
  question_id: first_jeremy_question.id
)

second_jeremy_question_first_answer = Answer.new(
  content: 'Only during events after working hours',
  kind: "perfect",
  question_id: second_jeremy_question.id
)

second_jeremy_question_second_answer = Answer.new(
  content: 'Only after 6:00 PM',
  kind: "correct",
  question_id: second_jeremy_question.id
)

second_jeremy_question_third_answer = Answer.new(
  content: 'During lunch break',
  kind: "misleading",
  question_id: second_jeremy_question.id
)

second_jeremy_question_fourth_answer = Answer.new(
  content: 'Well I usually mix my cereals with a white russian so...',
  kind: "weird",
  question_id: second_jeremy_question.id
)

third_jeremy_question_first_answer = Answer.new(
  content: 'In the dishwasher',
  kind: "perfect",
  question_id: third_jeremy_question.id
)

third_jeremy_question_second_answer = Answer.new(
  content: 'In the sink',
  kind: "correct",
  question_id: third_jeremy_question.id
)

third_jeremy_question_third_answer = Answer.new(
  content: 'I can leave it at my seat',
  kind: "misleading",
  question_id: third_jeremy_question.id
)

third_jeremy_question_fourth_answer = Answer.new(
  content: 'I drink tea so the rules does not apply to me !',
  kind: "weird",
  question_id: third_jeremy_question.id
)

fourth_jeremy_question_first_answer = Answer.new(
  content: 'One (family) bottle',
  kind: "perfect",
  question_id: fourth_jeremy_question.id
)

fourth_jeremy_question_second_answer = Answer.new(
  content: 'How should I know ?!!',
  kind: "correct",
  question_id: fourth_jeremy_question.id
)

fourth_jeremy_question_third_answer = Answer.new(
  content: 'Ten billion bottles !!!',
  kind: "misleading",
  question_id: fourth_jeremy_question.id
)

fourth_jeremy_question_fourth_answer = Answer.new(
  content: 'This is actually a wig !',
  kind: "weird",
  question_id: fourth_jeremy_question.id
)

puts 'Answers created.'

puts 'Creating teachers...'

slackbot = Teacher.new(
  name: 'Slackbot',
  avatar_map: "https://ih1.redbubble.net/image.85616555.1319/flat,750x1000,075,f.jpg",
  avatar_battle: "https://www.kindpng.com/picc/m/540-5404348_pokemon-sprite-trainer-png-transparent-png.png",
  feedback_answer_perfect: 'Wonderful human, you are so good you might be a bot !',
  feedback_answer_correct: 'Nice human, but you could be even more specific !',
  feedback_answer_misleading: 'Human...Have you been sleeping in class ?',
  feedback_answer_weird: 'Are you trying to mess with my circuits human ?',
  feedback_intro: 'I am ordering you to do your flashcards now Student !!!',
  feedback_user_won: '',
  feedback_user_lost: 'I am so proud of you Student... I can see you have faith in the heart of the flashcards...',
  position_x: 0,
  position_y: 0,
  lesson_id: first_lesson.id
)

jeremy = Teacher.new(
  name: 'Jeremy',
  avatar_map: "https://www.kindpng.com/picc/m/414-4144393_pokemon-fire-red-character-sprite-hd-png-download.png",
  avatar_battle: "https://flyclipart.com/thumb2/pokemon-trainer-sprite-pixel-art-maker-179321.png",
  feedback_answer_perfect: 'Dude, that answer is HAIRxtraordinary !',
  feedback_answer_correct: 'Pretty cool answer Dude !',
  feedback_answer_misleading: 'Come on Dude, you can do better than that !',
  feedback_answer_weird: 'Dude, are you making fun of me ? That is a tHAIRrible answer !',
  feedback_intro: "Fun is important but so are rules Dude ! Never forget that !",
  feedback_user_won: 'Damn Dude, you are pretty good for a newbie !',
  feedback_user_lost: 'Dude, that is not a very chill attitude, go have an ice cream and try again !',
  position_x: 0,
  position_y: 0,
  lesson_id: second_lesson.id
)

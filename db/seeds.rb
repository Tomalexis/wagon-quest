# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

require "open-uri"

puts 'Starting seeds :'

puts 'Cleaning up Database...'
GameAnswer.destroy_all
Round.destroy_all
Battle.destroy_all
Game.destroy_all
User.destroy_all
Teacher.destroy_all
Answer.destroy_all
Question.destroy_all
Lesson.destroy_all
puts 'Database cleaned.'

puts 'Adding lessons...'

first_lesson = Lesson.create!(
  name: "Setup terminal and Git",
  hp_user: 9999,
  hp_teacher: 10
)

second_lesson = Lesson.create!(
  name: "Savoir vivre rules",
  hp_user: 8,
  hp_teacher: 8
)

third_lesson = Lesson.create!(
  name: "Ruby",
  hp_user: 10,
  hp_teacher: 20
)

fourth_lesson = Lesson.create!(
  name: "OOP",
  hp_user: 10,
  hp_teacher: 10
)

fifth_lesson = Lesson.create!(
  name: "DB",
  hp_user: 10,
  hp_teacher: 10
)

sixth_lesson = Lesson.create!(
  name: "Front",
  hp_user: 10,
  hp_teacher: 10
)

final_lesson = Lesson.create!(
  name: "Finals",
  hp_user: 10,
  hp_teacher: 40
)

secret_lesson = Lesson.create!(
  name: "Do or die",
  hp_user: 10,
  hp_teacher: 20
)

puts 'Lessons added.'

puts 'Creating Ruby questions...'

first_ruby_question = Question.create!(
  content: 'What are the 3 types of CSS selectors used for scraping ?',
  lesson_id: third_lesson.id
)

second_ruby_question = Question.create!(
  content: 'What do you need to require to parse a .json file ?',
  lesson_id: third_lesson.id
)

third_ruby_question = Question.create!(
  content: 'Which gem is used to parse a .xml or .html document ?',
  lesson_id: third_lesson.id
)

fourth_ruby_question = Question.create!(
  content: 'How can you open a web page in Ruby ?',
  lesson_id: third_lesson.id
)

fifth_ruby_question = Question.create!(
  content: 'What Regexp anchor would you use to specify that the pattern you look for is at the end of a line ?',
  lesson_id: third_lesson.id
)

sixth_ruby_question = Question.create!(
  content: 'How do you define ranges in a Regexp ?',
  lesson_id: third_lesson.id
)

seventh_ruby_question = Question.create!(
  content: 'What are the main uses of regular expressions ?',
  lesson_id: third_lesson.id
)

eighth_ruby_question = Question.create!(
  content: 'How do you define group patterns in a Regexp ?',
  lesson_id: third_lesson.id
)

ninth_ruby_question = Question.create!(
  content: 'Do you know how to use #gsub with a Regexp ?',
  lesson_id: third_lesson.id
)

tenth_ruby_question = Question.create!(
  content: 'How can you tell if a key is present in a Hash ?',
  lesson_id: third_lesson.id
)

eleventh_ruby_question = Question.create!(
  content: 'How can you get all the values of a Hash in an array ?',
  lesson_id: third_lesson.id
)

twelfth_ruby_question = Question.create!(
  content: 'How can you iterate through a Hash ?',
  lesson_id: third_lesson.id
)

thirteenth_ruby_question = Question.create!(
  content: 'Do you know how to split a String sentence into an Array of words ?',
  lesson_id: third_lesson.id
)

fourteenth_ruby_question = Question.create!(
  content: 'How would you sort an Array with a given sorting criteria ?',
  lesson_id: third_lesson.id
)

fifteenth_ruby_question = Question.create!(
  content: 'What is the simplest way to iterate through the items of an Array ?',
  lesson_id: third_lesson.id
)

sixteenth_ruby_question = Question.create!(
  content: 'Is there a way to have the index and the element when you iterate through an Array ?',
  lesson_id: third_lesson.id
)

seventeenth_ruby_question = Question.create!(
  content: 'Which iterator should you call on an Array to get another Array where all the elements were subject to the same treatment ?',
  lesson_id: third_lesson.id
)

eighteenth_ruby_question = Question.create!(
  content: 'How can you get the first item of an Array satisfying a given condition ?',
  lesson_id: third_lesson.id
)

nineteenth_ruby_question = Question.create!(
  content: 'How do you transform an array into another one with only elements matching a condition ?',
  lesson_id: third_lesson.id
)

twentieth_ruby_question = Question.create!(
  content: 'How can you delete an item from an array ?',
  lesson_id: third_lesson.id
)

twenty_first_ruby_question = Question.create!(
  content: 'Do you know how to test if condition_1 AND condition_2 are satisfied ?',
  lesson_id: third_lesson.id
)

twenty_second_ruby_question = Question.create!(
  content: 'How can you get the position (index) of an item in an array ?',
  lesson_id: third_lesson.id
)

twenty_third_ruby_question = Question.create!(
  content: 'How can you test if an item is included in an array ?',
  lesson_id: third_lesson.id
)

twenty_fourth_ruby_question = Question.create!(
  content: 'How do you append an element to an array ?',
  lesson_id: third_lesson.id
)

twenty_fifth_ruby_question = Question.create!(
  content: 'What is the opposite of while ?',
  lesson_id: third_lesson.id
)

twenty_sixth_ruby_question = Question.create!(
  content: 'Do you know how to test if condition_1 OR condition_2 is satisfied ?',
  lesson_id: third_lesson.id
)

twenty_seventh_ruby_question = Question.create!(
  content: 'What operator can you use on an Integer to compute the remainder of its euclidean division by any number ?',
  lesson_id: third_lesson.id
)

twenty_eighth_ruby_question = Question.create!(
  content: 'How can you sort an array ?',
  lesson_id: third_lesson.id
)

twenty_ninth_ruby_question = Question.create!(
  content: 'How can you get the number of items contained in an array ?',
  lesson_id: third_lesson.id
)

thirtieth_ruby_question = Question.create!(
  content: 'What does (1..10).to_a return ?',
  lesson_id: third_lesson.id
)

puts 'Ruby questions created.'

puts 'Creating empty OOP questions...'

first_oop_question = Question.create!(
  content: 'OOP 1 ?',
  lesson_id: fourth_lesson.id
)

second_oop_question = Question.create!(
  content: 'OOP 2 ?',
  lesson_id: fourth_lesson.id
)

third_oop_question = Question.create!(
  content: 'OOP 3 ?',
  lesson_id: fourth_lesson.id
)

fourth_oop_question = Question.create!(
  content: 'OOP 4 ?',
  lesson_id: fourth_lesson.id
)

fifth_oop_question = Question.create!(
  content: 'OOP 5 ?',
  lesson_id: fourth_lesson.id
)

sixth_oop_question = Question.create!(
  content: 'OOP 6 ?',
  lesson_id: fourth_lesson.id
)

seventh_oop_question = Question.create!(
  content: 'OOP 7 ?',
  lesson_id: fourth_lesson.id
)

eighth_oop_question = Question.create!(
  content: 'OOP 8 ?',
  lesson_id: fourth_lesson.id
)

puts 'Empty OOP questions created.'

puts 'Creating empty DB questions...'

first_db_question = Question.create!(
  content: 'DB 1 ?',
  lesson_id: fifth_lesson.id
)

second_db_question = Question.create!(
  content: 'DB 2 ?',
  lesson_id: fifth_lesson.id
)

third_db_question = Question.create!(
  content: 'DB 3 ?',
  lesson_id: fifth_lesson.id
)

fourth_db_question = Question.create!(
  content: 'DB 4 ?',
  lesson_id: fifth_lesson.id
)

fifth_db_question = Question.create!(
  content: 'DB 5 ?',
  lesson_id: fifth_lesson.id
)

sixth_db_question = Question.create!(
  content: 'DB 6 ?',
  lesson_id: fifth_lesson.id
)

seventh_db_question = Question.create!(
  content: 'DB 7 ?',
  lesson_id: fifth_lesson.id
)

eighth_db_question = Question.create!(
  content: 'DB 8 ?',
  lesson_id: fifth_lesson.id
)

puts 'Empty DB questions created.'

puts 'Creating Front questions...'

first_front_question = Question.create!(
  content: 'What are the standard CSS selectors ?',
  lesson_id: sixth_lesson.id
)

second_front_question = Question.create!(
  content: 'How do you create a hyperlink ?',
  lesson_id: sixth_lesson.id
)

third_front_question = Question.create!(
  content: 'What are the four types of CSS length units ?',
  lesson_id: sixth_lesson.id
)

fourth_front_question = Question.create!(
  content: 'How do you add an image in HTML ?',
  lesson_id: sixth_lesson.id
)

fifth_front_question = Question.create!(
  content: 'How do you define a <div> with round corners ?',
  lesson_id: sixth_lesson.id
)

sixth_front_question = Question.create!(
  content: 'How do you set the background color to red for the whole body of the page ?',
  lesson_id: sixth_lesson.id
)

seventh_front_question = Question.create!(
  content: 'How do you emphasize a word in a paragraph ?',
  lesson_id: sixth_lesson.id
)

eighth_front_question = Question.create!(
  content: 'What is the basic syntax of a HTML element ?',
  lesson_id: sixth_lesson.id
)

ninth_front_question = Question.create!(
  content: 'What flexbox CSS property sets the relative position of flex-items horizontally inside the flexbox ?',
  lesson_id: sixth_lesson.id
)

tenth_front_question = Question.create!(
  content: 'What flex-item CSS property sets its ability to shrink if necessary ?',
  lesson_id: sixth_lesson.id
)

eleventh_front_question = Question.create!(
  content: 'What flexbox CSS property sets flex-items’ vertical alignment inside the flexbox ?',
  lesson_id: sixth_lesson.id
)

twelfth_front_question = Question.create!(
  content: 'What CSS property should you use on background images to improve contrast ?',
  lesson_id: sixth_lesson.id
)

thirteenth_front_question = Question.create!(
  content: 'How do you define a div as a flexbox in your CSS ?',
  lesson_id: sixth_lesson.id
)

fourteenth_front_question = Question.create!(
  content: 'What flexbox CSS property is needed to display flex-items above one another (and not side by side) ?',
  lesson_id: sixth_lesson.id
)

fifteenth_front_question = Question.create!(
  content: 'How do you center the text of a div with Bootstrap ?',
  lesson_id: sixth_lesson.id
)

sixteenth_front_question = Question.create!(
  content: 'How do you make an image circular with Bootstrap ?',
  lesson_id: sixth_lesson.id
)

seventeenth_front_question = Question.create!(
  content: 'How many columns are there in Bootstrap’s grid ?',
  lesson_id: sixth_lesson.id
)

eighteenth_front_question = Question.create!(
  content: 'What are the three Bootstrap CSS classes you have to know to design a grid ?',
  lesson_id: sixth_lesson.id
)

nineteenth_front_question = Question.create!(
  content: 'How do you store a value in a brand new variable in JavaScript ?',
  lesson_id: sixth_lesson.id
)

twentieth_front_question = Question.create!(
  content: 'What is the naming convention for variables ?',
  lesson_id: sixth_lesson.id
)

twenty_first_front_question = Question.create!(
  content: 'How can you pick randomly a float between 0 and 1 in JavaScript ?',
  lesson_id: sixth_lesson.id
)

twenty_second_front_question = Question.create!(
  content: 'In ES6, how do you interpolate a string ?',
  lesson_id: sixth_lesson.id
)

twenty_third_front_question = Question.create!(
  content: 'How do you iterate over an array in JavaScript ?',
  lesson_id: sixth_lesson.id
)

twenty_fourth_front_question = Question.create!(
  content: 'How do you append content into a DOM element ?',
  lesson_id: sixth_lesson.id
)

twenty_fifth_front_question = Question.create!(
  content: 'How do you select an element in the DOM with its id ?',
  lesson_id: sixth_lesson.id
)

twenty_sixth_front_question = Question.create!(
  content: 'How do you listen and react to a DOM event ?',
  lesson_id: sixth_lesson.id
)

twenty_seventh_front_question = Question.create!(
  content: 'How do you select element(s) when you don’t have an id at hand ?',
  lesson_id: sixth_lesson.id
)

twenty_eighth_front_question = Question.create!(
  content: 'In which file can you see your project’s external npm dependencies listed ?',
  lesson_id: sixth_lesson.id
)

twenty_ninth_front_question = Question.create!(
  content: 'What is the most popular package repository for JavaScript ?',
  lesson_id: sixth_lesson.id
)

thirtieth_front_question = Question.create!(
  content: 'How do you add an external package available on NPM using Yarn ?',
  lesson_id: sixth_lesson.id
)

thirty_first_front_question = Question.create!(
  content: 'What do you do if Bootstrap is installed on your project ?',
  lesson_id: sixth_lesson.id
)

puts 'Front questions created.'

puts 'Creating Slackbot questions...'

first_slackbot_question = Question.create!(
  content: 'How do you create a folder in current directory ?',
  lesson_id: first_lesson.id
)

second_slackbot_question = Question.create!(
  content: 'How do you push your code on GitHub ?',
  lesson_id: first_lesson.id
)

third_slackbot_question = Question.create!(
  content: 'How do you go from current directory to a child folder ?',
  lesson_id: first_lesson.id
)

fourth_slackbot_question = Question.create!(
  content: 'How do you create a file in current directory ?',
  lesson_id: first_lesson.id
)

fifth_slackbot_question = Question.create!(
  content: 'How can you tell if you have uncommitted changes in your project ?',
  lesson_id: first_lesson.id
)

puts 'Slackbot questions created.'

puts 'Creating Jérémy questions...'

first_jeremy_question = Question.create!(
  content: 'At what time should you arrive in the morning ?',
  lesson_id: second_lesson.id
)

second_jeremy_question = Question.create!(
  content: 'When can you grab beers in the fridge ?',
  lesson_id: second_lesson.id
)

third_jeremy_question = Question.create!(
  content: 'Where should you put your dirty coffee cups ?',
  lesson_id: second_lesson.id
)

fourth_jeremy_question = Question.create!(
  content: 'How many bottles of shampoo do I use each week to keep my hair so silky ?',
  lesson_id: second_lesson.id
)

puts 'Jérémy questions created.'

puts 'Creating Sébastien questions...'

first_sebastien_question = Question.create!(
  content: 'How do you create a project in Rails?',
  lesson_id: secret_lesson.id
)

second_sebastien_question = Question.create!(
  content: 'How do you interact with your project in Rails?',
  lesson_id: secret_lesson.id
)

third_sebastien_question = Question.create!(
  content: 'How do you run your project locally in Rails?',
  lesson_id: secret_lesson.id
)

fourth_sebastien_question = Question.create!(
  content: 'How do you active JavaScript in your local project in Rails?',
  lesson_id: secret_lesson.id
)

fifth_sebastien_question = Question.create!(
  content: 'How do you create a model through the terminal in Rails?',
  lesson_id: secret_lesson.id
)

sixth_sebastien_question = Question.create!(
  content: 'How do you create a controller through the terminal in Rails?',
  lesson_id: secret_lesson.id
)

seventh_sebastien_question = Question.create!(
  content: 'How do you create a migration through the terminal in Rails?',
  lesson_id: secret_lesson.id
)

eighth_sebastien_question = Question.create!(
  content: "How do you list all of your project's routes in Rails?",
  lesson_id: secret_lesson.id
)

ninth_sebastien_question = Question.create!(
  content: "How do you launch all of your project's migrations in Rails?",
  lesson_id: secret_lesson.id
)

tenth_sebastien_question = Question.create!(
  content: "How do you feed your project's initial database in Rails?",
  lesson_id: secret_lesson.id
)

puts 'Sebastien questions created.'

puts 'Creating Ruby answers...'

first_ruby_question_first_answer = Answer.create!(
  content: 'Html tag, Class and ID',
  kind: 'perfect',
  question_id: first_ruby_question.id
)

first_ruby_question_second_answer = Answer.create!(
  content: 'Div, Class and ID',
  kind: "correct",
  question_id: first_ruby_question.id
)

first_ruby_question_third_answer = Answer.create!(
  content: 'Html tags',
  kind: "misleading",
  question_id: first_ruby_question.id
)

first_ruby_question_fourth_answer = Answer.create!(
  content: 'Selector, more like Skeletor',
  kind: "weird",
  question_id: first_ruby_question.id
)

second_ruby_question_first_answer = Answer.create!(
  content: 'require "json"',
  kind: 'perfect',
  question_id: second_ruby_question.id
)

second_ruby_question_second_answer = Answer.create!(
  content: 'json',
  kind: "correct",
  question_id: second_ruby_question.id
)

second_ruby_question_third_answer = Answer.create!(
  content: 'require "j.son"',
  kind: "misleading",
  question_id: second_ruby_question.id
)

second_ruby_question_fourth_answer = Answer.create!(
  content: 'require "Jason Statham"',
  kind: "weird",
  question_id: second_ruby_question.id
)

third_ruby_question_first_answer = Answer.create!(
  content: 'require "nokogiri"',
  kind: 'perfect',
  question_id: third_ruby_question.id
)

third_ruby_question_second_answer = Answer.create!(
  content: 'nokogiri',
  kind: "correct",
  question_id: third_ruby_question.id
)

third_ruby_question_third_answer = Answer.create!(
  content: 'noko-giri',
  kind: "misleading",
  question_id: third_ruby_question.id
)

third_ruby_question_fourth_answer = Answer.create!(
  content: 'require "onigiri"',
  kind: "weird",
  question_id: third_ruby_question.id
)

fourth_ruby_question_first_answer = Answer.create!(
  content: 'require "open-uri" and use the .open method',
  kind: 'perfect',
  question_id: fourth_ruby_question.id
)

fourth_ruby_question_second_answer = Answer.create!(
  content: 'require "open-uri"',
  kind: "correct",
  question_id: fourth_ruby_question.id
)

fourth_ruby_question_third_answer = Answer.create!(
  content: 'require "open-url"',
  kind: "misleading",
  question_id: fourth_ruby_question.id
)

fourth_ruby_question_fourth_answer = Answer.create!(
  content: 'require "open-sesame"',
  kind: "weird",
  question_id: fourth_ruby_question.id
)

fifth_ruby_question_first_answer = Answer.create!(
  content: '$',
  kind: 'perfect',
  question_id: fifth_ruby_question.id
)

fifth_ruby_question_second_answer = Answer.create!(
  content: '/abc$/',
  kind: "correct",
  question_id: fifth_ruby_question.id
)

fifth_ruby_question_third_answer = Answer.create!(
  content: '€',
  kind: "misleading",
  question_id: fifth_ruby_question.id
)

fifth_ruby_question_fourth_answer = Answer.create!(
  content: '/show me the money$/',
  kind: "weird",
  question_id: fifth_ruby_question.id
)

sixth_ruby_question_first_answer = Answer.create!(
  content: 'With brackets []',
  kind: 'perfect',
  question_id: sixth_ruby_question.id
)

sixth_ruby_question_second_answer = Answer.create!(
  content: '/[a-zA-Z]/',
  kind: "correct",
  question_id: sixth_ruby_question.id
)

sixth_ruby_question_third_answer = Answer.create!(
  content: 'With parentheses ()',
  kind: "misleading",
  question_id: sixth_ruby_question.id
)

sixth_ruby_question_fourth_answer = Answer.create!(
  content: 'By using buckets 🗑',
  kind: "weird",
  question_id: sixth_ruby_question.id
)

seventh_ruby_question_first_answer = Answer.create!(
  content: 'Data validation and extraction',
  kind: 'perfect',
  question_id: seventh_ruby_question.id
)

seventh_ruby_question_second_answer = Answer.create!(
  content: 'Data validation',
  kind: "correct",
  question_id: seventh_ruby_question.id
)

seventh_ruby_question_third_answer = Answer.create!(
  content: 'Data parsing',
  kind: "misleading",
  question_id: seventh_ruby_question.id
)

seventh_ruby_question_fourth_answer = Answer.create!(
  content: 'To make your life miserable',
  kind: "weird",
  question_id: seventh_ruby_question.id
)

eighth_ruby_question_first_answer = Answer.create!(
  content: 'By using parentheses ()',
  kind: 'perfect',
  question_id: eighth_ruby_question.id
)

eighth_ruby_question_second_answer = Answer.create!(
  content: '/(abc)+/',
  kind: "correct",
  question_id: eighth_ruby_question.id
)

eighth_ruby_question_third_answer = Answer.create!(
  content: 'By using brackets []',
  kind: "misleading",
  question_id: eighth_ruby_question.id
)

eighth_ruby_question_fourth_answer = Answer.create!(
  content: 'By using parents thesis',
  kind: "weird",
  question_id: eighth_ruby_question.id
)

ninth_ruby_question_first_answer = Answer.create!(
  content: 'gsub (pattern, replacement)',
  kind: 'perfect',
  question_id: ninth_ruby_question.id
)

ninth_ruby_question_second_answer = Answer.create!(
  content: 'gsub (/[aeiou]/, "i")',
  kind: "correct",
  question_id: ninth_ruby_question.id
)

ninth_ruby_question_third_answer = Answer.create!(
  content: 'gsub (replacement, pattern)',
  kind: "misleading",
  question_id: ninth_ruby_question.id
)

ninth_ruby_question_fourth_answer = Answer.create!(
  content: 'gsub (I hate, regexp)',
  kind: "weird",
  question_id: ninth_ruby_question.id
)

tenth_ruby_question_first_answer = Answer.create!(
  content: 'By using .key? :key_you_look_for',
  kind: 'perfect',
  question_id: tenth_ruby_question.id
)

tenth_ruby_question_second_answer = Answer.create!(
  content: '.key?',
  kind: "correct",
  question_id: tenth_ruby_question.id
)

tenth_ruby_question_third_answer = Answer.create!(
  content: '.find(key)',
  kind: "misleading",
  question_id: tenth_ruby_question.id
)

tenth_ruby_question_fourth_answer = Answer.create!(
  content: 'Oops I lost my keys',
  kind: "weird",
  question_id: tenth_ruby_question.id
)

eleventh_ruby_question_first_answer = Answer.create!(
  content: 'By using .values',
  kind: 'perfect',
  question_id: eleventh_ruby_question.id
)

eleventh_ruby_question_second_answer = Answer.create!(
  content: 'Hash .values',
  kind: "correct",
  question_id: eleventh_ruby_question.id
)

eleventh_ruby_question_third_answer = Answer.create!(
  content: 'By using .value',
  kind: "misleading",
  question_id: eleventh_ruby_question.id
)

eleventh_ruby_question_fourth_answer = Answer.create!(
  content: 'Sorry we do not share the same values',
  kind: "weird",
  question_id: eleventh_ruby_question.id
)

twelfth_ruby_question_first_answer = Answer.create!(
  content: 'Hash .each do |key, value|',
  kind: 'perfect',
  question_id: twelfth_ruby_question.id
)

twelfth_ruby_question_second_answer = Answer.create!(
  content: 'By using .each',
  kind: "correct",
  question_id: twelfth_ruby_question.id
)

twelfth_ruby_question_third_answer = Answer.create!(
  content: 'Hash .each_with_index do',
  kind: "misleading",
  question_id: twelfth_ruby_question.id
)

twelfth_ruby_question_fourth_answer = Answer.create!(
  content: 'To .each its own Hash',
  kind: "weird",
  question_id: twelfth_ruby_question.id
)

thirteenth_ruby_question_first_answer = Answer.create!(
  content: 'By calling the .split("") method',
  kind: 'perfect',
  question_id: thirteenth_ruby_question.id
)

thirteenth_ruby_question_second_answer = Answer.create!(
  content: 'string .split',
  kind: "correct",
  question_id: thirteenth_ruby_question.id
)

thirteenth_ruby_question_third_answer = Answer.create!(
  content: 'string .splice("")',
  kind: "misleading",
  question_id: thirteenth_ruby_question.id
)

thirteenth_ruby_question_fourth_answer = Answer.create!(
  content: 'Banana split',
  kind: "weird",
  question_id: thirteenth_ruby_question.id
)

fourteenth_ruby_question_first_answer = Answer.create!(
  content: 'Array .sort_by {criteria}',
  kind: 'perfect',
  question_id: fourteenth_ruby_question.id
)

fourteenth_ruby_question_second_answer = Answer.create!(
  content: 'Array .sort_by',
  kind: "correct",
  question_id: fourteenth_ruby_question.id
)

fourteenth_ruby_question_third_answer = Answer.create!(
  content: 'Array .sort',
  kind: "misleading",
  question_id: fourteenth_ruby_question.id
)

fourteenth_ruby_question_fourth_answer = Answer.create!(
  content: "I sorta don't know",
  kind: "weird",
  question_id: fourteenth_ruby_question.id
)

fifteenth_ruby_question_first_answer = Answer.create!(
  content: 'Array .each do |element|',
  kind: 'perfect',
  question_id: fifteenth_ruby_question.id
)

fifteenth_ruby_question_second_answer = Answer.create!(
  content: 'By using .each',
  kind: "correct",
  question_id: fifteenth_ruby_question.id
)

fifteenth_ruby_question_third_answer = Answer.create!(
  content: 'Array .map do |element|',
  kind: "misleading",
  question_id: fifteenth_ruby_question.id
)

fifteenth_ruby_question_fourth_answer = Answer.create!(
  content: "Array .sted .development",
  kind: "weird",
  question_id: fifteenth_ruby_question.id
)

sixteenth_ruby_question_first_answer = Answer.create!(
  content: 'Array .each_with_index do |element, index|',
  kind: 'perfect',
  question_id: sixteenth_ruby_question.id
)

sixteenth_ruby_question_second_answer = Answer.create!(
  content: 'By using .each_with_index',
  kind: "correct",
  question_id: sixteenth_ruby_question.id
)

sixteenth_ruby_question_third_answer = Answer.create!(
  content: 'Array.index',
  kind: "misleading",
  question_id: sixteenth_ruby_question.id
)

sixteenth_ruby_question_fourth_answer = Answer.create!(
  content: "Array .each_with_thumb",
  kind: "weird",
  question_id: sixteenth_ruby_question.id
)

seventeenth_ruby_question_first_answer = Answer.create!(
  content: 'Array .map do |element|',
  kind: 'perfect',
  question_id: seventeenth_ruby_question.id
)

seventeenth_ruby_question_second_answer = Answer.create!(
  content: 'By using .map',
  kind: "correct",
  question_id: seventeenth_ruby_question.id
)

seventeenth_ruby_question_third_answer = Answer.create!(
  content: 'Array .each do',
  kind: "misleading",
  question_id: seventeenth_ruby_question.id
)

seventeenth_ruby_question_fourth_answer = Answer.create!(
  content: "Array .roadmap",
  kind: "weird",
  question_id: seventeenth_ruby_question.id
)

eighteenth_ruby_question_first_answer = Answer.create!(
  content: 'Array .find { |element| condition }',
  kind: 'perfect',
  question_id: eighteenth_ruby_question.id
)

eighteenth_ruby_question_second_answer = Answer.create!(
  content: 'By using .find',
  kind: "correct",
  question_id: eighteenth_ruby_question.id
)

eighteenth_ruby_question_third_answer = Answer.create!(
  content: 'Array .search',
  kind: "misleading",
  question_id: eighteenth_ruby_question.id
)

eighteenth_ruby_question_fourth_answer = Answer.create!(
  content: "Array .google .search",
  kind: "weird",
  question_id: eighteenth_ruby_question.id
)

nineteenth_ruby_question_first_answer = Answer.create!(
  content: 'Array .select do { |element| condition }',
  kind: 'perfect',
  question_id: nineteenth_ruby_question.id
)

nineteenth_ruby_question_second_answer = Answer.create!(
  content: 'By using .select',
  kind: "correct",
  question_id: nineteenth_ruby_question.id
)

nineteenth_ruby_question_third_answer = Answer.create!(
  content: 'Array .chose',
  kind: "misleading",
  question_id: nineteenth_ruby_question.id
)

nineteenth_ruby_question_fourth_answer = Answer.create!(
  content: "Array .i_chose_you_pikachu",
  kind: "weird",
  question_id: nineteenth_ruby_question.id
)

tentieth_ruby_question_first_answer = Answer.create!(
  content: 'Array .delete (element)',
  kind: 'perfect',
  question_id: twentieth_ruby_question.id
)

twentieth_ruby_question_second_answer = Answer.create!(
  content: 'Array .delete_at (index)',
  kind: "correct",
  question_id: twentieth_ruby_question.id
)

twentieth_ruby_question_third_answer = Answer.create!(
  content: 'Array .reject (element)',
  kind: "misleading",
  question_id: twentieth_ruby_question.id
)

twentieth_ruby_question_fourth_answer = Answer.create!(
  content: "Array .exterminaaate",
  kind: "weird",
  question_id: twentieth_ruby_question.id
)

twenty_first_ruby_question_first_answer = Answer.create!(
  content: 'If condition_1 && condition_2',
  kind: 'perfect',
  question_id: twenty_first_ruby_question.id
)

twenty_first_ruby_question_second_answer = Answer.create!(
  content: 'With &&',
  kind: "correct",
  question_id: twenty_first_ruby_question.id
)

twenty_first_ruby_question_third_answer = Answer.create!(
  content: 'With ||',
  kind: "misleading",
  question_id: twenty_first_ruby_question.id
)

twenty_first_ruby_question_fourth_answer = Answer.create!(
  content: "...and what ?",
  kind: "weird",
  question_id: twenty_first_ruby_question.id
)

twenty_second_ruby_question_first_answer = Answer.create!(
  content: 'Array .index (element)',
  kind: 'perfect',
  question_id: twenty_second_ruby_question.id
)

twenty_second_ruby_question_second_answer = Answer.create!(
  content: 'With .index',
  kind: "correct",
  question_id: twenty_second_ruby_question.id
)

twenty_second_ruby_question_third_answer = Answer.create!(
  content: 'Array.id',
  kind: "misleading",
  question_id: twenty_second_ruby_question.id
)

twenty_second_ruby_question_fourth_answer = Answer.create!(
  content: "*You point your index at the array*",
  kind: "weird",
  question_id: twenty_second_ruby_question.id
)

twenty_third_ruby_question_first_answer = Answer.create!(
  content: 'Array .include? (element)',
  kind: 'perfect',
  question_id: twenty_third_ruby_question.id
)

twenty_third_ruby_question_second_answer = Answer.create!(
  content: 'With .include?',
  kind: "correct",
  question_id: twenty_third_ruby_question.id
)

twenty_third_ruby_question_third_answer = Answer.create!(
  content: 'Array .includes',
  kind: "misleading",
  question_id: twenty_third_ruby_question.id
)

twenty_third_ruby_question_fourth_answer = Answer.create!(
  content: "Array .all_inclusive",
  kind: "weird",
  question_id: twenty_third_ruby_question.id
)

twenty_fourth_ruby_question_first_answer = Answer.create!(
  content: 'Array << element',
  kind: 'perfect',
  question_id: twenty_fourth_ruby_question.id
)

twenty_fourth_ruby_question_second_answer = Answer.create!(
  content: 'Array .push (element)',
  kind: "correct",
  question_id: twenty_fourth_ruby_question.id
)

twenty_fourth_ruby_question_third_answer = Answer.create!(
  content: 'Array .add (element)',
  kind: "misleading",
  question_id: twenty_fourth_ruby_question.id
)

twenty_fourth_ruby_question_fourth_answer = Answer.create!(
  content: "Array .push_ups",
  kind: "weird",
  question_id: twenty_fourth_ruby_question.id
)

twenty_fifth_ruby_question_first_answer = Answer.create!(
  content: 'Until condition end',
  kind: 'perfect',
  question_id: twenty_fifth_ruby_question.id
)

twenty_fifth_ruby_question_second_answer = Answer.create!(
  content: 'Until',
  kind: "correct",
  question_id: twenty_fifth_ruby_question.id
)

twenty_fifth_ruby_question_third_answer = Answer.create!(
  content: 'until then',
  kind: "misleading",
  question_id: twenty_fifth_ruby_question.id
)

twenty_fifth_ruby_question_fourth_answer = Answer.create!(
  content: "Meanwhile... in Vera Cruz",
  kind: "weird",
  question_id: twenty_fifth_ruby_question.id
)

twenty_sixth_ruby_question_first_answer = Answer.create!(
  content: 'If condition_1 || condition_2',
  kind: 'perfect',
  question_id: twenty_sixth_ruby_question.id
)

twenty_sixth_ruby_question_second_answer = Answer.create!(
  content: 'With ||',
  kind: "correct",
  question_id: twenty_sixth_ruby_question.id
)

twenty_sixth_ruby_question_third_answer = Answer.create!(
  content: 'With &&',
  kind: "misleading",
  question_id: twenty_sixth_ruby_question.id
)

twenty_sixth_ruby_question_fourth_answer = Answer.create!(
  content: "Should I stay OR should I go ?",
  kind: "weird",
  question_id: twenty_sixth_ruby_question.id
)

twenty_seventh_ruby_question_first_answer = Answer.create!(
  content: 'With %',
  kind: 'perfect',
  question_id: twenty_seventh_ruby_question.id
)

twenty_seventh_ruby_question_second_answer = Answer.create!(
  content: 'With the modulo operator',
  kind: "correct",
  question_id: twenty_seventh_ruby_question.id
)

twenty_seventh_ruby_question_third_answer = Answer.create!(
  content: 'With /',
  kind: "misleading",
  question_id: twenty_seventh_ruby_question.id
)

twenty_seventh_ruby_question_fourth_answer = Answer.create!(
  content: "Maths... what a concept !",
  kind: "weird",
  question_id: twenty_seventh_ruby_question.id
)

twenty_eighth_ruby_question_first_answer = Answer.create!(
  content: 'Array.sort',
  kind: 'perfect',
  question_id: twenty_eighth_ruby_question.id
)

twenty_eighth_ruby_question_second_answer = Answer.create!(
  content: 'Array .sort_by',
  kind: "correct",
  question_id: twenty_eighth_ruby_question.id
)

twenty_eighth_ruby_question_third_answer = Answer.create!(
  content: 'Array .organize',
  kind: "misleading",
  question_id: twenty_eighth_ruby_question.id
)

twenty_eighth_ruby_question_fourth_answer = Answer.create!(
  content: "I can't even sort out my life...",
  kind: "weird",
  question_id: twenty_eighth_ruby_question.id
)

twenty_ninth_ruby_question_first_answer = Answer.create!(
  content: 'Array.size',
  kind: 'perfect',
  question_id: twenty_ninth_ruby_question.id
)

twenty_ninth_ruby_question_second_answer = Answer.create!(
  content: 'Array .length',
  kind: "correct",
  question_id: twenty_ninth_ruby_question.id
)

twenty_ninth_ruby_question_third_answer = Answer.create!(
  content: 'Array .counting',
  kind: "misleading",
  question_id: twenty_ninth_ruby_question.id
)

twenty_ninth_ruby_question_fourth_answer = Answer.create!(
  content: "Size doesn't matter",
  kind: "weird",
  question_id: twenty_ninth_ruby_question.id
)

thirtieth_ruby_question_first_answer = Answer.create!(
  content: '[1,2,3,4,5 ,6,7,8,9,10]',
  kind: 'perfect',
  question_id: thirtieth_ruby_question.id
)

thirtieth_ruby_question_second_answer = Answer.create!(
  content: 'An array of integers',
  kind: "correct",
  question_id: thirtieth_ruby_question.id
)

thirtieth_ruby_question_third_answer = Answer.create!(
  content: '{1,2,3,4,5 ,6,7,8,9,10}',
  kind: "misleading",
  question_id: thirtieth_ruby_question.id
)

thirtieth_ruby_question_fourth_answer = Answer.create!(
  content: "[I, don't, know]",
  kind: "weird",
  question_id: thirtieth_ruby_question.id
)

puts 'Ruby answers created.'

puts 'Creating empty OOP answers...'

first_oop_question_first_answer = Answer.create!(
  content: 'OOP 1 perfect.',
  kind: 'perfect',
  question_id: first_oop_question.id
)

first_oop_question_second_answer = Answer.create!(
  content: 'OOP 1 correct.',
  kind: "correct",
  question_id: first_oop_question.id
)

first_oop_question_third_answer = Answer.create!(
  content: 'OOP 1 misleading.',
  kind: "misleading",
  question_id: first_oop_question.id
)

first_oop_question_fourth_answer = Answer.create!(
  content: 'OOP 1 weird.',
  kind: "weird",
  question_id: first_oop_question.id
)

second_oop_question_first_answer = Answer.create!(
  content: 'OOP 2 perfect.',
  kind: 'perfect',
  question_id: second_oop_question.id
)

second_oop_question_second_answer = Answer.create!(
  content: 'OOP 2 correct.',
  kind: "correct",
  question_id: second_oop_question.id
)

second_oop_question_third_answer = Answer.create!(
  content: 'OOP 2 misleading.',
  kind: "misleading",
  question_id: second_oop_question.id
)

second_oop_question_fourth_answer = Answer.create!(
  content: 'OOP 2 weird.',
  kind: "weird",
  question_id: second_oop_question.id
)

third_oop_question_first_answer = Answer.create!(
  content: 'OOP 3 perfect.',
  kind: 'perfect',
  question_id: third_oop_question.id
)

third_oop_question_second_answer = Answer.create!(
  content: 'OOP 3 correct.',
  kind: "correct",
  question_id: third_oop_question.id
)

third_oop_question_third_answer = Answer.create!(
  content: 'OOP 3 misleading.',
  kind: "misleading",
  question_id: third_oop_question.id
)

third_oop_question_fourth_answer = Answer.create!(
  content: 'OOP 3 weird.',
  kind: "weird",
  question_id: third_oop_question.id
)

fourth_oop_question_first_answer = Answer.create!(
  content: 'OOP 4 perfect.',
  kind: 'perfect',
  question_id: fourth_oop_question.id
)

fourth_oop_question_second_answer = Answer.create!(
  content: 'OOP 4 correct.',
  kind: "correct",
  question_id: fourth_oop_question.id
)

fourth_oop_question_third_answer = Answer.create!(
  content: 'OOP 4 misleading.',
  kind: "misleading",
  question_id: fourth_oop_question.id
)

fourth_oop_question_fourth_answer = Answer.create!(
  content: 'OOP 4 weird.',
  kind: "weird",
  question_id: fourth_oop_question.id
)

fifth_oop_question_first_answer = Answer.create!(
  content: 'OOP 5 perfect.',
  kind: 'perfect',
  question_id: fifth_oop_question.id
)

fifth_oop_question_second_answer = Answer.create!(
  content: 'OOP 5 correct.',
  kind: "correct",
  question_id: fifth_oop_question.id
)

fifth_oop_question_third_answer = Answer.create!(
  content: 'OOP 5 misleading.',
  kind: "misleading",
  question_id: fifth_oop_question.id
)

fifth_oop_question_fourth_answer = Answer.create!(
  content: 'OOP 5 weird.',
  kind: "weird",
  question_id: fifth_oop_question.id
)

sixth_oop_question_first_answer = Answer.create!(
  content: 'OOP 6 perfect.',
  kind: 'perfect',
  question_id: sixth_oop_question.id
)

sixth_oop_question_second_answer = Answer.create!(
  content: 'OOP 6 correct.',
  kind: "correct",
  question_id: sixth_oop_question.id
)

sixth_oop_question_third_answer = Answer.create!(
  content: 'OOP 6 misleading.',
  kind: "misleading",
  question_id: sixth_oop_question.id
)

sixth_oop_question_fourth_answer = Answer.create!(
  content: 'OOP 6 weird.',
  kind: "weird",
  question_id: sixth_oop_question.id
)

seventh_oop_question_first_answer = Answer.create!(
  content: 'OOP 7 perfect.',
  kind: 'perfect',
  question_id: seventh_oop_question.id
)

seventh_oop_question_second_answer = Answer.create!(
  content: 'OOP 7 correct.',
  kind: "correct",
  question_id: seventh_oop_question.id
)

seventh_oop_question_third_answer = Answer.create!(
  content: 'OOP 7 misleading.',
  kind: "misleading",
  question_id: seventh_oop_question.id
)

seventh_oop_question_fourth_answer = Answer.create!(
  content: 'OOP 7 weird.',
  kind: "weird",
  question_id: seventh_oop_question.id
)

eighth_oop_question_first_answer = Answer.create!(
  content: 'OOP 8 perfect.',
  kind: 'perfect',
  question_id: eighth_oop_question.id
)

eighth_oop_question_second_answer = Answer.create!(
  content: 'OOP 8 correct.',
  kind: "correct",
  question_id: eighth_oop_question.id
)

eighth_oop_question_third_answer = Answer.create!(
  content: 'OOP 8 misleading.',
  kind: "misleading",
  question_id: eighth_oop_question.id
)

eighth_oop_question_fourth_answer = Answer.create!(
  content: 'OOP 8 weird.',
  kind: "weird",
  question_id: eighth_oop_question.id
)

puts 'Empty OOP answers created.'

puts 'Creating empty DB answers...'

first_db_question_first_answer = Answer.create!(
  content: 'DB 1 perfect.',
  kind: 'perfect',
  question_id: first_db_question.id
)

first_db_question_second_answer = Answer.create!(
  content: 'DB 1 correct.',
  kind: "correct",
  question_id: first_db_question.id
)

first_db_question_third_answer = Answer.create!(
  content: 'DB 1 misleading.',
  kind: "misleading",
  question_id: first_db_question.id
)

first_db_question_fourth_answer = Answer.create!(
  content: 'DB 1 weird.',
  kind: "weird",
  question_id: first_db_question.id
)

second_db_question_first_answer = Answer.create!(
  content: 'DB 2 perfect.',
  kind: 'perfect',
  question_id: second_db_question.id
)

second_db_question_second_answer = Answer.create!(
  content: 'DB 2 correct.',
  kind: "correct",
  question_id: second_db_question.id
)

second_db_question_third_answer = Answer.create!(
  content: 'DB 2 misleading.',
  kind: "misleading",
  question_id: second_db_question.id
)

second_db_question_fourth_answer = Answer.create!(
  content: 'DB 2 weird.',
  kind: "weird",
  question_id: second_db_question.id
)

third_db_question_first_answer = Answer.create!(
  content: 'DB 3 perfect.',
  kind: 'perfect',
  question_id: third_db_question.id
)

third_db_question_second_answer = Answer.create!(
  content: 'DB 3 correct.',
  kind: "correct",
  question_id: third_db_question.id
)

third_db_question_third_answer = Answer.create!(
  content: 'DB 3 misleading.',
  kind: "misleading",
  question_id: third_db_question.id
)

third_db_question_fourth_answer = Answer.create!(
  content: 'DB 3 weird.',
  kind: "weird",
  question_id: third_db_question.id
)

fourth_db_question_first_answer = Answer.create!(
  content: 'DB 4 perfect.',
  kind: 'perfect',
  question_id: fourth_db_question.id
)

fourth_db_question_second_answer = Answer.create!(
  content: 'DB 4 correct.',
  kind: "correct",
  question_id: fourth_db_question.id
)

fourth_db_question_third_answer = Answer.create!(
  content: 'DB 4 misleading.',
  kind: "misleading",
  question_id: fourth_db_question.id
)

fourth_db_question_fourth_answer = Answer.create!(
  content: 'DB 4 weird.',
  kind: "weird",
  question_id: fourth_db_question.id
)

fifth_db_question_first_answer = Answer.create!(
  content: 'DB 5 perfect.',
  kind: 'perfect',
  question_id: fifth_db_question.id
)

fifth_db_question_second_answer = Answer.create!(
  content: 'DB 5 correct.',
  kind: "correct",
  question_id: fifth_db_question.id
)

fifth_db_question_third_answer = Answer.create!(
  content: 'DB 5 misleading.',
  kind: "misleading",
  question_id: fifth_db_question.id
)

fifth_db_question_fourth_answer = Answer.create!(
  content: 'DB 5 weird.',
  kind: "weird",
  question_id: fifth_db_question.id
)

sixth_db_question_first_answer = Answer.create!(
  content: 'DB 6 perfect.',
  kind: 'perfect',
  question_id: sixth_db_question.id
)

sixth_db_question_second_answer = Answer.create!(
  content: 'DB 6 correct.',
  kind: "correct",
  question_id: sixth_db_question.id
)

sixth_db_question_third_answer = Answer.create!(
  content: 'DB 6 misleading.',
  kind: "misleading",
  question_id: sixth_db_question.id
)

sixth_db_question_fourth_answer = Answer.create!(
  content: 'DB 6 weird.',
  kind: "weird",
  question_id: sixth_db_question.id
)

seventh_db_question_first_answer = Answer.create!(
  content: 'DB 7 perfect.',
  kind: 'perfect',
  question_id: seventh_db_question.id
)

seventh_db_question_second_answer = Answer.create!(
  content: 'DB 7 correct.',
  kind: "correct",
  question_id: seventh_db_question.id
)

seventh_db_question_third_answer = Answer.create!(
  content: 'DB 7 misleading.',
  kind: "misleading",
  question_id: seventh_db_question.id
)

seventh_db_question_fourth_answer = Answer.create!(
  content: 'DB 7 weird.',
  kind: "weird",
  question_id: seventh_db_question.id
)

eighth_db_question_first_answer = Answer.create!(
  content: 'DB 8 perfect.',
  kind: 'perfect',
  question_id: eighth_db_question.id
)

eighth_db_question_second_answer = Answer.create!(
  content: 'DB 8 correct.',
  kind: "correct",
  question_id: eighth_db_question.id
)

eighth_db_question_third_answer = Answer.create!(
  content: 'DB 8 misleading.',
  kind: "misleading",
  question_id: eighth_db_question.id
)

eighth_db_question_fourth_answer = Answer.create!(
  content: 'DB 8 weird.',
  kind: "weird",
  question_id: eighth_db_question.id
)

puts 'Empty DB answers created.'

puts 'Creating empty Front answers...'

first_front_question_first_answer = Answer.create!(
  content: 'Front 1 perfect.',
  kind: 'perfect',
  question_id: first_front_question.id
)

first_front_question_second_answer = Answer.create!(
  content: 'Front 1 correct.',
  kind: "correct",
  question_id: first_front_question.id
)

first_front_question_third_answer = Answer.create!(
  content: 'Front 1 misleading.',
  kind: "misleading",
  question_id: first_front_question.id
)

first_front_question_fourth_answer = Answer.create!(
  content: 'Front 1 weird.',
  kind: "weird",
  question_id: first_front_question.id
)

second_front_question_first_answer = Answer.create!(
  content: 'Front 2 perfect.',
  kind: 'perfect',
  question_id: second_front_question.id
)

second_front_question_second_answer = Answer.create!(
  content: 'Front 2 correct.',
  kind: "correct",
  question_id: second_front_question.id
)

second_front_question_third_answer = Answer.create!(
  content: 'Front 2 misleading.',
  kind: "misleading",
  question_id: second_front_question.id
)

second_front_question_fourth_answer = Answer.create!(
  content: 'Front 2 weird.',
  kind: "weird",
  question_id: second_front_question.id
)

third_front_question_first_answer = Answer.create!(
  content: 'Front 3 perfect.',
  kind: 'perfect',
  question_id: third_front_question.id
)

third_front_question_second_answer = Answer.create!(
  content: 'Front 3 correct.',
  kind: "correct",
  question_id: third_front_question.id
)

third_front_question_third_answer = Answer.create!(
  content: 'Front 3 misleading.',
  kind: "misleading",
  question_id: third_front_question.id
)

third_front_question_fourth_answer = Answer.create!(
  content: 'Front 3 weird.',
  kind: "weird",
  question_id: third_front_question.id
)

fourth_front_question_first_answer = Answer.create!(
  content: 'Front 4 perfect.',
  kind: 'perfect',
  question_id: fourth_front_question.id
)

fourth_front_question_second_answer = Answer.create!(
  content: 'Front 4 correct.',
  kind: "correct",
  question_id: fourth_front_question.id
)

fourth_front_question_third_answer = Answer.create!(
  content: 'Front 4 misleading.',
  kind: "misleading",
  question_id: fourth_front_question.id
)

fourth_front_question_fourth_answer = Answer.create!(
  content: 'Front 4 weird.',
  kind: "weird",
  question_id: fourth_front_question.id
)

fifth_front_question_first_answer = Answer.create!(
  content: 'Front 5 perfect.',
  kind: 'perfect',
  question_id: fifth_front_question.id
)

fifth_front_question_second_answer = Answer.create!(
  content: 'Front 5 correct.',
  kind: "correct",
  question_id: fifth_front_question.id
)

fifth_front_question_third_answer = Answer.create!(
  content: 'Front 5 misleading.',
  kind: "misleading",
  question_id: fifth_front_question.id
)

fifth_front_question_fourth_answer = Answer.create!(
  content: 'Front 5 weird.',
  kind: "weird",
  question_id: fifth_front_question.id
)

sixth_front_question_first_answer = Answer.create!(
  content: 'Front 6 perfect.',
  kind: 'perfect',
  question_id: sixth_front_question.id
)

sixth_front_question_second_answer = Answer.create!(
  content: 'Front 6 correct.',
  kind: "correct",
  question_id: sixth_front_question.id
)

sixth_front_question_third_answer = Answer.create!(
  content: 'Front 6 misleading.',
  kind: "misleading",
  question_id: sixth_front_question.id
)

sixth_front_question_fourth_answer = Answer.create!(
  content: 'Front 6 weird.',
  kind: "weird",
  question_id: sixth_front_question.id
)

seventh_front_question_first_answer = Answer.create!(
  content: 'Front 7 perfect.',
  kind: 'perfect',
  question_id: seventh_front_question.id
)

seventh_front_question_second_answer = Answer.create!(
  content: 'Front 7 correct.',
  kind: "correct",
  question_id: seventh_front_question.id
)

seventh_front_question_third_answer = Answer.create!(
  content: 'Front 7 misleading.',
  kind: "misleading",
  question_id: seventh_front_question.id
)

seventh_front_question_fourth_answer = Answer.create!(
  content: 'Front 7 weird.',
  kind: "weird",
  question_id: seventh_front_question.id
)

eighth_front_question_first_answer = Answer.create!(
  content: 'Front 8 perfect.',
  kind: 'perfect',
  question_id: eighth_front_question.id
)

eighth_front_question_second_answer = Answer.create!(
  content: 'Front 8 correct.',
  kind: "correct",
  question_id: eighth_front_question.id
)

eighth_front_question_third_answer = Answer.create!(
  content: 'Front 8 misleading.',
  kind: "misleading",
  question_id: eighth_front_question.id
)

eighth_front_question_fourth_answer = Answer.create!(
  content: 'Front 8 weird.',
  kind: "weird",
  question_id: eighth_front_question.id
)

puts 'Empty Front answers created.'

puts 'Creating Slackbot answers...'

first_slackbot_question_first_answer = Answer.create!(
  content: 'mkdir <folder_name>',
  kind: 'perfect',
  question_id: first_slackbot_question.id
)

first_slackbot_question_second_answer = Answer.create!(
  content: 'mkdir',
  kind: "correct",
  question_id: first_slackbot_question.id
)

first_slackbot_question_third_answer = Answer.create!(
  content: 'touch <folder_name>',
  kind: "misleading",
  question_id: first_slackbot_question.id
)

first_slackbot_question_fourth_answer = Answer.create!(
  content: '*You pick a cardboard and actually fold it*',
  kind: "weird",
  question_id: first_slackbot_question.id
)

second_slackbot_question_first_answer = Answer.create!(
  content: 'git push <remote> <branch>',
  kind: "perfect",
  question_id: second_slackbot_question.id
)

second_slackbot_question_second_answer = Answer.create!(
  content: 'git push origin master',
  kind: "correct",
  question_id: second_slackbot_question.id
)

second_slackbot_question_third_answer = Answer.create!(
  content: 'git commit',
  kind: "misleading",
  question_id: second_slackbot_question.id
)

second_slackbot_question_fourth_answer = Answer.create!(
  content: 'git putsch',
  kind: "weird",
  question_id: second_slackbot_question.id
)

third_slackbot_question_first_answer = Answer.create!(
  content: 'cd <folder_name>',
  kind: "perfect",
  question_id: third_slackbot_question.id
)

third_slackbot_question_second_answer = Answer.create!(
  content: 'cd',
  kind: "correct",
  question_id: third_slackbot_question.id
)

third_slackbot_question_third_answer = Answer.create!(
  content: 'pwd',
  kind: "misleading",
  question_id: third_slackbot_question.id
)

third_slackbot_question_fourth_answer = Answer.create!(
  content: 'laserdisc <folder_name>',
  kind: "weird",
  question_id: third_slackbot_question.id
)

fourth_slackbot_question_first_answer = Answer.create!(
  content: 'touch <file_name>',
  kind: "perfect",
  question_id: fourth_slackbot_question.id
)

fourth_slackbot_question_second_answer = Answer.create!(
  content: 'touch',
  kind: "correct",
  question_id: fourth_slackbot_question.id
)

fourth_slackbot_question_third_answer = Answer.create!(
  content: 'create <file_name>',
  kind: "misleading",
  question_id: fourth_slackbot_question.id
)

fourth_slackbot_question_fourth_answer = Answer.create!(
  content: 'Cause everytime we touch I get this feeling 🎵',
  kind: "weird",
  question_id: fourth_slackbot_question.id
)

fifth_slackbot_question_first_answer = Answer.create!(
  content: 'git status',
  kind: "perfect",
  question_id: fifth_slackbot_question.id
)

fifth_slackbot_question_second_answer = Answer.create!(
  content: 'gst',
  kind: "correct",
  question_id: fifth_slackbot_question.id
)

fifth_slackbot_question_third_answer = Answer.create!(
  content: 'git log',
  kind: "misleading",
  question_id: fifth_slackbot_question.id
)

fifth_slackbot_question_fourth_answer = Answer.create!(
  content: 'I am not looking for commitment right now...',
  kind: "weird",
  question_id: fifth_slackbot_question.id
)

puts 'Slackbot answers created.'

puts 'Creating Jérémy answers...'

first_jeremy_question_first_answer = Answer.create!(
  content: '8:45 AM',
  kind: "perfect",
  question_id: first_jeremy_question.id
)

first_jeremy_question_second_answer = Answer.create!(
  content: '9:00 AM',
  kind: "correct",
  question_id: first_jeremy_question.id
)

first_jeremy_question_third_answer = Answer.create!(
  content: '10:30 AM',
  kind: "misleading",
  question_id: first_jeremy_question.id
)

first_jeremy_question_fourth_answer = Answer.create!(
  content: 'What year is this ?!!',
  kind: "weird",
  question_id: first_jeremy_question.id
)

second_jeremy_question_first_answer = Answer.create!(
  content: 'Only during events after working hours',
  kind: "perfect",
  question_id: second_jeremy_question.id
)

second_jeremy_question_second_answer = Answer.create!(
  content: 'Only after 6:00 PM',
  kind: "correct",
  question_id: second_jeremy_question.id
)

second_jeremy_question_third_answer = Answer.create!(
  content: 'During lunch break',
  kind: "misleading",
  question_id: second_jeremy_question.id
)

second_jeremy_question_fourth_answer = Answer.create!(
  content: 'Well I usually mix my cereals with a white russian so...',
  kind: "weird",
  question_id: second_jeremy_question.id
)

third_jeremy_question_first_answer = Answer.create!(
  content: 'In the dishwasher',
  kind: "perfect",
  question_id: third_jeremy_question.id
)

third_jeremy_question_second_answer = Answer.create!(
  content: 'In the sink',
  kind: "correct",
  question_id: third_jeremy_question.id
)

third_jeremy_question_third_answer = Answer.create!(
  content: 'I can leave it at my seat',
  kind: "misleading",
  question_id: third_jeremy_question.id
)

third_jeremy_question_fourth_answer = Answer.create!(
  content: 'I drink tea so the rules does not apply to me !',
  kind: "weird",
  question_id: third_jeremy_question.id
)

fourth_jeremy_question_first_answer = Answer.create!(
  content: 'One (family) bottle',
  kind: "perfect",
  question_id: fourth_jeremy_question.id
)

fourth_jeremy_question_second_answer = Answer.create!(
  content: 'How should I know ?!!',
  kind: "correct",
  question_id: fourth_jeremy_question.id
)

fourth_jeremy_question_third_answer = Answer.create!(
  content: 'Ten billion bottles !!!',
  kind: "misleading",
  question_id: fourth_jeremy_question.id
)

fourth_jeremy_question_fourth_answer = Answer.create!(
  content: 'This is actually a wig !',
  kind: "weird",
  question_id: fourth_jeremy_question.id
)

puts 'Jérémy answers created.'

puts 'Creating Sébastien answers...'

first_sebastien_question_answer = Answer.create!(
  content: 'rails new',
  kind: "perfect",
  question_id: first_sebastien_question.id
)

first_sebastien_question_non_answer = Answer.create!(
  content: '',
  kind: "weird",
  question_id: first_sebastien_question.id
)

second_sebastien_question_answer = Answer.create!(
  content: 'rails console',
  kind: "perfect",
  question_id: second_sebastien_question.id
)

second_sebastien_question_non_answer = Answer.create!(
  content: '',
  kind: "weird",
  question_id: second_sebastien_question.id
)

third_sebastien_question_answer = Answer.create!(
  content: 'rails server',
  kind: "perfect",
  question_id: third_sebastien_question.id
)

third_sebastien_question_non_answer = Answer.create!(
  content: '',
  kind: "weird",
  question_id: third_sebastien_question.id
)

fourth_sebastien_question_answer = Answer.create!(
  content: 'yarn build --watch',
  kind: "perfect",
  question_id: fourth_sebastien_question.id
)

fourth_sebastien_question_non_answer = Answer.create!(
  content: '',
  kind: "weird",
  question_id: fourth_sebastien_question.id
)

fifth_sebastien_question_answer = Answer.create!(
  content: 'rails generate model',
  kind: "perfect",
  question_id: fifth_sebastien_question.id
)

fifth_sebastien_question_non_answer = Answer.create!(
  content: '',
  kind: "weird",
  question_id: fifth_sebastien_question.id
)

sixth_sebastien_question_answer = Answer.create!(
  content: 'rails generate controller',
  kind: "perfect",
  question_id: sixth_sebastien_question.id
)

sixth_sebastien_question_non_answer = Answer.create!(
  content: '',
  kind: "weird",
  question_id: sixth_sebastien_question.id
)

seventh_sebastien_question_answer = Answer.create!(
  content: 'rails generate migration',
  kind: "perfect",
  question_id: seventh_sebastien_question.id
)

seventh_sebastien_question_non_answer = Answer.create!(
  content: '',
  kind: "weird",
  question_id: seventh_sebastien_question.id
)

eighth_sebastien_question_answer = Answer.create!(
  content: 'rails routes',
  kind: "perfect",
  question_id: eighth_sebastien_question.id
)

eighth_sebastien_question_non_answer = Answer.create!(
  content: '',
  kind: "weird",
  question_id: eighth_sebastien_question.id
)

ninth_sebastien_question_answer = Answer.create!(
  content: 'rails db:migrate',
  kind: "perfect",
  question_id: ninth_sebastien_question.id
)

ninth_sebastien_question_non_answer = Answer.create!(
  content: '',
  kind: "weird",
  question_id: ninth_sebastien_question.id
)

tenth_sebastien_question_answer = Answer.create!(
  content: 'rails db:seed',
  kind: "perfect",
  question_id: tenth_sebastien_question.id
)

tenth_sebastien_question_non_answer = Answer.create!(
  content: '',
  kind: "weird",
  question_id: tenth_sebastien_question.id
)

puts 'Sébastien answers created.'

puts 'Creating teachers...'

slackbot = Teacher.create!(
  name: 'Slackbot',
  feedback_answer_perfect: 'Wonderful human, you are so good you might be a bot !',
  feedback_answer_correct: 'Nice human, but you could be even more specific !',
  feedback_answer_misleading: 'Human...Have you been napping in class ?',
  feedback_answer_weird: 'Are you trying to mess with my circuits, human ?',
  feedback_intro: 'I am ordering you to do your flashcards now Student !!!',
  feedback_user_won: 'I am so proud of you Student... I can see you have faith in the heart of the flashcards...',
  feedback_user_lost: '',
  position_x: 2,
  position_y: 3,
  lesson_id: first_lesson.id,
  status: "tutorial",
  open_dialog1: "Hello student. I see that you did not do your flashcards tonight...",
  open_dialog2: "Wait are you real Slackbot ?!!",
  open_dialog3: "Yes... And your lack of seriousness pains me... It's time to fight !"
)

file = File.open(Rails.root.join("app/assets/images/slackbotstatic.png"))
slackbot.avatar_map.attach(io: file, filename: "teacher.png", content_type: "image/png")
file = File.open(Rails.root.join("app/assets/images/slackbotstatic.png"))
slackbot.avatar_battle.attach(io: file, filename: "teacher.png", content_type: "image/png")
slackbot.save!

jeremy = Teacher.create!(
  name: 'Jérémy',
  feedback_answer_perfect: 'Dude, that answer is HAIRxtraordinary !',
  feedback_answer_correct: 'Pretty cool answer Dude !',
  feedback_answer_misleading: 'Come on Dude, you can do better than that !',
  feedback_answer_weird: 'Dude, are you making fun of me ? That is a tHAIRrible answer !',
  feedback_intro: "Fun is important but so are rules Dude ! Never forget that !",
  feedback_user_won: 'Damn Dude, you are pretty good for a newbie !',
  feedback_user_lost: 'Dude, that is not a very chill attitude, go have an ice cream and try again !',
  position_x: 14,
  position_y: 23,
  lesson_id: second_lesson.id,
  status: "regular",
  open_dialog1: "Hey dude ! Welcome to Le Wagon academy !",
  open_dialog2: "Hello to you too, you really have nice hair man !",
  open_dialog3: "Thanks but flattery won't let you escape the rules around here !"
)

file = File.open(Rails.root.join("app/assets/images/jeremystatic.png"))
jeremy.avatar_map.attach(io: file, filename: "teacher.png", content_type: "image/png")
file = File.open(Rails.root.join("app/assets/images/jeremystatic.png"))
jeremy.avatar_battle.attach(io: file, filename: "teacher.png", content_type: "image/png")
jeremy.save!

seb = Teacher.create!(
  name: 'Sébastien',
  feedback_answer_perfect: '...',
  feedback_answer_correct: '...',
  feedback_answer_misleading: '...',
  feedback_answer_weird: '...',
  feedback_intro: "...",
  feedback_user_won: '...',
  feedback_user_lost: '...',
  position_x: 2,
  position_y: 34,
  lesson_id: secret_lesson.id,
  status: "secret_boss",
  open_dialog1: "...",
  open_dialog2: "...",
  open_dialog3: "..."
)

file = File.open(Rails.root.join("app/assets/images/seb_tall.png"))
seb.avatar_map.attach(io: file, filename: "teacher.png", content_type: "image/png")
file = File.open(Rails.root.join("app/assets/images/seb_square.png"))
seb.avatar_battle.attach(io: file, filename: "teacher.png", content_type: "image/png")
seb.save!

tim = Teacher.create!(
  name: 'Timothée',
  feedback_answer_perfect: 'It is very goodeee',
  feedback_answer_correct: 'Quite goodeee',
  feedback_answer_misleading: 'Not very goode',
  feedback_answer_weird: 'You are the opposite of goode',
  feedback_intro: "You need to be goode at the basics of Ruby",
  feedback_user_won: 'You have mastered the basics of Ruby, tout est goode !',
  feedback_user_lost: 'You need to brush up on your Ruby lectures to be goode at it.',
  position_x: 2,
  position_y: 20,
  lesson_id: third_lesson.id,
  status: "core_four",
  open_dialog1: 'Hello newbie, I am Timothée and I will teach you the basics of Ruby here ! Goode pour toi ?',
  open_dialog2: 'Hum yes...it is goode..? By the way, what is the secret of your perfect tan ?',
  open_dialog3: 'A bit of surfing and a lot of Ruby programming, let us battle now !'
)

file = File.open(Rails.root.join("app/assets/images/timstatic.png"))
tim.avatar_map.attach(io: file, filename: "teacher.png", content_type: "image/png")
file = File.open(Rails.root.join("app/assets/images/timstatic.png"))
tim.avatar_battle.attach(io: file, filename: "teacher.png", content_type: "image/png")
tim.save!

hugo = Teacher.create!(
  name: 'Hugo',
  feedback_answer_perfect: '...',
  feedback_answer_correct: '...',
  feedback_answer_misleading: '...',
  feedback_answer_weird: '...',
  feedback_intro: "...",
  feedback_user_won: '...',
  feedback_user_lost: '...',
  position_x: 10,
  position_y: 4,
  lesson_id: sixth_lesson.id,
  status: "core_four",
  open_dialog1: '...',
  open_dialog2: '...',
  open_dialog3: '...'
)

file = File.open(Rails.root.join("app/assets/images/hugostatic.png"))
hugo.avatar_map.attach(io: file, filename: "teacher.png", content_type: "image/png")
file = File.open(Rails.root.join("app/assets/images/hugostatic.png"))
hugo.avatar_battle.attach(io: file, filename: "teacher.png", content_type: "image/png")
hugo.save!

diane = Teacher.create!(
  name: 'Diane',
  feedback_answer_perfect: '...',
  feedback_answer_correct: '...',
  feedback_answer_misleading: '...',
  feedback_answer_weird: '...',
  feedback_intro: "...",
  feedback_user_won: '...',
  feedback_user_lost: '...',
  position_x: 28,
  position_y: 4,
  lesson_id: fourth_lesson.id,
  status: "core_four",
  open_dialog1: '...',
  open_dialog2: '...',
  open_dialog3: '...'
)

file = File.open(Rails.root.join("app/assets/images/dianestatic.png"))
diane.avatar_map.attach(io: file, filename: "teacher.png", content_type: "image/png")
file = File.open(Rails.root.join("app/assets/images/dianestatic.png"))
diane.avatar_battle.attach(io: file, filename: "teacher.png", content_type: "image/png")
diane.save!

paul = Teacher.create!(
  name: 'Paul',
  feedback_answer_perfect: '...',
  feedback_answer_correct: '...',
  feedback_answer_misleading: '...',
  feedback_answer_weird: '...',
  feedback_intro: "...",
  feedback_user_won: '...',
  feedback_user_lost: '...',
  position_x: 50,
  position_y: 9,
  lesson_id: fifth_lesson.id,
  status: "core_four",
  open_dialog1: '...',
  open_dialog2: '...',
  open_dialog3: '...'
)

file = File.open(Rails.root.join("app/assets/images/paulstatic.png"))
paul.avatar_map.attach(io: file, filename: "teacher.png", content_type: "image/png")
file = File.open(Rails.root.join("app/assets/images/paulstatic.png"))
paul.avatar_battle.attach(io: file, filename: "teacher.png", content_type: "image/png")
paul.save!

boris = Teacher.create!(
  name: 'Boris',
  feedback_answer_perfect: '...',
  feedback_answer_correct: '...',
  feedback_answer_misleading: '...',
  feedback_answer_weird: '...',
  feedback_intro: "...",
  feedback_user_won: '...',
  feedback_user_lost: '...',
  position_x: 45,
  position_y: 16,
  lesson_id: final_lesson.id,
  status: "final_boss",
  open_dialog1: '...',
  open_dialog2: '...',
  open_dialog3: '...'
)

file = File.open(Rails.root.join("app/assets/images/borisstatic.png"))
boris.avatar_map.attach(io: file, filename: "teacher.png", content_type: "image/png")
file = File.open(Rails.root.join("app/assets/images/borisstatic.png"))
boris.avatar_battle.attach(io: file, filename: "teacher.png", content_type: "image/png")
boris.save!

puts 'Teachers created.'

puts 'Seeds finished !'

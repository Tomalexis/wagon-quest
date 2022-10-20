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
  hp_teacher: 20
)

fifth_lesson = Lesson.create!(
  name: "DB",
  hp_user: 10,
  hp_teacher: 20
)

sixth_lesson = Lesson.create!(
  name: "Front",
  hp_user: 10,
  hp_teacher: 20
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

puts 'Creating OOP questions...'

first_oop_question = Question.create!(
  content: 'In a Controller, the instance methods are referred to as... ?',
  lesson_id: fourth_lesson.id
)

second_oop_question = Question.create!(
  content: 'What does MVC stand for ?',
  lesson_id: fourth_lesson.id
)

third_oop_question = Question.create!(
  content: 'What’s the role of the Model in MVC ?',
  lesson_id: fourth_lesson.id
)

fourth_oop_question = Question.create!(
  content: 'In a 1-model Task manager in Ruby, what’s the role of the router ?',
  lesson_id: fourth_lesson.id
)

fifth_oop_question = Question.create!(
  content: 'Name a famous Ruby framework based on the MVC architectural pattern ?',
  lesson_id: fourth_lesson.id
)

sixth_oop_question = Question.create!(
  content: 'What’s the role of the View in MVC ?',
  lesson_id: fourth_lesson.id
)

seventh_oop_question = Question.create!(
  content: 'What does the super keyword do ?',
  lesson_id: fourth_lesson.id
)

eighth_oop_question = Question.create!(
  content: 'What does overriding of a superclass method mean ?',
  lesson_id: fourth_lesson.id
)

ninth_oop_question = Question.create!(
  content: 'What does self refer to in an instance method’s body ?',
  lesson_id: fourth_lesson.id
)

tenth_oop_question = Question.create!(
  content: 'When / why should we use inheritance ?',
  lesson_id: fourth_lesson.id
)

eleventh_oop_question = Question.create!(
  content: 'What are the use cases of self ?',
  lesson_id: fourth_lesson.id
)

twelfth_oop_question = Question.create!(
  content: 'Do you know what getters are ?',
  lesson_id: fourth_lesson.id
)

thirteenth_oop_question = Question.create!(
  content: 'Do you know what setters are ?',
  lesson_id: fourth_lesson.id
)

fourteenth_oop_question = Question.create!(
  content: 'What’s the class constructor method name in Ruby ?',
  lesson_id: fourth_lesson.id
)

fifteenth_oop_question = Question.create!(
  content: 'How do you define default arguments in a class #initialize method ?',
  lesson_id: fourth_lesson.id
)

sixteenth_oop_question = Question.create!(
  content: 'What are the naming conventions for a Ruby class (filename and class itself) ?',
  lesson_id: fourth_lesson.id
)

seventeenth_oop_question = Question.create!(
  content: 'In the 1 + 4 instruction how would you characterize 1, + and 4 object oriented wise ?',
  lesson_id: fourth_lesson.id
)

eighteenth_oop_question = Question.create!(
  content: 'Do you know how to set both a getter and a setter in one line ?',
  lesson_id: fourth_lesson.id
)

nineteenth_oop_question = Question.create!(
  content: 'In the numbers << 3 instruction where numbers is an instance of Array, what is << ?',
  lesson_id: fourth_lesson.id
)

twentieth_oop_question = Question.create!(
  content: 'What does OOP stand for ?',
  lesson_id: fourth_lesson.id
)

puts 'OOP questions created.'

puts 'Creating DB questions...'

first_db_question = Question.create!(
  content: 'What does SQL mean ?',
  lesson_id: fifth_lesson.id
)

second_db_question = Question.create!(
  content: 'How would you describe a N:N (many-to-many) relation between 2 models Doctor and Patient ?',
  lesson_id: fifth_lesson.id
)

third_db_question = Question.create!(
  content: 'How is a database schema organized ?',
  lesson_id: fifth_lesson.id
)

fourth_db_question = Question.create!(
  content: 'What is a relational database ?',
  lesson_id: fifth_lesson.id
)

fifth_db_question = Question.create!(
  content: 'What is the SQL keyword to specify a filtering condition clause in a query ?',
  lesson_id: fifth_lesson.id
)

sixth_db_question = Question.create!(
  content: 'What is the SQL keyword to retrieve content from the DB ?',
  lesson_id: fifth_lesson.id
)

seventh_db_question = Question.create!(
  content: 'What programing language is used for querying databases ?',
  lesson_id: fifth_lesson.id
)

eighth_db_question = Question.create!(
  content: 'What is a join table ?',
  lesson_id: fifth_lesson.id
)

ninth_db_question = Question.create!(
  content: 'How would you describe a 1:N (one-to-many) relation between 2 models Inhabitant and City ?',
  lesson_id: fifth_lesson.id
)

tenth_db_question = Question.create!(
  content: 'What do you need to link two N:N related tables ?',
  lesson_id: fifth_lesson.id
)

eleventh_db_question = Question.create!(
  content: 'How do you Create (CRUD) in SQL ?',
  lesson_id: fifth_lesson.id
)

twelfth_db_question = Question.create!(
  content: 'What does CRUD stand for ?',
  lesson_id: fifth_lesson.id
)

thirteenth_db_question = Question.create!(
  content: 'How do you Update (CRUD) in SQL ?',
  lesson_id: fifth_lesson.id
)

fourteenth_db_question = Question.create!(
  content: 'How do you Delete (CRUD) in SQL ?',
  lesson_id: fifth_lesson.id
)

fifteenth_db_question = Question.create!(
  content: 'How do you Read (CRUD) in SQL ?',
  lesson_id: fifth_lesson.id
)

sixteenth_db_question = Question.create!(
  content: 'How do you run pending migrations ?',
  lesson_id: fifth_lesson.id
)

seventeenth_db_question = Question.create!(
  content: 'What rake task should you run in your terminal to get rid of your DB entirely ?',
  lesson_id: fifth_lesson.id
)

eighteenth_db_question = Question.create!(
  content: 'How do you retrieve the number of instances of a given Active Record model ?',
  lesson_id: fifth_lesson.id
)

nineteenth_db_question = Question.create!(
  content: 'What is the SQL query generated by Doctor.all ?',
  lesson_id: fifth_lesson.id
)

twentieth_db_question = Question.create!(
  content: 'How do you retrieve the last instance of an Active Record model ?',
  lesson_id: fifth_lesson.id
)

twenty_first_db_question = Question.create!(
  content: 'From what Active Record class should your models inherit ?',
  lesson_id: fifth_lesson.id
)

twenty_second_db_question = Question.create!(
  content: 'From what class should your migrations inherit ?',
  lesson_id: fifth_lesson.id
)

twenty_third_db_question = Question.create!(
  content: 'How do you retrieve all instances of a given Active Record model ?',
  lesson_id: fifth_lesson.id
)

twenty_fourth_db_question = Question.create!(
  content: "What is Active Record's naming convention ?",
  lesson_id: fifth_lesson.id
)

twenty_fifth_db_question = Question.create!(
  content: 'How do you retrieve a specific record of a given Active Record model ?',
  lesson_id: fifth_lesson.id
)

twenty_sixth_db_question = Question.create!(
  content: 'What rake task should you run in your terminal to create your DB ?',
  lesson_id: fifth_lesson.id
)

twenty_seventh_db_question = Question.create!(
  content: 'What are the most common validation types ?',
  lesson_id: fifth_lesson.id
)

twenty_eighth_db_question = Question.create!(
  content: 'What Active Record class method can you call when you want to delete all instances of a given model ?',
  lesson_id: fifth_lesson.id
)

twenty_ninth_db_question = Question.create!(
  content: "What method can you call on one of your models' instance to check its validity ?",
  lesson_id: fifth_lesson.id
)

thirtieth_db_question = Question.create!(
  content: 'What are the two SQL actions mapping Active Record method #save ?',
  lesson_id: fifth_lesson.id
)

thirty_first_db_question = Question.create!(
  content: 'What is the SQL query generated by Doctor.destroy_all ?',
  lesson_id: fifth_lesson.id
)

puts 'DB questions created.'

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

twentieth_ruby_question_first_answer = Answer.create!(
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

puts 'Creating OOP answers...'

first_oop_question_first_answer = Answer.create!(
  content: 'Actions',
  kind: 'perfect',
  question_id: first_oop_question.id
)

first_oop_question_second_answer = Answer.create!(
  content: 'App features',
  kind: "correct",
  question_id: first_oop_question.id
)

first_oop_question_third_answer = Answer.create!(
  content: 'User stories',
  kind: "misleading",
  question_id: first_oop_question.id
)

first_oop_question_fourth_answer = Answer.create!(
  content: 'Instance methods, duh !',
  kind: "weird",
  question_id: first_oop_question.id
)

second_oop_question_first_answer = Answer.create!(
  content: 'A design pattern named Model View Controller',
  kind: 'perfect',
  question_id: second_oop_question.id
)

second_oop_question_second_answer = Answer.create!(
  content: 'Model View Controller',
  kind: "correct",
  question_id: second_oop_question.id
)

second_oop_question_third_answer = Answer.create!(
  content: 'Module View Controls',
  kind: "misleading",
  question_id: second_oop_question.id
)

second_oop_question_fourth_answer = Answer.create!(
  content: 'Marvel Visual Comics',
  kind: "weird",
  question_id: second_oop_question.id
)

third_oop_question_first_answer = Answer.create!(
  content: 'A container to store the app information',
  kind: 'perfect',
  question_id: third_oop_question.id
)

third_oop_question_second_answer = Answer.create!(
  content: "It is the application's dynamic data structure",
  kind: "correct",
  question_id: third_oop_question.id
)

third_oop_question_third_answer = Answer.create!(
  content: 'It is the interface',
  kind: "misleading",
  question_id: third_oop_question.id
)

third_oop_question_fourth_answer = Answer.create!(
  content: 'It has to be the role model for everyone',
  kind: "weird",
  question_id: third_oop_question.id
)

fourth_oop_question_first_answer = Answer.create!(
  content: "It receives a user request and hits the correct action in the Controller.",
  kind: 'perfect',
  question_id: fourth_oop_question.id
)

fourth_oop_question_second_answer = Answer.create!(
  content: "It is the app's entry point.",
  kind: "correct",
  question_id: fourth_oop_question.id
)

fourth_oop_question_third_answer = Answer.create!(
  content: 'It connects you to the internet',
  kind: "misleading",
  question_id: fourth_oop_question.id
)

fourth_oop_question_fourth_answer = Answer.create!(
  content: 'A router ? Is it like a trucker ?',
  kind: "weird",
  question_id: fourth_oop_question.id
)

fifth_oop_question_first_answer = Answer.create!(
  content: 'Ruby On Rails',
  kind: 'perfect',
  question_id: fifth_oop_question.id
)

fifth_oop_question_second_answer = Answer.create!(
  content: 'Rails',
  kind: "correct",
  question_id: fifth_oop_question.id
)

fifth_oop_question_third_answer = Answer.create!(
  content: 'Sinatra',
  kind: "misleading",
  question_id: fifth_oop_question.id
)

fifth_oop_question_fourth_answer = Answer.create!(
  content: 'Ruby Rose',
  kind: "weird",
  question_id: fifth_oop_question.id
)

sixth_oop_question_first_answer = Answer.create!(
  content: 'The View puts and gets elements.',
  kind: 'perfect',
  question_id: sixth_oop_question.id
)

sixth_oop_question_second_answer = Answer.create!(
  content: 'The View renders presentation of the model in a particular format.',
  kind: "correct",
  question_id: sixth_oop_question.id
)

sixth_oop_question_third_answer = Answer.create!(
  content: 'The View accepts input and converts it to commands.',
  kind: "misleading",
  question_id: sixth_oop_question.id
)

sixth_oop_question_fourth_answer = Answer.create!(
  content: 'A View...to a kill',
  kind: "weird",
  question_id: sixth_oop_question.id
)

seventh_oop_question_first_answer = Answer.create!(
  content: "Super calls the parent's method which has the same name",
  kind: 'perfect',
  question_id: seventh_oop_question.id
)

seventh_oop_question_second_answer = Answer.create!(
  content: "It calls a parent's method",
  kind: "correct",
  question_id: seventh_oop_question.id
)

seventh_oop_question_third_answer = Answer.create!(
  content: 'It does the same as Yield',
  kind: "misleading",
  question_id: seventh_oop_question.id
)

seventh_oop_question_fourth_answer = Answer.create!(
  content: "Please don't call my parents",
  kind: "weird",
  question_id: seventh_oop_question.id
)

eighth_oop_question_first_answer = Answer.create!(
  content: "It's when you redefine or complete a superclass method in a subclass",
  kind: 'perfect',
  question_id: eighth_oop_question.id
)

eighth_oop_question_second_answer = Answer.create!(
  content: "It's the act of redefining a superclass method",
  kind: "correct",
  question_id: eighth_oop_question.id
)

eighth_oop_question_third_answer = Answer.create!(
  content: 'When you make a method more important than another',
  kind: "misleading",
  question_id: eighth_oop_question.id
)

eighth_oop_question_fourth_answer = Answer.create!(
  content: 'Bip boop system override',
  kind: "weird",
  question_id: eighth_oop_question.id
)

ninth_oop_question_first_answer = Answer.create!(
  content: 'It refers to the instance the method is called on',
  kind: 'perfect',
  question_id: ninth_oop_question.id
)

ninth_oop_question_second_answer = Answer.create!(
  content: 'It refers to an instance',
  kind: "correct",
  question_id: ninth_oop_question.id
)

ninth_oop_question_third_answer = Answer.create!(
  content: 'It refers to a superclass',
  kind: "misleading",
  question_id: ninth_oop_question.id
)

ninth_oop_question_fourth_answer = Answer.create!(
  content: 'It refers to me, myself and I',
  kind: "weird",
  question_id: ninth_oop_question.id
)

tenth_oop_question_first_answer = Answer.create!(
  content: "It's used when you want to share attributes and methods between classes",
  kind: 'perfect',
  question_id: tenth_oop_question.id
)

tenth_oop_question_second_answer = Answer.create!(
  content: 'It is used to share behaviors between classes',
  kind: "correct",
  question_id: tenth_oop_question.id
)

tenth_oop_question_third_answer = Answer.create!(
  content: "It's used to share instances",
  kind: "misleading",
  question_id: tenth_oop_question.id
)

tenth_oop_question_fourth_answer = Answer.create!(
  content: "I'm the heir to this class' fortune",
  kind: "weird",
  question_id: tenth_oop_question.id
)

eleventh_oop_question_first_answer = Answer.create!(
  content: 'Inside an instance method',
  kind: 'perfect',
  question_id: eleventh_oop_question.id
)

eleventh_oop_question_second_answer = Answer.create!(
  content: 'Inside a class definition, to define class methods',
  kind: "correct",
  question_id: eleventh_oop_question.id
)

eleventh_oop_question_third_answer = Answer.create!(
  content: 'Inside a view',
  kind: "misleading",
  question_id: eleventh_oop_question.id
)

eleventh_oop_question_fourth_answer = Answer.create!(
  content: "In a self service",
  kind: "weird",
  question_id: eleventh_oop_question.id
)

twelfth_oop_question_first_answer = Answer.create!(
  content: "They allow you to read an object's instance variables values",
  kind: 'perfect',
  question_id: twelfth_oop_question.id
)

twelfth_oop_question_second_answer = Answer.create!(
  content: "A way to read instance variables values",
  kind: "correct",
  question_id: twelfth_oop_question.id
)

twelfth_oop_question_third_answer = Answer.create!(
  content: 'A way to modify instance variables values',
  kind: "misleading",
  question_id: twelfth_oop_question.id
)

twelfth_oop_question_fourth_answer = Answer.create!(
  content: "We're up all night to getter lucky",
  kind: "weird",
  question_id: twelfth_oop_question.id
)

thirteenth_oop_question_first_answer = Answer.create!(
  content: "They let you update an object's instance variables values",
  kind: 'perfect',
  question_id: thirteenth_oop_question.id
)

thirteenth_oop_question_second_answer = Answer.create!(
  content: 'A way to change instance variables values',
  kind: "correct",
  question_id: thirteenth_oop_question.id
)

thirteenth_oop_question_third_answer = Answer.create!(
  content: 'A way to read instance variables values',
  kind: "misleading",
  question_id: thirteenth_oop_question.id
)

thirteenth_oop_question_fourth_answer = Answer.create!(
  content: 'I setter fire to the rain',
  kind: "weird",
  question_id: thirteenth_oop_question.id
)

fourteenth_oop_question_first_answer = Answer.create!(
  content: 'Class .new (arguments)',
  kind: 'perfect',
  question_id: fourteenth_oop_question.id
)

fourteenth_oop_question_second_answer = Answer.create!(
  content: 'The new method',
  kind: "correct",
  question_id: fourteenth_oop_question.id
)

fourteenth_oop_question_third_answer = Answer.create!(
  content: 'The create method',
  kind: "misleading",
  question_id: fourteenth_oop_question.id
)

fourteenth_oop_question_fourth_answer = Answer.create!(
  content: "Bob the builder method",
  kind: "weird",
  question_id: fourteenth_oop_question.id
)

fifteenth_oop_question_first_answer = Answer.create!(
  content: "By writing 'param_name = default_value'",
  kind: 'perfect',
  question_id: fifteenth_oop_question.id
)

fifteenth_oop_question_second_answer = Answer.create!(
  content: '@param = param',
  kind: "correct",
  question_id: fifteenth_oop_question.id
)

fifteenth_oop_question_third_answer = Answer.create!(
  content: '@param = default',
  kind: "misleading",
  question_id: fifteenth_oop_question.id
)

fifteenth_oop_question_fourth_answer = Answer.create!(
  content: "Arguably Default",
  kind: "weird",
  question_id: fifteenth_oop_question.id
)

sixteenth_oop_question_first_answer = Answer.create!(
  content: 'Class name is in Upper Camel Case',
  kind: 'perfect',
  question_id: sixteenth_oop_question.id
)

sixteenth_oop_question_second_answer = Answer.create!(
  content: 'Filename is in lower snake case',
  kind: "correct",
  question_id: sixteenth_oop_question.id
)

sixteenth_oop_question_third_answer = Answer.create!(
  content: 'They are both in lower snake case',
  kind: "misleading",
  question_id: sixteenth_oop_question.id
)

sixteenth_oop_question_fourth_answer = Answer.create!(
  content: "They are both in attaché case",
  kind: "weird",
  question_id: sixteenth_oop_question.id
)

seventeenth_oop_question_first_answer = Answer.create!(
  content: '1 and 4 are instances of the Integer class',
  kind: 'perfect',
  question_id: seventeenth_oop_question.id
)

seventeenth_oop_question_second_answer = Answer.create!(
  content: '+ is an instance method of the Integer class',
  kind: "correct",
  question_id: seventeenth_oop_question.id
)

seventeenth_oop_question_third_answer = Answer.create!(
  content: 'They are all part of the Math class',
  kind: "misleading",
  question_id: seventeenth_oop_question.id
)

seventeenth_oop_question_fourth_answer = Answer.create!(
  content: "1 + 4 = 14",
  kind: "weird",
  question_id: seventeenth_oop_question.id
)

eighteenth_oop_question_first_answer = Answer.create!(
  content: 'With attr_accessor',
  kind: 'perfect',
  question_id: eighteenth_oop_question.id
)

eighteenth_oop_question_second_answer = Answer.create!(
  content: 'With an attribute accessor',
  kind: "correct",
  question_id: eighteenth_oop_question.id
)

eighteenth_oop_question_third_answer = Answer.create!(
  content: 'With an attribute access',
  kind: "misleading",
  question_id: eighteenth_oop_question.id
)

eighteenth_oop_question_fourth_answer = Answer.create!(
  content: "Sorry but I don't have access to that question",
  kind: "weird",
  question_id: eighteenth_oop_question.id
)

nineteenth_oop_question_first_answer = Answer.create!(
  content: 'It is an instance method of the Array class',
  kind: 'perfect',
  question_id: nineteenth_oop_question.id
)

nineteenth_oop_question_second_answer = Answer.create!(
  content: 'It is the equivalent of the push method',
  kind: "correct",
  question_id: nineteenth_oop_question.id
)

nineteenth_oop_question_third_answer = Answer.create!(
  content: "It's an argument",
  kind: "misleading",
  question_id: nineteenth_oop_question.id
)

nineteenth_oop_question_fourth_answer = Answer.create!(
  content: "Turn left on the next intersection",
  kind: "weird",
  question_id: nineteenth_oop_question.id
)

twentieth_oop_question_first_answer = Answer.create!(
  content: 'Object oriented programming',
  kind: 'perfect',
  question_id: twentieth_oop_question.id
)

twentieth_oop_question_second_answer = Answer.create!(
  content: "It's a programming paradigm based on a concept of objects",
  kind: "correct",
  question_id: twentieth_oop_question.id
)

twentieth_oop_question_third_answer = Answer.create!(
  content: 'Open office programming',
  kind: "misleading",
  question_id: twentieth_oop_question.id
)

twentieth_oop_question_fourth_answer = Answer.create!(
  content: "Please don't wh-oop my butt",
  kind: "weird",
  question_id: twentieth_oop_question.id
)

puts 'OOP answers created.'

puts 'Creating DB answers...'

first_db_question_first_answer = Answer.create!(
  content: 'Structured Query Language',
  kind: 'perfect',
  question_id: first_db_question.id
)

first_db_question_second_answer = Answer.create!(
  content: "It's a query language",
  kind: "correct",
  question_id: first_db_question.id
)

first_db_question_third_answer = Answer.create!(
  content: 'Structured Question Language',
  kind: "misleading",
  question_id: first_db_question.id
)

first_db_question_fourth_answer = Answer.create!(
  content: 'Strange Question Lol',
  kind: "weird",
  question_id: first_db_question.id
)

second_db_question_first_answer = Answer.create!(
  content: 'A doctor has many patients and a patient has many doctors',
  kind: 'perfect',
  question_id: second_db_question.id
)

second_db_question_second_answer = Answer.create!(
  content: 'A patient has many doctors',
  kind: "correct",
  question_id: second_db_question.id
)

second_db_question_third_answer = Answer.create!(
  content: 'A doctor has one patient and a patient has many doctors',
  kind: "misleading",
  question_id: second_db_question.id
)

second_db_question_fourth_answer = Answer.create!(
  content: "That's too many...many",
  kind: "weird",
  question_id: second_db_question.id
)

third_db_question_first_answer = Answer.create!(
  content: 'With tables made of columns and rows',
  kind: 'perfect',
  question_id: third_db_question.id
)

third_db_question_second_answer = Answer.create!(
  content: 'With tables',
  kind: "correct",
  question_id: third_db_question.id
)

third_db_question_third_answer = Answer.create!(
  content: 'With columns and rows',
  kind: "misleading",
  question_id: third_db_question.id
)

third_db_question_fourth_answer = Answer.create!(
  content: 'The only table I know about is the dinner one.',
  kind: "weird",
  question_id: third_db_question.id
)

fourth_db_question_first_answer = Answer.create!(
  content: 'A set of tables linked together by a system of primary / foreign keys',
  kind: 'perfect',
  question_id: fourth_db_question.id
)

fourth_db_question_second_answer = Answer.create!(
  content: 'Tables that are connected together',
  kind: "correct",
  question_id: fourth_db_question.id
)

fourth_db_question_third_answer = Answer.create!(
  content: 'A database about relations',
  kind: "misleading",
  question_id: fourth_db_question.id
)

fourth_db_question_fourth_answer = Answer.create!(
  content: "I'm single and I don't want to hear anything about relations 😭",
  kind: "weird",
  question_id: fourth_db_question.id
)

fifth_db_question_first_answer = Answer.create!(
  content: 'SELECT * FROM table WHERE filter',
  kind: 'perfect',
  question_id: fifth_db_question.id
)

fifth_db_question_second_answer = Answer.create!(
  content: 'The WHERE keyword',
  kind: "correct",
  question_id: fifth_db_question.id
)

fifth_db_question_third_answer = Answer.create!(
  content: 'The SELECT keyword',
  kind: "misleading",
  question_id: fifth_db_question.id
)

fifth_db_question_fourth_answer = Answer.create!(
  content: 'The keyword is GOOGLE SEARCH',
  kind: "weird",
  question_id: fifth_db_question.id
)

sixth_db_question_first_answer = Answer.create!(
  content: 'SELECT * FROM table',
  kind: 'perfect',
  question_id: sixth_db_question.id
)

sixth_db_question_second_answer = Answer.create!(
  content: 'The SELECT keyword',
  kind: "correct",
  question_id: sixth_db_question.id
)

sixth_db_question_third_answer = Answer.create!(
  content: 'The WHERE keyword',
  kind: "misleading",
  question_id: sixth_db_question.id
)

sixth_db_question_fourth_answer = Answer.create!(
  content: 'The PRETTY PLEASE keyword',
  kind: "weird",
  question_id: sixth_db_question.id
)

seventh_db_question_first_answer = Answer.create!(
  content: 'Structured Query Language',
  kind: 'perfect',
  question_id: seventh_db_question.id
)

seventh_db_question_second_answer = Answer.create!(
  content: 'SQL',
  kind: "correct",
  question_id: seventh_db_question.id
)

seventh_db_question_third_answer = Answer.create!(
  content: 'ROR',
  kind: "misleading",
  question_id: seventh_db_question.id
)

seventh_db_question_fourth_answer = Answer.create!(
  content: 'The computer language *bip bip boop boop*',
  kind: "weird",
  question_id: seventh_db_question.id
)

eighth_db_question_first_answer = Answer.create!(
  content: 'A table used to join two other tables in an N:N relation',
  kind: 'perfect',
  question_id: eighth_db_question.id
)

eighth_db_question_second_answer = Answer.create!(
  content: 'A table which stores foreign keys from two other tables',
  kind: "correct",
  question_id: eighth_db_question.id
)

eighth_db_question_third_answer = Answer.create!(
  content: 'A fusion of two tables',
  kind: "misleading",
  question_id: eighth_db_question.id
)

eighth_db_question_fourth_answer = Answer.create!(
  content: 'We celebrate today the union of these two tables...',
  kind: "weird",
  question_id: eighth_db_question.id
)

ninth_db_question_first_answer = Answer.create!(
  content: 'An inhabitant belongs to one city and a city has many inhabitants',
  kind: 'perfect',
  question_id: ninth_db_question.id
)

ninth_db_question_second_answer = Answer.create!(
  content: 'A city has many inhabitants',
  kind: "correct",
  question_id: ninth_db_question.id
)

ninth_db_question_third_answer = Answer.create!(
  content: 'An inhabitant has many cities',
  kind: "misleading",
  question_id: ninth_db_question.id
)

ninth_db_question_fourth_answer = Answer.create!(
  content: "I am a citizen of the world, I don't belong to a city !",
  kind: "weird",
  question_id: ninth_db_question.id
)

tenth_db_question_first_answer = Answer.create!(
  content: 'A join table',
  kind: 'perfect',
  question_id: tenth_db_question.id
)

tenth_db_question_second_answer = Answer.create!(
  content: 'You need foreign keys',
  kind: "correct",
  question_id: tenth_db_question.id
)

tenth_db_question_third_answer = Answer.create!(
  content: 'You need a database',
  kind: "misleading",
  question_id: tenth_db_question.id
)

tenth_db_question_fourth_answer = Answer.create!(
  content: 'You need a LinkedIn',
  kind: "weird",
  question_id: tenth_db_question.id
)

eleventh_db_question_first_answer = Answer.create!(
  content: 'INSERT INTO table () VALUES ()',
  kind: 'perfect',
  question_id: eleventh_db_question.id
)

eleventh_db_question_second_answer = Answer.create!(
  content: 'You use the INSERT INTO keyword',
  kind: "correct",
  question_id: eleventh_db_question.id
)

eleventh_db_question_third_answer = Answer.create!(
  content: 'You use the ADD keyword',
  kind: "misleading",
  question_id: eleventh_db_question.id
)

eleventh_db_question_fourth_answer = Answer.create!(
  content: 'INSERT WHAT INTO WHAT ?!!',
  kind: "weird",
  question_id: eleventh_db_question.id
)

twelfth_db_question_first_answer = Answer.create!(
  content: 'Create, Read, Update, Delete',
  kind: 'perfect',
  question_id: twelfth_db_question.id
)

twelfth_db_question_second_answer = Answer.create!(
  content: 'The four main actions possible on a database',
  kind: "correct",
  question_id: twelfth_db_question.id
)

twelfth_db_question_third_answer = Answer.create!(
  content: 'Create, Reset, Upload, Destroy',
  kind: "misleading",
  question_id: twelfth_db_question.id
)

twelfth_db_question_fourth_answer = Answer.create!(
  content: 'Charlie, Romeo, Uniform, Delta',
  kind: "weird",
  question_id: twelfth_db_question.id
)

thirteenth_db_question_first_answer = Answer.create!(
  content: 'UPDATE table SET value WHERE id',
  kind: 'perfect',
  question_id: thirteenth_db_question.id
)

thirteenth_db_question_second_answer = Answer.create!(
  content: 'With the UPDATE keyword',
  kind: "correct",
  question_id: thirteenth_db_question.id
)

thirteenth_db_question_third_answer = Answer.create!(
  content: 'With the MODIFY keyword',
  kind: "misleading",
  question_id: thirteenth_db_question.id
)

thirteenth_db_question_fourth_answer = Answer.create!(
  content: 'I just keep pressing F5',
  kind: "weird",
  question_id: thirteenth_db_question.id
)

fourteenth_db_question_first_answer = Answer.create!(
  content: 'DELETE FROM table WHERE id',
  kind: 'perfect',
  question_id: fourteenth_db_question.id
)

fourteenth_db_question_second_answer = Answer.create!(
  content: 'With the DELETE keyword',
  kind: "correct",
  question_id: fourteenth_db_question.id
)

fourteenth_db_question_third_answer = Answer.create!(
  content: 'With the DESTROY keyword',
  kind: "misleading",
  question_id: fourteenth_db_question.id
)

fourteenth_db_question_fourth_answer = Answer.create!(
  content: "With the EXTERMINAAATE keyword",
  kind: "weird",
  question_id: fourteenth_db_question.id
)

fifteenth_db_question_first_answer = Answer.create!(
  content: 'SELECT * FROM table',
  kind: 'perfect',
  question_id: fifteenth_db_question.id
)

fifteenth_db_question_second_answer = Answer.create!(
  content: 'With the SELECT keyword',
  kind: "correct",
  question_id: fifteenth_db_question.id
)

fifteenth_db_question_third_answer = Answer.create!(
  content: 'With the WHERE keyword',
  kind: "misleading",
  question_id: fifteenth_db_question.id
)

fifteenth_db_question_fourth_answer = Answer.create!(
  content: "With my glasses, can't read without them.",
  kind: "weird",
  question_id: fifteenth_db_question.id
)

sixteenth_db_question_first_answer = Answer.create!(
  content: 'rake db: migrate',
  kind: 'perfect',
  question_id: sixteenth_db_question.id
)

sixteenth_db_question_second_answer = Answer.create!(
  content: 'db: migrate',
  kind: "correct",
  question_id: sixteenth_db_question.id
)

sixteenth_db_question_third_answer = Answer.create!(
  content: 'rake db: seed',
  kind: "misleading",
  question_id: sixteenth_db_question.id
)

sixteenth_db_question_fourth_answer = Answer.create!(
  content: "rake duck: migrate",
  kind: "weird",
  question_id: sixteenth_db_question.id
)

seventeenth_db_question_first_answer = Answer.create!(
  content: 'rake db: drop',
  kind: 'perfect',
  question_id: seventeenth_db_question.id
)

seventeenth_db_question_second_answer = Answer.create!(
  content: 'db: drop',
  kind: "correct",
  question_id: seventeenth_db_question.id
)

seventeenth_db_question_third_answer = Answer.create!(
  content: 'db: delete',
  kind: "misleading",
  question_id: seventeenth_db_question.id
)

seventeenth_db_question_fourth_answer = Answer.create!(
  content: "rake db: drop the mic",
  kind: "weird",
  question_id: seventeenth_db_question.id
)

eighteenth_db_question_first_answer = Answer.create!(
  content: 'Model .count',
  kind: 'perfect',
  question_id: eighteenth_db_question.id
)

eighteenth_db_question_second_answer = Answer.create!(
  content: 'With the .count method',
  kind: "correct",
  question_id: eighteenth_db_question.id
)

eighteenth_db_question_third_answer = Answer.create!(
  content: 'With the .size method',
  kind: "misleading",
  question_id: eighteenth_db_question.id
)

eighteenth_db_question_fourth_answer = Answer.create!(
  content: "With the .stop the count method",
  kind: "weird",
  question_id: eighteenth_db_question.id
)

nineteenth_db_question_first_answer = Answer.create!(
  content: 'SELECT * FROM doctors',
  kind: 'perfect',
  question_id: nineteenth_db_question.id
)

nineteenth_db_question_second_answer = Answer.create!(
  content: 'SELECT *',
  kind: "correct",
  question_id: nineteenth_db_question.id
)

nineteenth_db_question_third_answer = Answer.create!(
  content: 'SELECT * WHERE doctors',
  kind: "misleading",
  question_id: nineteenth_db_question.id
)

nineteenth_db_question_fourth_answer = Answer.create!(
  content: "IS THERE A DOCTOR ON THIS PLANE ?!!",
  kind: "weird",
  question_id: nineteenth_db_question.id
)

twentieth_db_question_first_answer = Answer.create!(
  content: 'Model.last',
  kind: 'perfect',
  question_id: twentieth_db_question.id
)

twentieth_db_question_second_answer = Answer.create!(
  content: 'With the .last method',
  kind: "correct",
  question_id: twentieth_db_question.id
)

twentieth_db_question_third_answer = Answer.create!(
  content: 'With the .latest method',
  kind: "misleading",
  question_id: twentieth_db_question.id
)

twentieth_db_question_fourth_answer = Answer.create!(
  content: "With the .last of us method",
  kind: "weird",
  question_id: twentieth_db_question.id
)

twenty_first_db_question_first_answer = Answer.create!(
  content: 'class Name < ActiveRecord :: Base',
  kind: 'perfect',
  question_id: twenty_first_db_question.id
)

twenty_first_db_question_second_answer = Answer.create!(
  content: 'They should inherit from ActiveRecord :: Base',
  kind: "correct",
  question_id: twenty_first_db_question.id
)

twenty_first_db_question_third_answer = Answer.create!(
  content: 'ActiveRecord :: Migration [7.0]',
  kind: "misleading",
  question_id: twenty_first_db_question.id
)

twenty_first_db_question_fourth_answer = Answer.create!(
  content: "For the (active) record: I don't know",
  kind: "weird",
  question_id: twenty_first_db_question.id
)

twenty_second_db_question_first_answer = Answer.create!(
  content: 'class Create Table < ActiveRecord :: Migration [7.0]',
  kind: 'perfect',
  question_id: twenty_second_db_question.id
)

twenty_second_db_question_second_answer = Answer.create!(
  content: 'ActiveRecord :: Migration [7.0]',
  kind: "correct",
  question_id: twenty_second_db_question.id
)

twenty_second_db_question_third_answer = Answer.create!(
  content: 'ActiveRecord :: Base',
  kind: "misleading",
  question_id: twenty_second_db_question.id
)

twenty_second_db_question_fourth_answer = Answer.create!(
  content: "ActiveRecord :: Wild Geese Migration 🦆",
  kind: "weird",
  question_id: twenty_second_db_question.id
)

twenty_third_db_question_first_answer = Answer.create!(
  content: 'Model .all',
  kind: 'perfect',
  question_id: twenty_third_db_question.id
)

twenty_third_db_question_second_answer = Answer.create!(
  content: 'With the .all method',
  kind: "correct",
  question_id: twenty_third_db_question.id
)

twenty_third_db_question_third_answer = Answer.create!(
  content: 'With the .count method',
  kind: "misleading",
  question_id: twenty_third_db_question.id
)

twenty_third_db_question_fourth_answer = Answer.create!(
  content: "Imagine all... the Active Records 🎤",
  kind: "weird",
  question_id: twenty_third_db_question.id
)

twenty_fourth_db_question_first_answer = Answer.create!(
  content: 'The class name should be in Upper Camel Case, singular form',
  kind: 'perfect',
  question_id: twenty_fourth_db_question.id
)

twenty_fourth_db_question_second_answer = Answer.create!(
  content: 'The table name should be in lower snake case, plural form',
  kind: "correct",
  question_id: twenty_fourth_db_question.id
)

twenty_fourth_db_question_third_answer = Answer.create!(
  content: 'They should be in Upper Camel Case, plural form',
  kind: "misleading",
  question_id: twenty_fourth_db_question.id
)

twenty_fourth_db_question_fourth_answer = Answer.create!(
  content: "What's this about Camels and snakes ? We're not in a zoo !",
  kind: "weird",
  question_id: twenty_fourth_db_question.id
)

twenty_fifth_db_question_first_answer = Answer.create!(
  content: 'Model .find(id)',
  kind: 'perfect',
  question_id: twenty_fifth_db_question.id
)

twenty_fifth_db_question_second_answer = Answer.create!(
  content: 'Model .find_by (attribute: value)',
  kind: "correct",
  question_id: twenty_fifth_db_question.id
)

twenty_fifth_db_question_third_answer = Answer.create!(
  content: 'Model .search(id)',
  kind: "misleading",
  question_id: twenty_fifth_db_question.id
)

twenty_fifth_db_question_fourth_answer = Answer.create!(
  content: "Do I look like a detective to you ?",
  kind: "weird",
  question_id: twenty_fifth_db_question.id
)

twenty_sixth_db_question_first_answer = Answer.create!(
  content: 'rake db: create',
  kind: 'perfect',
  question_id: twenty_sixth_db_question.id
)

twenty_sixth_db_question_second_answer = Answer.create!(
  content: 'With db: create',
  kind: "correct",
  question_id: twenty_sixth_db_question.id
)

twenty_sixth_db_question_third_answer = Answer.create!(
  content: 'With rake db: migrate',
  kind: "misleading",
  question_id: twenty_sixth_db_question.id
)

twenty_sixth_db_question_fourth_answer = Answer.create!(
  content: "With rake db: creatine *flex your muscles*",
  kind: "weird",
  question_id: twenty_sixth_db_question.id
)

twenty_seventh_db_question_first_answer = Answer.create!(
  content: 'Presence and uniqueness',
  kind: 'perfect',
  question_id: twenty_seventh_db_question.id
)

twenty_seventh_db_question_second_answer = Answer.create!(
  content: 'Length and format',
  kind: "correct",
  question_id: twenty_seventh_db_question.id
)

twenty_seventh_db_question_third_answer = Answer.create!(
  content: 'Absence and numericality',
  kind: "misleading",
  question_id: twenty_seventh_db_question.id
)

twenty_seventh_db_question_fourth_answer = Answer.create!(
  content: "Charisma, uniqueness, nerve and talent",
  kind: "weird",
  question_id: twenty_seventh_db_question.id
)

twenty_eighth_db_question_first_answer = Answer.create!(
  content: 'Model .destroy_all',
  kind: 'perfect',
  question_id: twenty_eighth_db_question.id
)

twenty_eighth_db_question_second_answer = Answer.create!(
  content: 'With the .destroy_all method',
  kind: "correct",
  question_id: twenty_eighth_db_question.id
)

twenty_eighth_db_question_third_answer = Answer.create!(
  content: 'With the .delete_all method',
  kind: "misleading",
  question_id: twenty_eighth_db_question.id
)

twenty_eighth_db_question_fourth_answer = Answer.create!(
  content: "By throwing my hard drive in the trash",
  kind: "weird",
  question_id: twenty_eighth_db_question.id
)

twenty_ninth_db_question_first_answer = Answer.create!(
  content: 'With the .valid? method',
  kind: 'perfect',
  question_id: twenty_ninth_db_question.id
)

twenty_ninth_db_question_second_answer = Answer.create!(
  content: 'With the .errors .messages methods',
  kind: "correct",
  question_id: twenty_ninth_db_question.id
)

twenty_ninth_db_question_third_answer = Answer.create!(
  content: 'With the .validity? method',
  kind: "misleading",
  question_id: twenty_ninth_db_question.id
)

twenty_ninth_db_question_fourth_answer = Answer.create!(
  content: "Just look at the expiration date",
  kind: "weird",
  question_id: twenty_ninth_db_question.id
)

thirtieth_db_question_first_answer = Answer.create!(
  content: 'The INSERT INTO and UPDATE actions',
  kind: 'perfect',
  question_id: thirtieth_db_question.id
)

thirtieth_db_question_second_answer = Answer.create!(
  content: 'It will insert the new instance and update the record',
  kind: "correct",
  question_id: thirtieth_db_question.id
)

thirtieth_db_question_third_answer = Answer.create!(
  content: 'The ADD and MODIFY actions',
  kind: "misleading",
  question_id: thirtieth_db_question.id
)

thirtieth_db_question_fourth_answer = Answer.create!(
  content: "UPDATE: I don't care",
  kind: "weird",
  question_id: thirtieth_db_question.id
)

thirty_first_db_question_first_answer = Answer.create!(
  content: 'DELETE FROM doctors',
  kind: 'perfect',
  question_id: thirty_first_db_question.id
)

thirty_first_db_question_second_answer = Answer.create!(
  content: 'DELETE FROM',
  kind: "correct",
  question_id: thirty_first_db_question.id
)

thirty_first_db_question_third_answer = Answer.create!(
  content: 'DELETE * WHERE doctors',
  kind: "misleading",
  question_id: thirty_first_db_question.id
)

thirty_first_db_question_fourth_answer = Answer.create!(
  content: "What's your problem with doctors dude ?!!",
  kind: "weird",
  question_id: thirty_first_db_question.id
)

puts 'DB answers created.'

puts 'Creating Front answers...'

first_front_question_first_answer = Answer.create!(
  content: 'HTML tags, CSS classes and IDs',
  kind: 'perfect',
  question_id: first_front_question.id
)

first_front_question_second_answer = Answer.create!(
  content: 'Tags, classes and IDs',
  kind: "correct",
  question_id: first_front_question.id
)

first_front_question_third_answer = Answer.create!(
  content: 'Divs, Headers and paragraphs',
  kind: "misleading",
  question_id: first_front_question.id
)

first_front_question_fourth_answer = Answer.create!(
  content: 'My standards are too high for this question',
  kind: "weird",
  question_id: first_front_question.id
)

second_front_question_first_answer = Answer.create!(
  content: '<a href= "url"> text </a>',
  kind: 'perfect',
  question_id: second_front_question.id
)

second_front_question_second_answer = Answer.create!(
  content: 'With the <a> tag',
  kind: "correct",
  question_id: second_front_question.id
)

second_front_question_third_answer = Answer.create!(
  content: 'With the <link> tag',
  kind: "misleading",
  question_id: second_front_question.id
)

second_front_question_fourth_answer = Answer.create!(
  content: "I only know about Hyperspeed",
  kind: "weird",
  question_id: second_front_question.id
)

third_front_question_first_answer = Answer.create!(
  content: 'Px, %, Vh/Vw, em',
  kind: 'perfect',
  question_id: third_front_question.id
)

third_front_question_second_answer = Answer.create!(
  content: 'Px, %, viewport, em',
  kind: "correct",
  question_id: third_front_question.id
)

third_front_question_third_answer = Answer.create!(
  content: 'Cm, inch, px, foot',
  kind: "misleading",
  question_id: third_front_question.id
)

third_front_question_fourth_answer = Answer.create!(
  content: 'I only have one type: you.',
  kind: "weird",
  question_id: third_front_question.id
)

fourth_front_question_first_answer = Answer.create!(
  content: '<img src= "file_path" alt= "description">',
  kind: 'perfect',
  question_id: fourth_front_question.id
)

fourth_front_question_second_answer = Answer.create!(
  content: 'With the <img> tag',
  kind: "correct",
  question_id: fourth_front_question.id
)

fourth_front_question_third_answer = Answer.create!(
  content: 'With the <image> tag',
  kind: "misleading",
  question_id: fourth_front_question.id
)

fourth_front_question_fourth_answer = Answer.create!(
  content: 'With the <emile et image> tag',
  kind: "weird",
  question_id: fourth_front_question.id
)

fifth_front_question_first_answer = Answer.create!(
  content: 'div { border-radius: 5px; }',
  kind: 'perfect',
  question_id: fifth_front_question.id
)

fifth_front_question_second_answer = Answer.create!(
  content: 'With border-radius',
  kind: "correct",
  question_id: fifth_front_question.id
)

fifth_front_question_third_answer = Answer.create!(
  content: 'With the border property',
  kind: "misleading",
  question_id: fifth_front_question.id
)

fifth_front_question_fourth_answer = Answer.create!(
  content: 'With border-cubitus',
  kind: "weird",
  question_id: fifth_front_question.id
)

sixth_front_question_first_answer = Answer.create!(
  content: 'body { background-color: red; }',
  kind: 'perfect',
  question_id: sixth_front_question.id
)

sixth_front_question_second_answer = Answer.create!(
  content: 'With background-color: red',
  kind: "correct",
  question_id: sixth_front_question.id
)

sixth_front_question_third_answer = Answer.create!(
  content: 'With background: red',
  kind: "misleading",
  question_id: sixth_front_question.id
)

sixth_front_question_fourth_answer = Answer.create!(
  content: 'I just change the wallpaper',
  kind: "weird",
  question_id: sixth_front_question.id
)

seventh_front_question_first_answer = Answer.create!(
  content: 'With the <strong> tag',
  kind: 'perfect',
  question_id: seventh_front_question.id
)

seventh_front_question_second_answer = Answer.create!(
  content: 'With the <em> tag',
  kind: "correct",
  question_id: seventh_front_question.id
)

seventh_front_question_third_answer = Answer.create!(
  content: 'With the <bold> tag',
  kind: "misleading",
  question_id: seventh_front_question.id
)

seventh_front_question_fourth_answer = Answer.create!(
  content: 'I just put the font size to 56',
  kind: "weird",
  question_id: seventh_front_question.id
)

eighth_front_question_first_answer = Answer.create!(
  content: '<element attr= "value"> some text </element>',
  kind: 'perfect',
  question_id: eighth_front_question.id
)

eighth_front_question_second_answer = Answer.create!(
  content: 'With an element tag, an attribute and a value',
  kind: "correct",
  question_id: eighth_front_question.id
)

eighth_front_question_third_answer = Answer.create!(
  content: 'html{ attr: value }',
  kind: "misleading",
  question_id: eighth_front_question.id
)

eighth_front_question_fourth_answer = Answer.create!(
  content: '<I> "Love" </Bootstrap>',
  kind: "weird",
  question_id: eighth_front_question.id
)

ninth_front_question_first_answer = Answer.create!(
  content: 'justify content: value',
  kind: 'perfect',
  question_id: ninth_front_question.id
)

ninth_front_question_second_answer = Answer.create!(
  content: 'justify content',
  kind: "correct",
  question_id: ninth_front_question.id
)

ninth_front_question_third_answer = Answer.create!(
  content: 'justify',
  kind: "misleading",
  question_id: ninth_front_question.id
)

ninth_front_question_fourth_answer = Answer.create!(
  content: "I don't have to justify myself !",
  kind: "weird",
  question_id: ninth_front_question.id
)

tenth_front_question_first_answer = Answer.create!(
  content: 'flex shrink: 1',
  kind: 'perfect',
  question_id: tenth_front_question.id
)

tenth_front_question_second_answer = Answer.create!(
  content: 'flex shrink',
  kind: "correct",
  question_id: tenth_front_question.id
)

tenth_front_question_third_answer = Answer.create!(
  content: 'flex shrink: -1',
  kind: "misleading",
  question_id: tenth_front_question.id
)

tenth_front_question_fourth_answer = Answer.create!(
  content: 'Set an appointment with my shrink',
  kind: "weird",
  question_id: tenth_front_question.id
)

eleventh_front_question_first_answer = Answer.create!(
  content: 'align items: value',
  kind: 'perfect',
  question_id: eleventh_front_question.id
)

eleventh_front_question_second_answer = Answer.create!(
  content: 'With align items',
  kind: "correct",
  question_id: eleventh_front_question.id
)

eleventh_front_question_third_answer = Answer.create!(
  content: 'With align content',
  kind: "misleading",
  question_id: eleventh_front_question.id
)

eleventh_front_question_fourth_answer = Answer.create!(
  content: 'With stars align',
  kind: "weird",
  question_id: eleventh_front_question.id
)

twelfth_front_question_first_answer = Answer.create!(
  content: 'background image: linear gradient()',
  kind: 'perfect',
  question_id: twelfth_front_question.id
)

twelfth_front_question_second_answer = Answer.create!(
  content: 'With linear gradient',
  kind: "correct",
  question_id: twelfth_front_question.id
)

twelfth_front_question_third_answer = Answer.create!(
  content: 'background image: contrast()',
  kind: "misleading",
  question_id: twelfth_front_question.id
)

twelfth_front_question_fourth_answer = Answer.create!(
  content: 'Put the image in black and white',
  kind: "weird",
  question_id: twelfth_front_question.id
)

thirteenth_front_question_first_answer = Answer.create!(
  content: 'display: flex',
  kind: 'perfect',
  question_id: thirteenth_front_question.id
)

thirteenth_front_question_second_answer = Answer.create!(
  content: 'With the flex property',
  kind: "correct",
  question_id: thirteenth_front_question.id
)

thirteenth_front_question_third_answer = Answer.create!(
  content: 'display: flexbox',
  kind: "misleading",
  question_id: thirteenth_front_question.id
)

thirteenth_front_question_fourth_answer = Answer.create!(
  content: '*flex your muscles*',
  kind: "weird",
  question_id: thirteenth_front_question.id
)

fourteenth_front_question_first_answer = Answer.create!(
  content: 'flex direction: column',
  kind: 'perfect',
  question_id: fourteenth_front_question.id
)

fourteenth_front_question_second_answer = Answer.create!(
  content: 'With flex direction',
  kind: "correct",
  question_id: fourteenth_front_question.id
)

fourteenth_front_question_third_answer = Answer.create!(
  content: 'flex direction: row',
  kind: "misleading",
  question_id: fourteenth_front_question.id
)

fourteenth_front_question_fourth_answer = Answer.create!(
  content: "With one direction",
  kind: "weird",
  question_id: fourteenth_front_question.id
)

fifteenth_front_question_first_answer = Answer.create!(
  content: '<div class= "text center"> </div>',
  kind: 'perfect',
  question_id: fifteenth_front_question.id
)

fifteenth_front_question_second_answer = Answer.create!(
  content: 'With the "text center" class',
  kind: "correct",
  question_id: fifteenth_front_question.id
)

fifteenth_front_question_third_answer = Answer.create!(
  content: '<div class= "text align"> </div>',
  kind: "misleading",
  question_id: fifteenth_front_question.id
)

fifteenth_front_question_fourth_answer = Answer.create!(
  content: "*press space bar fifty times*",
  kind: "weird",
  question_id: fifteenth_front_question.id
)

sixteenth_front_question_first_answer = Answer.create!(
  content: '<img src= "example.png" class= "rounded circle">',
  kind: 'perfect',
  question_id: sixteenth_front_question.id
)

sixteenth_front_question_second_answer = Answer.create!(
  content: 'With the class rounded circle',
  kind: "correct",
  question_id: sixteenth_front_question.id
)

sixteenth_front_question_third_answer = Answer.create!(
  content: '<img src= "example.png" class= "circle">',
  kind: "misleading",
  question_id: sixteenth_front_question.id
)

sixteenth_front_question_fourth_answer = Answer.create!(
  content: "Bootstrap sucks, just use border radius like an adult",
  kind: "weird",
  question_id: sixteenth_front_question.id
)

seventeenth_front_question_first_answer = Answer.create!(
  content: '12 columns',
  kind: 'perfect',
  question_id: seventeenth_front_question.id
)

seventeenth_front_question_second_answer = Answer.create!(
  content: '2 x 6 columns',
  kind: "correct",
  question_id: seventeenth_front_question.id
)

seventeenth_front_question_third_answer = Answer.create!(
  content: '10 columns',
  kind: "misleading",
  question_id: seventeenth_front_question.id
)

seventeenth_front_question_fourth_answer = Answer.create!(
  content: "Those columns are like prison bars. Bootstrap prison.",
  kind: "weird",
  question_id: seventeenth_front_question.id
)

eighteenth_front_question_first_answer = Answer.create!(
  content: 'Container, row and col',
  kind: 'perfect',
  question_id: eighteenth_front_question.id
)

eighteenth_front_question_second_answer = Answer.create!(
  content: 'Container, rows and columns',
  kind: "correct",
  question_id: eighteenth_front_question.id
)

eighteenth_front_question_third_answer = Answer.create!(
  content: 'Div, header, line',
  kind: "misleading",
  question_id: eighteenth_front_question.id
)

eighteenth_front_question_fourth_answer = Answer.create!(
  content: "BOOTSTRAP, IS, HELL",
  kind: "weird",
  question_id: eighteenth_front_question.id
)

nineteenth_front_question_first_answer = Answer.create!(
  content: 'With const',
  kind: 'perfect',
  question_id: nineteenth_front_question.id
)

nineteenth_front_question_second_answer = Answer.create!(
  content: 'With let',
  kind: "correct",
  question_id: nineteenth_front_question.id
)

nineteenth_front_question_third_answer = Answer.create!(
  content: 'With var',
  kind: "misleading",
  question_id: nineteenth_front_question.id
)

nineteenth_front_question_fourth_answer = Answer.create!(
  content: "I had to learn Ruby and now THIS ?!!",
  kind: "weird",
  question_id: nineteenth_front_question.id
)

twentieth_front_question_first_answer = Answer.create!(
  content: 'lowerCamelCase',
  kind: 'perfect',
  question_id: twentieth_front_question.id
)

twentieth_front_question_second_answer = Answer.create!(
  content: 'const firstName',
  kind: "correct",
  question_id: twentieth_front_question.id
)

twentieth_front_question_third_answer = Answer.create!(
  content: 'const first_name',
  kind: "misleading",
  question_id: twentieth_front_question.id
)

twentieth_front_question_fourth_answer = Answer.create!(
  content: "I'll have a pack of Camel please",
  kind: "weird",
  question_id: twentieth_front_question.id
)

twenty_first_front_question_first_answer = Answer.create!(
  content: 'Math.random();',
  kind: 'perfect',
  question_id: twenty_first_front_question.id
)

twenty_first_front_question_second_answer = Answer.create!(
  content: 'With the random() method on Math',
  kind: "correct",
  question_id: twenty_first_front_question.id
)

twenty_first_front_question_third_answer = Answer.create!(
  content: 'Math. sample (0..1)',
  kind: "misleading",
  question_id: twenty_first_front_question.id
)

twenty_first_front_question_fourth_answer = Answer.create!(
  content: "I don't float, I sink.",
  kind: "weird",
  question_id: twenty_first_front_question.id
)

twenty_second_front_question_first_answer = Answer.create!(
  content: 'With template literals (backtick symbol + dollar sign)',
  kind: 'perfect',
  question_id: twenty_second_front_question.id
)

twenty_second_front_question_second_answer = Answer.create!(
  content: '`${firstName} is a drummer`',
  kind: "correct",
  question_id: twenty_second_front_question.id
)

twenty_second_front_question_third_answer = Answer.create!(
  content: '"#{firstName} is a singer"',
  kind: "misleading",
  question_id: twenty_second_front_question.id
)

twenty_second_front_question_fourth_answer = Answer.create!(
  content: "I don't work for Interpol",
  kind: "weird",
  question_id: twenty_second_front_question.id
)

twenty_third_front_question_first_answer = Answer.create!(
  content: 'array .forEach (element)',
  kind: 'perfect',
  question_id: twenty_third_front_question.id
)

twenty_third_front_question_second_answer = Answer.create!(
  content: 'With .forEach',
  kind: "correct",
  question_id: twenty_third_front_question.id
)

twenty_third_front_question_third_answer = Answer.create!(
  content: 'array .each do',
  kind: "misleading",
  question_id: twenty_third_front_question.id
)

twenty_third_front_question_fourth_answer = Answer.create!(
  content: "We're not made forEach other",
  kind: "weird",
  question_id: twenty_third_front_question.id
)

twenty_fourth_front_question_first_answer = Answer.create!(
  content: 'element .insert Adjacent HTML',
  kind: 'perfect',
  question_id: twenty_fourth_front_question.id
)

twenty_fourth_front_question_second_answer = Answer.create!(
  content: 'With .insert Adjacent HTML',
  kind: "correct",
  question_id: twenty_fourth_front_question.id
)

twenty_fourth_front_question_third_answer = Answer.create!(
  content: 'With .insert inner HTML',
  kind: "misleading",
  question_id: twenty_fourth_front_question.id
)

twenty_fourth_front_question_fourth_answer = Answer.create!(
  content: "Insert adjacent what ? 0_0",
  kind: "weird",
  question_id: twenty_fourth_front_question.id
)

twenty_fifth_front_question_first_answer = Answer.create!(
  content: 'document .get Element By Id()',
  kind: 'perfect',
  question_id: twenty_fifth_front_question.id
)

twenty_fifth_front_question_second_answer = Answer.create!(
  content: 'With .get Element By Id',
  kind: "correct",
  question_id: twenty_fifth_front_question.id
)

twenty_fifth_front_question_third_answer = Answer.create!(
  content: 'With query Selector',
  kind: "misleading",
  question_id: twenty_fifth_front_question.id
)

twenty_fifth_front_question_fourth_answer = Answer.create!(
  content: "I'm old enough to get Elements without showing my ID",
  kind: "weird",
  question_id: twenty_fifth_front_question.id
)

twenty_sixth_front_question_first_answer = Answer.create!(
  content: 'element .add Event Listener (event Type, (event))',
  kind: 'perfect',
  question_id: twenty_sixth_front_question.id
)

twenty_sixth_front_question_second_answer = Answer.create!(
  content: 'With .add Event Listener',
  kind: "correct",
  question_id: twenty_sixth_front_question.id
)

twenty_sixth_front_question_third_answer = Answer.create!(
  content: 'With .insert Inner HTML',
  kind: "misleading",
  question_id: twenty_sixth_front_question.id
)

twenty_sixth_front_question_fourth_answer = Answer.create!(
  content: "I'm a very good listener you know",
  kind: "weird",
  question_id: twenty_sixth_front_question.id
)

twenty_seventh_front_question_first_answer = Answer.create!(
  content: 'With element .query Selector ()',
  kind: 'perfect',
  question_id: twenty_seventh_front_question.id
)

twenty_seventh_front_question_second_answer = Answer.create!(
  content: 'With element .query Selector All()',
  kind: "correct",
  question_id: twenty_seventh_front_question.id
)

twenty_seventh_front_question_third_answer = Answer.create!(
  content: 'With get Element By Id()',
  kind: "misleading",
  question_id: twenty_seventh_front_question.id
)

twenty_seventh_front_question_fourth_answer = Answer.create!(
  content: "You just can't. I give up.",
  kind: "weird",
  question_id: twenty_seventh_front_question.id
)

twenty_eighth_front_question_first_answer = Answer.create!(
  content: 'In package.json',
  kind: 'perfect',
  question_id: twenty_eighth_front_question.id
)

twenty_eighth_front_question_second_answer = Answer.create!(
  content: 'In a json file',
  kind: "correct",
  question_id: twenty_eighth_front_question.id
)

twenty_eighth_front_question_third_answer = Answer.create!(
  content: 'In Gemfile',
  kind: "misleading",
  question_id: twenty_eighth_front_question.id
)

twenty_eighth_front_question_fourth_answer = Answer.create!(
  content: "Nice package...json.",
  kind: "weird",
  question_id: twenty_eighth_front_question.id
)

twenty_ninth_front_question_first_answer = Answer.create!(
  content: 'NPM',
  kind: 'perfect',
  question_id: twenty_ninth_front_question.id
)

twenty_ninth_front_question_second_answer = Answer.create!(
  content: 'NPM.js',
  kind: "correct",
  question_id: twenty_ninth_front_question.id
)

twenty_ninth_front_question_third_answer = Answer.create!(
  content: 'YARN',
  kind: "misleading",
  question_id: twenty_ninth_front_question.id
)

twenty_ninth_front_question_fourth_answer = Answer.create!(
  content: "NTM",
  kind: "weird",
  question_id: twenty_ninth_front_question.id
)

thirtieth_front_question_first_answer = Answer.create!(
  content: 'yarn add <package> [--dev]',
  kind: 'perfect',
  question_id: thirtieth_front_question.id
)

thirtieth_front_question_second_answer = Answer.create!(
  content: 'yarn add',
  kind: "correct",
  question_id: thirtieth_front_question.id
)

thirtieth_front_question_third_answer = Answer.create!(
  content: 'npm add',
  kind: "misleading",
  question_id: thirtieth_front_question.id
)

thirtieth_front_question_fourth_answer = Answer.create!(
  content: "wool yarn add",
  kind: "weird",
  question_id: thirtieth_front_question.id
)

thirty_first_front_question_first_answer = Answer.create!(
  content: 'You burn your computer',
  kind: 'perfect',
  question_id: thirty_first_front_question.id
)

thirty_first_front_question_second_answer = Answer.create!(
  content: 'You uninstall it this instant',
  kind: "correct",
  question_id: thirty_first_front_question.id
)

thirty_first_front_question_third_answer = Answer.create!(
  content: 'Bootstrap is not that bad',
  kind: "misleading",
  question_id: thirty_first_front_question.id
)

thirty_first_front_question_fourth_answer = Answer.create!(
  content: "I call you for all my Bootstrap issues 💞",
  kind: "weird",
  question_id: thirty_first_front_question.id
)

puts 'Front answers created.'

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
  open_dialog1: "Hello student. I see that you did not do your flashcards tonight... ",
  open_dialog2: "Wait are you real Slackbot ?!! ",
  open_dialog3: "Yes... And your lack of seriousness pains me... It's time to fight ! "
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
  feedback_intro: "Fun is important but so are rules Dude ! Never forget that ! ",
  feedback_user_won: 'Damn Dude, you are pretty good for a newbie !',
  feedback_user_lost: 'Dude, that is not a very chill attitude, go have an ice cream and try again !',
  position_x: 14,
  position_y: 23,
  lesson_id: second_lesson.id,
  status: "regular",
  open_dialog1: "Hey dude ! Welcome to Le Wagon academy ! ",
  open_dialog2: "Hello to you too, you really have nice hair man ! ",
  open_dialog3: "Thanks but flattery won't let you escape the rules around here ! "
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
  open_dialog1: "... ",
  open_dialog2: "What are you doing in the bushes ? ",
  open_dialog3: "... "
)

file = File.open(Rails.root.join("app/assets/images/seb_tall.png"))
seb.avatar_map.attach(io: file, filename: "teacher.png", content_type: "image/png")
file = File.open(Rails.root.join("app/assets/images/seb_square.png"))
seb.avatar_battle.attach(io: file, filename: "teacher.png", content_type: "image/png")
seb.save!

tim = Teacher.create!(
  name: 'Timothée',
  feedback_answer_perfect: 'It is very goodeee !',
  feedback_answer_correct: 'Quite goodeee !',
  feedback_answer_misleading: 'Not very goode.',
  feedback_answer_weird: 'You are the opposite of goode.',
  feedback_intro: "You need to be goode at the basics of Ruby.",
  feedback_user_won: 'You have mastered the basics of Ruby, tout est goode !',
  feedback_user_lost: 'You need to brush up on your Ruby lectures to be goode at it.',
  position_x: 2,
  position_y: 20,
  lesson_id: third_lesson.id,
  status: "core_four",
  open_dialog1: 'Hello newbie, I will teach you the basics of Ruby here ! Goode pour toi ? ',
  open_dialog2: 'Hum yes...it is goode..? By the way, what is the secret of your perfect tan ? ',
  open_dialog3: 'A bit of surfing and a lot of Ruby programming, let us battle now ! '
)

file = File.open(Rails.root.join("app/assets/images/timstatic.png"))
tim.avatar_map.attach(io: file, filename: "teacher.png", content_type: "image/png")
file = File.open(Rails.root.join("app/assets/images/timstatic.png"))
tim.avatar_battle.attach(io: file, filename: "teacher.png", content_type: "image/png")
tim.save!

hugo = Teacher.create!(
  name: 'Hugo',
  feedback_answer_perfect: 'Urgh... Great job...I guess.',
  feedback_answer_correct: 'I guess you got lucky this time.',
  feedback_answer_misleading: 'You really are trying my patience newbie...',
  feedback_answer_weird: '*Hugo starts cracking his knucles, you are in trouble*',
  feedback_intro: "You're in for a world of hurt newbie !!!",
  feedback_user_won: 'Pff... Whatever, you won, just let me go back to my rave now.',
  feedback_user_lost: 'You suck just as much as Bootstrap !!!',
  position_x: 28,
  position_y: 4,
  lesson_id: sixth_lesson.id,
  status: "core_four",
  open_dialog1: 'Damnit, they gave me that cursed Bootstrap class again, I hate my life !!! ',
  open_dialog2: 'Hmm... Hey there, are you ok ? ',
  open_dialog3: 'NO I AM NOT ! PREPARE TO SUFFER ! '
)

file = File.open(Rails.root.join("app/assets/images/hugostatic.png"))
hugo.avatar_map.attach(io: file, filename: "teacher.png", content_type: "image/png")
file = File.open(Rails.root.join("app/assets/images/hugostatic.png"))
hugo.avatar_battle.attach(io: file, filename: "teacher.png", content_type: "image/png")
hugo.save!

diane = Teacher.create!(
  name: 'Diane',
  feedback_answer_perfect: 'Amazing, you are my favorite student 💖',
  feedback_answer_correct: 'Good ! Be more specific next time 😊',
  feedback_answer_misleading: 'Unfortunately that is incorrect 😥',
  feedback_answer_weird: 'STOP MAKING FUN OF ME ! 💔',
  feedback_intro: "...",
  feedback_user_won: "💞 Congratulations, I'm so proud of you ! 💞",
  feedback_user_lost: "I'm really disappointed, but I know you will do better next time 🙏🏻",
  position_x: 10,
  position_y: 4,
  lesson_id: fourth_lesson.id,
  status: "core_four",
  open_dialog1: "💕 Hello student, it's really nice to meet you ! I'll teach you about OOP 💕 ",
  open_dialog2: "Hi Diane, what do you mean by OOP ? ",
  open_dialog3: "I mean OOP, like in 'I'M ABOUT TO WH-OOP YOUR BUTT' UwU "
)

file = File.open(Rails.root.join("app/assets/images/dianestatic.png"))
diane.avatar_map.attach(io: file, filename: "teacher.png", content_type: "image/png")
file = File.open(Rails.root.join("app/assets/images/dianestatic.png"))
diane.avatar_battle.attach(io: file, filename: "teacher.png", content_type: "image/png")
diane.save!

paul = Teacher.create!(
  name: 'Paul',
  feedback_answer_perfect: 'That answer goes in the Amazing table !',
  feedback_answer_correct: "SELECT * FROM answer WHERE correct.",
  feedback_answer_misleading: 'This is a one-to-many mistake relation.',
  feedback_answer_weird: 'I would have preferred if you pitched me a dog dating app...',
  feedback_intro: "...",
  feedback_user_won: "Congratulations student, you are now a database master !",
  feedback_user_lost: "The only table you've flipped is your desk... Try again !",
  position_x: 50,
  position_y: 9,
  lesson_id: fifth_lesson.id,
  status: "core_four",
  open_dialog1: "Oh no, don't tell me you're here to pitch me another animal dating app... ",
  open_dialog2: "Hmm no, I'm just here for the flashcard battle ! ",
  open_dialog3: "Oh wow, you had me scared for a sec ! I have questions in my database for you ! "
)

file = File.open(Rails.root.join("app/assets/images/paulstatic.png"))
paul.avatar_map.attach(io: file, filename: "teacher.png", content_type: "image/png")
file = File.open(Rails.root.join("app/assets/images/paulstatic.png"))
paul.avatar_battle.attach(io: file, filename: "teacher.png", content_type: "image/png")
paul.save!

boris = Teacher.create!(
  name: 'Boris',
  feedback_answer_perfect: "I guess this is an amazing answer ?",
  feedback_answer_correct: 'I just checked Kitt and it appears to be the correct answer.',
  feedback_answer_misleading: "Stack Overflow is telling me you're wrong kid.",
  feedback_answer_weird: 'You really disturbed my peaceful day for that ?',
  feedback_intro: "...",
  feedback_user_won: "Sooo...you won ? Congratulations, I guess I'm supposed to give you a plastic crown or something...",
  feedback_user_lost: "Apparently you lost... Please don't bother me again kid.",
  position_x: 45,
  position_y: 16,
  lesson_id: final_lesson.id,
  status: "final_boss",
  open_dialog1: 'Huh hello kid ? Who are you and what are you doing in my office ? ',
  open_dialog2: "Hi Boris, new student here ! I defeated the teachers so that makes the final boss ? ",
  open_dialog3: "Wait what ? I haven't coded in years ! I guess I'll just look through Kitt then... "
)

file = File.open(Rails.root.join("app/assets/images/borisstatic.png"))
boris.avatar_map.attach(io: file, filename: "teacher.png", content_type: "image/png")
file = File.open(Rails.root.join("app/assets/images/borisstatic.png"))
boris.avatar_battle.attach(io: file, filename: "teacher.png", content_type: "image/png")
boris.save!

puts 'Teachers created.'

puts 'Seeds finished !'

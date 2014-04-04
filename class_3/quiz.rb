puts "This is a Cold War quiz."

@Questions_Correct = []

quiz=[
	{
		question: "How many zones of occupation were Germany and Berlin broken into?",
		answer: "a",
			answer_choices: [
				"a. 4", 
				"b. 8",
				"c. 10",
				"d. 12"
			]
	},
	{	
		question: "Who was the United States President at the start of the Cold War?",
		answer: "b",
			answer_choices: [
				"a. FDR",
				"b. Harry Truman",
				"c. JFK",
				"d. Ronald Regan",
			]
	},
	{
		question: "What is containment?",
		answer: "d",
			answer_choices: [
				"a. blocking trade",
				"b. deporting immigrants",
				"c. giving money to communists",
				"d. stopping the spread of communism",
			]
	},
	{
		question: "The General Assembly of the United Nations has how many members?",
		answer: "a",
			answer_choices:[
				"a. all nations in the U.N.",
				"b. 5 rotating members",
				"c. only NATO countries",
				"d. the Soviet Union",
			]
	},
	{
		question: "The Prague Spring was?",
		answer:	"c",		
			answer_choices:[
				"a. really hot",
				"b. resisted in Poland",
				"c. an attempt at political reforms",
				"d. the election of Stalin",
			]
	},
	{
		question: "The Berlin Airlift provided?",
		answer: "a",
			answer_choices:[
				"a. supplies to West Berlin",
				"b. supplies to East Berlin",
				"c. a really cool option for sky-divers",
				"d. something for JFK to talk about",
			]
	},		
	{
		question: "Which conference set up the occupation of Germany?",
		answer: "b",
			answer_choices:[
				"a. Tehran",
				"b. Potsdam",
				"c. New Jersey",
				"d. London",
			]
	},
	{
		question: "What is the current European economic community called?",
		answer: "d",
			answer_choices:[
				"a. the European Union",
				"b. the League of Nations",
				"c. who cares it's Europe",
				"d. the European Coal and Steel Society",
			]		
	},
	{
		question: "What country is know for it's chocolate?",
		answer: "c",
			answer_choices:[
				"a. Germany",
				"b. Switzerland",
				"c. Italy",
				"d. France",
			]
	},		
	{
		question: "Which of these is a Scandinavian country?",
		answer: "a",
			answer_choices:[
				"a. Denmark",
				"b. Canada",
				"c. Italy",
				"d. Albania",
			]
	}

]
	quiz.each do |current_question| 
		puts current_question[:question]
		puts current_question[:answer_choices]


		user_choice = gets.chomp
			if user_choice == current_question[:answer]
			@Questions_Correct.push(1)
		end

				
	end

puts "You got #{@Questions_Correct.length} right!"

		
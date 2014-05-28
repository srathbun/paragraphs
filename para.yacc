%{
var words = 0,
	sentences = 0,
	paragraphs = 0,
	blanks = 0;
%}

%start paragraphs
%flex

%right WORD sentence paragraph
%%

paragraphs  : paragraphs paragraph  
			| paragraph
			;

paragraph   : paragraph BLANK { sentences +=1; paragraphs += 1; }
			| sentence 
			| EOF { 
				paragraphs += 1;
				printResults();
			}
			;

sentence    : sentence WORD
			| WORD
			| '.' { sentences += 1; }
			;
%%

var printResults = function() {
	console.log("You have:");
	console.log("words: "+words);
	console.log("blank lines: "+blanks);
	console.log("sentences: "+sentences);
	console.log("paragraphs: "+paragraphs);
};

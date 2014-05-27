%start paragraphs
{%
var words = 0,
	sentences = 0,
	paragraphs = 0;
%}

%%

paragraphs  : paragraphs paragraph
			| paragraph
			| EOF
			;

paragraph   : paragraph sentence BLANK
			| sentence
			;

sentence    : sentence WORD '.'
			| WORD
			;
%%

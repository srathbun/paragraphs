%%
[^ \n.]+  { words += 1; return 'WORD'; }
\n\n   { blanks += 1; return 'BLANK'; }
'.'  { return '.'; }
\s+  { /* ignore whitespace */ }
<<EOF>> { return 'EOF'; }
%%

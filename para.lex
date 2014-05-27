%%
\w+  { return 'WORD'; }
^$   { return 'BLANK'; }
\s+  { /* ignore whitespace */ }
%%

# compiler-design-code

<h2>1) lex program to count number of vowels and consonants </h2>
<ol> 
  <li> <strong>Rule 1<strong> <br>[aeiouAEIOU]      { vowels++; } </li>
<li> <strong>Rule 2<strong><br>[a-zA-Z]         { consonants++; } </li>
<li> <strong>Rule 3<strong><br>.|\n             return 0; </li>

</ol>

<h2>2) lex program to count number of charecter , words , lines </h2>
<p> yyin=fopen("sample.txt","r"); // here we take input from a file </p>
<ol> 
  <li> <strong>Rule 1<strong> <br>\n        { nline++; nchar++; }</li>
<li> <strong>Rule 2<strong><br>[^ \t\n]+ { nword++; nchar += yyleng; } </li>
<li> <strong>Rule 3<strong><br>.         { nchar++; } </li>

</ol>
<h2>3) lex program to count number of positive , negative , fractional numbers</h2>
<ol> 
  <pre> [\t]      ;
[\n]      return 0;
([0-9]+)    { pos_num++; }
-([0-9]+)   { neg_num++; }

([0-9]*\.[0-9]+)    |
([0-9]+\/[0-9]+)    { pos_frac++; }

-([0-9]*\.[0-9]+)   |
-([0-9]+\/[0-9]+)   { neg_frac++; } </pre>

</ol>

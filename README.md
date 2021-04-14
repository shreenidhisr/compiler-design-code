# compiler-design-code

<h2>1) lex program to count number of vowels and consonants </h2>
<ol> 
  <li> <strong>Rule 1<strong> <br>[aeiouAEIOU]      { vowels++; } </li>
<li> <strong>Rule 2<strong><br>[a-zA-Z]         { consonants++; } </li>
<li> <strong>Rule 3<strong><br>.|\n             return 0; </li>

</ol>

<div><p>Ruby’s <code class="inline">String</code> class has over <a href="http://www.ruby-doc.org/core-2.1.3/String.html">100 public methods</a>&nbsp;that give Ruby programmers a remarkable power to process, manipulate, and transform textual data. About a dozen of those <code class="inline">String</code> methods use <strong>reg</strong>ular <strong>ex</strong>pressions (regex) in order to allow for high-powered string matching.</p>
<p>An example of low-powered string matching is when you use your browser’s search (Ctrl-F on a Ubuntu/Linux) for a specific word, say, your own name. What if you wanted to search your browser for anything that matches the pattern for a social security number or a credit card number? For that, you’d use regular expressions.</p>
<h4>Objectives</h4>
<ol>
<li><p>Do <a href="https://regexone.com/">this tutorial</a> to get familiar with pattern matching using regex.</p>
</li>
<li><p>Learn how to use <a href="http://rubular.com">http://rubular.com</a>&nbsp;to help you code your regex. </p>
</li>
<li><p>Figure out how <code class="inline">gsub</code> and the match operator <code class="inline">=~</code> are used in <code class="inline">regex_example.rb</code>. Remember to check the docs to see what <code class="inline">gsub</code> and <code class="inline">=~</code> will return.</p>
</li>
<li><p>Complete the exercises given in <code class="inline">regex_exercise.rb</code>. The questions are listed below as well:</p>
<p>a. Write a method named <code class="inline">"hide_serial(string)"</code> that accepts a string as an argument that uses the regex for <code class="inline">"123456-12-1234"</code> and substitute the first two sections with <code class="inline">"X"</code> to get <code class="inline">"XXXXXX-XX-1234"</code>.</p>
<p>b. Write a method named <code class="inline">"hide_digits(string)"</code> that accepts a string as an argument that substitutes the digits in the sentence <code class="inline">"You have 100 dollars"</code> with <code class="inline">"-"</code> to get <code class="inline">"You have --- dollars"</code>.</p>
<p>c. Write a method named <code class="inline">"hide_last_four(string)"</code> that accepts a string as an argument that substitute the last 4 digits with <code class="inline">"*"</code> in this string: <code class="inline">"12-34-5678, 90-80-7012, 45-65-1234"</code> to get <code class="inline">"12-34-****, 90-80-****, 45-65-****"</code>.</p>
</li>
</ol>
<h4>Further reading:</h4>
<ol>
<li><p><a href="http://www.ruby-doc.org/docs/ProgrammingRuby/html/language.html#UJ">The Pickaxe Guide</a>&nbsp;</p>
</li>
<li><p><a href="http://www.bluebox.net/about/blog/2013/02/using-regular-expressions-in-ruby-part-1-of-3/">ReGex Overview</a> </p>
</li>
</ol>
</div>

<div><p>In this challenge, you will be sorting an array of words typed into the command line. It should work something like this:</p>
<pre><code class="bash hljs ruby">$ ruby dictionary_sort.rb
&gt; Type a <span class="hljs-symbol">word:</span>
&gt; hyperbole
&gt; Type another word (<span class="hljs-keyword">or</span> press enter to finish):
  &gt; fantasmagoria
&gt; Type another word (<span class="hljs-keyword">or</span> press enter to finish):
  &gt; xanthate
&gt; Type another word (<span class="hljs-keyword">or</span> press enter to finish):
  &gt; polysaccharide
&gt; Type another word (<span class="hljs-keyword">or</span> press enter to finish):
  &gt;
&gt; Congratulations! Your dictionary has <span class="hljs-number">4</span> <span class="hljs-symbol">words:</span>
&gt; fantasmagoria
&gt; hyperbole
&gt; polysaccharide
&gt; xanthate</code></pre>
<p>Make sure to test your program thoroughly, both internally and from the user interface.</p>
<p><cite>Source: Chris Pine,&nbsp;<a href="http://pine.fm/LearnToProgram/">Learn To Program</a></cite></p>
<h3>Tasks</h3>
<h4>1. Store user input</h4>
<p>Write a program that asks the user to type as many words as they want (one word per line, continuing until they press <code class="inline">Enter</code> on an empty line).</p>
<p>It should store those words in an array.</p>
<h4>2. Sort and print</h4>
<p>When the user presses <code class="inline">Enter</code> on an empty line, it should repeat the entered words back (print them to the console) in alphabetical order.</p>
<p>It should ignore case for sorting, e.g.&nbsp;<code class="inline">apple</code> should come before <code class="inline">Bear</code>, and it should still print out the words in their original case.</p>
<h3>Debugging: Printing to Log</h3>
<p><code class="inline">puts</code> or <code class="inline">p</code> is the <code class="inline">Ruby</code> method commonly used by developers to print something to log. When confronted with total confusion about how parts of the code are interacting with each other, a developer will place these statements everywhere to see what methods are called and what’s happening inside each method.</p>
<p>This isn’t cheating, this isn’t giving up, this isn’t something beginners do. In the Real World, nobody cares if you debug a problem using <code class="inline">puts</code> or <code class="inline">p</code>, they only care that you debugged the problem.</p>
  <h4>As you’re coding, ask yourself …</h4>
  <p><em>What happens if the user inputs a number or an empty string?</em></p>
  <p>####
  External Resources</p>
  <p><em>Learn about various <a href="http://en.wikipedia.org/wiki/Sorting_algorithm">sorting algorithm</a>&nbsp;</em></p>
  </div>

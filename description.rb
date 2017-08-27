<div><p>Children who are learning arithmetic sometimes play a number-guessing game:</p>
<ul>
<li>“I’m thinking of a number between 1 and 100. Can you guess it?”
</li>
<li><em>“Is the number less than 50?”</em>
</li>
<li>“Yes.”
</li>
<li><em>“Is the number less than 25?”</em>
</li>
<li>“No.”
</li>
</ul>
<p>And so on, halving the interval at each step until only one number is left.</p>
<p>This technique is known colloquially as the binary chop. It is a well-known technique for searching through a collection. Let’s build it in Ruby.</p>
<p>Beware that this exercise is harder than it looks. Jon Bentley, in his book Programming Pearls, reports that 90% of professional programmers cannot write a proper implementation of binary search in two hours, and Donald Knuth, in the second volume of his book The Art of Computer Programming, reports that though the first binary search was published in 1946, the first bug-free binary search wasn’t published until 1962.</p>
<p>If you want to read more, check out the <a href="http://en.wikipedia.org/wiki/Binary_search_algorithm">Wikipedia article</a>.</p>
<p><cite>Source: <a href="http://pine.fm/LearnToProgram/">Chris Pine, Learn To Program</a>&nbsp;|&nbsp;<a href="http://programmingpraxis.com/2009/03/23/binary-search/">Programming Praxis</a></cite></p>
<h3>Tasks</h3>
<h4>Write the algorithm</h4>
<p>Your first task is to write a method that takes a target number and a <strong>sorted</strong> array of numbers in non-decreasing order and returns either the position of the number in the array, or <code class="inline">-1</code> to indicate the target number is not in the array. For instance, <code class="inline">binary_search(32, [13, 19, 24, 29, 32, 37, 43])</code> should return <code class="inline">4</code>, since <code class="inline">32</code> is the fourth element of the array (counting from zero). Start with pseudocode! What are the steps? What’s the end case? Spell it out before jumping into Ruby. You can’t use <code class="inline">Array#index</code>. Sorry. The point is to build a binary search from scratch, not use Ruby’s built in search methods. Also, don’t use <code class="inline">Array#.include?</code>.</p>
<p>HINT: Here’s an implementation of binary search in <a href="http://codereview.stackexchange.com/questions/5363/efficient-binary-search">JavaScript</a>. You can start creating your pseudocode with this as a model if you like.</p>
<h4>Ensuring accuracy</h4>
<p>Write a suitable test program that shows the accuracy of your binary search method. Test your method against a variety of inputs. Does it always return the correct answer?</p>
<p>A basic testing program could look like this (yours should test more examples):</p>
<pre><code class="ruby hljs">test_array = (<span class="hljs-number">100</span>..<span class="hljs-number">200</span>).to_a
puts binary_search(<span class="hljs-number">135</span>, test_array) == <span class="hljs-number">35</span>
<span class="hljs-comment"># =&gt; true</span>

test_array = [<span class="hljs-number">13</span>, <span class="hljs-number">19</span>, <span class="hljs-number">24</span>, <span class="hljs-number">29</span>, <span class="hljs-number">32</span>, <span class="hljs-number">37</span>, <span class="hljs-number">43</span>]
puts binary_search(<span class="hljs-number">35</span>, test_array) == -<span class="hljs-number">1</span>
<span class="hljs-comment"># =&gt; true</span></code></pre>
</div>

<div id="challenge-instructions"><h3>Looping: for</h3><div><p>At times we may not need to use a <code class="inline">while</code> or <code class="inline">until</code> loop, especially when you are given a specific range of numbers. For example, we would like to print out numbers from 1 to 10. Instead of using a <code class="inline">while</code> loop, we can use a <code class="inline">for</code> loop. For example,</p>
<pre><code class="hljs ruby"><span class="hljs-keyword">for</span> i <span class="hljs-keyword">in</span> <span class="hljs-number">1</span>..<span class="hljs-number">10</span>

puts <span class="hljs-string">"This number is <span class="hljs-subst">#{i}</span>"</span>

<span class="hljs-keyword">end</span></code></pre>
<p>Notice that <code class="inline">for</code> will always be followed by an <code class="inline">end</code>, and anything in between the <code class="inline">for</code> and <code class="inline">end</code> is a code block. The line <code class="inline">i in 1..10</code> means that we want <code class="inline">i</code> to be values 1, 2, 3, …, 10. When the <code class="inline">for</code> loop starts, <code class="inline">i</code> will start at the value 1 since we have indicated 1 to be the starting point. After running the code block (<code class="inline">puts "This number is #{i}"</code>), <code class="inline">i</code> then becomes 2, 3, and so on so forth. The <code class="inline">for</code> loop with terminate after <code class="inline">i</code> becomes 10. </p>
<p>Note that the two dots <code class="inline">..</code> is a range operator. Writing <code class="inline">1..10</code> will create a range from 1 to 10, inclusive. Run the code in <code class="inline">example.rb</code>. Feel free to change the values 1 and 10 to test your understanding.</p>
<h4>Exercise 1</h4>
<p>Previously you have used a <code class="inline">while</code> loop to find the sum from 1 to a given number. Instead of using <code class="inline">while</code>, write a method call <code class="inline">sum_to</code> which takes in an integer as its argument. In the method, use a <code class="inline">for</code> loop and the assignment operator <code class="inline">+=</code> to find the sum of 1 to the given integer. For example, <code class="inline">sum_to(10)</code> should return the value 55.</p>
<h4>Exercise 2</h4>
<p>In the challenge <a href="https://code.nextacademy.com/courses/web-development-bootcamp/challenges/integers-displaying-triangles">“Displaying Triangles”</a>, you have managed to draw an upleft triangle and an downleft triangle. The challenge is now this: using <code class="inline">for</code> loops, write a method <code class="inline">diamond</code> that takes in an integer and a character as its arguments. The output should be diamond. An example is as follows:</p>
<pre><code class="hljs ruby">diamond(<span class="hljs-number">5</span>, <span class="hljs-string">"*"</span>):

  *
***
*****
*******
*********
*******
*****
***
*</code></pre>
<p>Remember to think in bite-size pieces. Since you are able to draw an upleft and downleft triangle, figure out how to an upright and downright triangle. Then think of how you can combine these 4 shapes together to display a diamond.</p>
<h4>Exercise 3 (Optional)</h4>
<p>Finally, write a method that outputs a hollow diamond. An example is as follows:</p>
<pre><code class="hljs ruby">hollow diamond(<span class="hljs-number">5</span>, <span class="hljs-string">"*"</span>):

  *
* *
*   *
*     *
*       *
*     *
*   *
* *
*</code></pre>
</div><div class="checkbox"></div></div>

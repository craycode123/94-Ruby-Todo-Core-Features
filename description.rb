<div><p>Since we love coding, we can’t wait to tell the whole world how much we love coding. So we decided to write a programme that prints “I love coding!” <strong>5 times</strong>. Perhaps we could do it this way:</p>
  <pre><code class="hljs ruby">puts <span class="hljs-string">"I love coding!"</span>
  puts <span class="hljs-string">"I love coding!"</span>
  puts <span class="hljs-string">"I love coding!"</span>
  puts <span class="hljs-string">"I love coding!"</span>
  puts <span class="hljs-string">"I love coding!"</span></code></pre>
  <p>The code above is cumbersome and, as you may have noticed, repetitive. It’s just copy-and-pasting, but it’s bad code! </p>
  <p>The way we can improve the code is by using <strong>loops</strong> so that we can repeat code without repeating ourselves. This is a Ruby concept called <strong>DRY - DO NOT REPEAT YOURSELF</strong>. </p>
  <p>There are various types of loops in Ruby, <code class="inline">for</code>, <code class="inline">while</code>, <code class="inline">until</code>. In this challenge, we will discuss the <code class="inline">while</code> and <code class="inline">until</code> loop. </p>
  <hr class="thin">
  <h4>Example 1: using <code class="inline">while</code></h4>
  <p>We can refactor the code above as follows:</p>
  <pre><code class="hljs ruby">count = <span class="hljs-number">0</span>

  <span class="hljs-keyword">while</span> count &lt; <span class="hljs-number">5</span>
  puts <span class="hljs-string">"I love coding!"</span>
  count += <span class="hljs-number">1</span>
  <span class="hljs-keyword">end</span></code></pre>
  <p>Let’s translate this code to plain english.</p>
  <blockquote><p>While the count is less than 5, puts “I love coding!”</p>
  </blockquote>
  <p>Let’s dissect the code</p>
  <blockquote><p>We assign 0 to the variable <code class="inline">count</code> because we haven’t start counting yet
  We start a <code class="inline">while</code> loop which will run the <strong>code block</strong> between <code class="inline">while</code> and <code class="inline">end</code> until the given condition is <strong>false</strong>.
    So long the count is NOT 5, it will puts <code class="inline">I love coding!</code>
  After every <code class="inline">I love coding!</code>, it will add the count by 1. The <code class="inline">+=</code> is called an <strong>assignment operator</strong>, which is equivalent to <code class="inline">count = count + 1</code>.</p>
  </blockquote>
  <p>A condition to stop the loop is essential for any <code class="inline">while</code> loop, otherwise we will get stuck in an infinite loop where the programme will keep running and take up unnecessary computer resources. Generally, when we write a <code class="inline">while</code> loop, it will look something as follows:</p>
  <pre><code class="hljs ruby"><span class="hljs-keyword">while</span> &lt;write-your-condition-statement-here&gt;
  <span class="hljs-comment"># do something repetitive</span>
  <span class="hljs-keyword">end</span></code></pre>
  <p>The <code class="inline">while</code> loop will continue if the conditional statement evaluates to true.</p>
  <p>Here is another example, run the code in <code class="inline">example1.rb</code> to see how it works.</p>
  <hr class="thin">
  <h4>Example 2: assignment operator</h4>
  <p>Let’s now look at another example. We would like to use a <code class="inline">while</code> loop to get the following output;</p>
  <pre><code class="hljs ruby">puts <span class="hljs-string">"This is the number 1"</span>
  puts <span class="hljs-string">"This is the number 2"</span>
  puts <span class="hljs-string">"This is the number 3"</span>
  puts <span class="hljs-string">"This is the number 4"</span>
  puts <span class="hljs-string">"This is the number 5"</span></code></pre>
  <p>We can refactor the code above as follows (the code can also be found in <code class="inline">example2.rb</code>):</p>
  <pre><code class="hljs ruby">i = <span class="hljs-number">1</span> <span class="hljs-comment"># a base case </span>

  <span class="hljs-keyword">while</span> i &lt; <span class="hljs-number">6</span>
  puts <span class="hljs-string">"This is the number <span class="hljs-subst">#{i}</span>"</span>
  i += <span class="hljs-number">1</span>
  <span class="hljs-keyword">end</span></code></pre>
  <p>Let’s dissect this code:</p>
  <blockquote><p>In line 1, we assigned the value 1 to an integer <code class="inline">i</code>. We can think of this as a base case.
    Now, start a <code class="inline">while</code> loop that will keep running the code block given as long as <code class="inline">i &lt; 6</code>.
    In the code block, we will first display the sentence <code class="inline">"This is the number #{i}"</code>, and then increment <code class="inline">i</code> by 1.
    When <code class="inline">i = 6</code>, the <code class="inline">while</code> loop will be terminated since <code class="inline">i</code> is no longer less than 6. </p>
  </blockquote>
  <p>If you comment out the line <code class="inline">i += 1</code> and run the code, you will notice that your programme will keep running. </p>
  <p>Why? Because <code class="inline">i</code> does not increase by one each time the loop happens and thus it will not ever reach <code class="inline">6</code>!</p>
  <p>To stop a programme from running, press <strong>Ctrl-C</strong> in your terminal. </p>
  <hr class="thin">
  <h4>Example 3: until loops</h4>
  <p>Besides the <code class="inline">while</code> loop, Ruby also has a similar loop called <code class="inline">until</code> that essentially does the same thing as a <code class="inline">while</code> loop, but the way the condition is set up is different. </p>
  <p>Instead of using <code class="inline">while</code>, we will use <code class="inline">until</code>. Let’s puts <code class="inline">I love coding!</code> 5 times again! </p>
  <p>Pay attention to how the condition is written:</p>
  <pre><code class="hljs ruby">count = <span class="hljs-number">5</span>

  <span class="hljs-keyword">until</span> count == <span class="hljs-number">0</span>
  puts <span class="hljs-string">"I love coding!"</span>
  count -= <span class="hljs-number">1</span>
  <span class="hljs-keyword">end</span></code></pre>
  <p>Let’s translate this code to plain english.</p>
  <blockquote><p>Until count is 0, puts “I love coding!”</p>
  </blockquote>
  <p>Let’s dissect the code</p>
  <blockquote><p>We assign 5 to the variable <code class="inline">count</code> because we want the statement 5 times.
    We start a <code class="inline">until</code> loop which will run the <strong>code block</strong> between <code class="inline">until</code> and <code class="inline">end</code> until the given condition is <strong>true</strong>.
    So long the count is NOT 0, it will puts <code class="inline">I love coding!</code>
  After every <code class="inline">I love coding!</code>, it will add the count by 1. The <code class="inline">-=</code> is called an <strong>assignment operator</strong>, which is equivalent to <code class="inline">count = count - 1</code>.</p>
  </blockquote>
  <p>Now give <code class="inline">example3.rb</code> a try!</p>
  <hr class="thin">
  <h4>Exercise 1:</h4>
  <p>In <code class="inline">exercise1.rb</code>, write a method call <code class="inline">sum_to</code> which takes in an integer as its argument. </p>
  <p>In the method, use a <code class="inline">while</code> loop and the assignment operator <code class="inline">+=</code> to find the sum of 1 to the given integer. For example, <code class="inline">sum_to(10)</code> should return the value 55.</p>
  <hr class="thin">
  <h4>Exercise 2:</h4>
  <p>In <code class="inline">exercise2.rb</code>, write a method <code class="inline">run</code> that does not take in any argument. In the method, write code for the following scenario: </p>
  <ol>
  <li>Prompt the user for the current room temperature in degree Celcius and then store it in a variable called “room_temperature”
  </li>
  </ol>
  <p>2) Create a <code class="inline">while</code> loop to continuously prompt the user for the current room temperature. In the loop, do the following:</p>
    <ul>
    <li><p><strong>If</strong> the temperature is below 20 degree celsius, do the following:
        output “Air Conditioner is on”
      prompt the user again for the current room temperature</p>
      </li>
      <li><p><strong>Else</strong> print “Air Conditioner is off” and terminate the “while” loop.</p>
      </li>
      </ul>
      <p><strong>Tip:</strong> Remember that <code class="inline">gets.chomp</code> returns a string even if you typed in a number. How can you convert a string into an integer?</p>
      <hr class="thin">
      <h4>Exercise 3:</h4>
      <p>In <code class="inline">exercise3.rb</code>, instead of using <code class="inline">while</code>, use <code class="inline">until</code> to code the air cond scenario. </p>
      <hr class="thin">
      <blockquote><h4>Interesting stuff to find out</h4>
      <p>You can actually write your <code class="inline">while</code> and <code class="inline">until</code> loop differently. Check out the modifiers from here: <a href="http://devdocs.io/ruby~2.4/syntax/control_expressions_rdoc#label-while+Loop" target="_blank">Ruby modifier <code class="inline">while</code> and <code class="inline">until</code></a></p>
      </blockquote>
      <hr class="thin">
      </div>

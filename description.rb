<div><p>It will be getting a bit math-sy for the next few challenges. But bear with us! You will soon see how these mathematical concepts are actually useful in real life and how people use code to apply these concepts!</p>
<p>Let’s start with the <a href="http://en.wikipedia.org/wiki/Fibonacci_number">Fibonacci sequence</a>, which is one of the most beautiful sequence in mathematics. Check out <a href="https://www.youtube.com/watch?v=wTlw7fNcO-0">this video</a> to see where Fibonacci numbers appear in real life!</p>
<p>In this challenge, we will be using recursion again. You will be implementing two versions of the Fibonacci sequence: an iterative version and a recursive version. We’ll compare the performance of each and discuss potential improvements. They will be methods called <code class="inline">fib_iterative</code> and <code class="inline">fib_recursive</code>, respectively, which take an integer <code class="inline">n</code> as input and returns the <code class="inline">n</code>th Fibonacci number.</p>
<p>Each version will work as follows:</p>
<pre><code class="ruby hljs"><span class="hljs-function"><span class="hljs-keyword">def</span> <span class="hljs-title">fib_iterative</span><span class="hljs-params">(n)</span></span>
<span class="hljs-comment"># returns the nth Fibonacci number</span>
<span class="hljs-keyword">end</span>

fib_iterative(<span class="hljs-number">0</span>) = <span class="hljs-number">0</span>
fib_iterative(<span class="hljs-number">1</span>) = <span class="hljs-number">1</span>
fib_iterative(<span class="hljs-number">2</span>) = <span class="hljs-number">1</span>
fib_iterative(<span class="hljs-number">3</span>) = <span class="hljs-number">2</span>
fib_iterative(<span class="hljs-number">4</span>) = <span class="hljs-number">3</span>
fib_iterative(<span class="hljs-number">5</span>) = <span class="hljs-number">5</span>
<span class="hljs-comment"># etc_</span></code></pre>
<p>Although writing a method to return Fibonacci numbers might seem contrived, we work through it because the rules of the system are easy to model in code. It helps us understand what a makes a good model or a bad model, and also different ways to model the same system, e.g., even though, functionally, an iterative and recursive solution produce the same output given the same input, they perform very differently.</p>
<h3>Tasks</h3>
<h4>1. Iterative Version</h4>
<p>Write an <strong>iterative</strong> method to calculate Fibonacci numbers called <code class="inline">fibonacci_iterative</code>. This means you should use looping methods like <code class="inline">Fixnum#times</code>, <code class="inline">Fixnum#upto</code>, <code class="inline">Array#each</code>, etc.</p>
<h4>2. Recursive Version</h4>
<p>Write a <strong>recursive</strong> method to calculate Fibonacci numbers called <code class="inline">fibonacci_recursive</code>. This means you should not use <em>any</em> loops, but instead calling the same function.</p>
<h3>As you’re coding, ask yourself:</h3>
<ul>
<li>What kind of values can my method take as its input/arguments?
</li>
<li>What kind of values can my method return?
</li>
<li>Are there any tradeoffs I’m making? Memory versus speed? Readability versus speed? On what side of those tradeoffs am I falling and why? What might my code look like if I fell on the other side of those tradeoffs?&nbsp;
</li>
</ul>
<h3>After you’re done, ask yourself:</h3>
<ul>
<li>Are there any method arguments that don’t make sense? What should my program do in that situation? “Ignore them” is one valid answer - what are others?
  </li>
  <li>How large can my input be before it takes too long for my program to run? How long is “too long?”
  </li>
  </ul>
  <hr class="thick">
  <h3>Context and History</h3>
  <h4>Math!</h4>
  <p>Here’s how we’d define the Fibonacci sequence, mathematically.</p>
  <p><img src="http://s.wordpress.com/latex.php?latex=%255Cmathrm%257Bfib%257D%255Cleft(n%255Cright)%2520%253D%250A%2520%2520%2520%2520%2520%2520%255Cbegin%257Bcases%257D%250A%2520%2520%2520%2520%2520%2520%2520%25200%2520%2526%2520%255Cmbox%257Bif%2520%257D%2520n%2520%253D%25200%2520%255C%255C%250A%2520%2520%2520%2520%2520%2520%2520%25201%2520%2526%2520%255Cmbox%257Bif%2520%257D%2520n%2520%253D%25201%2520%255C%255C%250A%2520%2520%2520%2520%2520%2520%2520%2520%255Cmathrm%257Bfib%257D%255Cleft(n-1%255Cright)%2520%252B%2520%255Cmathrm%257Bfib%257D%255Cleft(n-2%255Cright)%2520%2526%2520%255Cmbox%257Botherwise%257D%250A%2520%2520%2520%2520%2520%2520%255Cend%257Bcases%257D&amp;bg=ffffff&amp;fg=000000&amp;s=0" alt=""></p>
  <h4>Where do Fibonacci numbers come from?</h4>
    <p>The Fibonacci sequence was named after Leonardo of Pisa, also known as Fibonacci, who created an idealized model of <a href="http://www.mathscareers.org.uk/article/the-mathematics-of-rabbit-island/">how rabbits breed</a>. His greatly simplified model worked as follows:</p>
    <ol>
    <li>At the beginning of the first month we start with a pair of newborn rabbits, one male and one female
    </li>
  <li>Rabbit pairs can’t mate for their first month of life, but can starting at the end of their first month and do so at the end of every month thereafter
  </li>
  <li>A pregnant rabbit takes one month to give birth and always gives birth to a new male/female rabbit pair
  </li>
  <li>Rabbits never die
  </li>
  </ol>
<p>He then asked, “How many pairs of rabbits will there be after a year?” In the first month there is 1 pair. They mate at the end of their first month, but there is still only 1 pair. They give birth to a new pair at the end of their second month, at which point the original pair mates again. There are two pairs of rabbits, now.</p>
<p>At the end of the third month, the original pair gives birth again, so there are three pairs. The first pair and second pair can now both mate, and do, so at the end of the fourth month they give birth and there are five pairs. And so on.</p>
<p>In other words, at the end of each month the set of rabbits that can breed are all the rabbits that have bred before plus the rabbit pairs born at the end of the last month.</p>
<p>The sequence goes 1, 1, 2, 3, 5, 8, 13, etc. This sequence is called the “Fibonacci sequence” and the N<sup>th</sup> item in this sequence - the number of rabbits alive after N months in Fibonacci’s rabbit model - is called the N<sup>th</sup> Fibonacci number.</p>
<p>We can restate the rules like this:</p>
<pre><code class="ruby hljs">rabbits_at_month(<span class="hljs-number">1</span>) = <span class="hljs-number">1</span>
rabbits_in_month(<span class="hljs-number">2</span>) = <span class="hljs-number">1</span>
rabbits_in_month(n) = rabbits_in_month(n-<span class="hljs-number">1</span>) + rabbits_on_month(n-<span class="hljs-number">2</span>)</code></pre>
<p>We’ve defined the rules of a system, here, and you write Ruby code which models that system. I give you some number of months, <code class="inline">n</code>, and your Ruby program gives me the number of rabbits alive after <code class="inline">n</code> months.</p>
<h3>External Resources</h3>
<ul>
<li><a href="http://en.wikipedia.org/wiki/Fibonacci_number">Fibonacci number on Wikipedia</a>
</li>
<li>Doodling in Math: Spirals, Fibonacci, and Being a Plant: <a href="http://www.youtube.com/watch?v=ahXIMUkSXX0">Part 1</a>, &nbsp;<a href="http://www.youtube.com/watch?v=lOIP_Z_-0Hs">Part 2</a>, and&nbsp;<a href="http://www.youtube.com/watch?v=14-NdQwKz9w">Part 3</a>
</li>
</ul>
</div>

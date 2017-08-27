<div><p>We’re going to write a Ruby method <code class="inline">factorial</code> to compute the <a href="http://en.wikipedia.org/wiki/Factorial">factorial</a>&nbsp;of an integer. Here’s an example of how a factorial looks like:</p>
<pre><code class="ruby hljs"><span class="hljs-number">1</span>! = <span class="hljs-number">1</span>
<span class="hljs-number">2</span>! = <span class="hljs-number">2</span> x <span class="hljs-number">1</span>
<span class="hljs-number">3</span>! = <span class="hljs-number">3</span> x <span class="hljs-number">2</span> x <span class="hljs-number">1</span>
<span class="hljs-number">4</span>! = <span class="hljs-number">4</span> x <span class="hljs-number">3</span> x <span class="hljs-number">2</span> x <span class="hljs-number">1</span></code></pre>
<p>If you prefer a more “mathsy” definition, here’s one: the <strong>factorial</strong> of a non-negative integer n,&nbsp;denoted n!, is the product of all positive integers less than n.</p>
<p>The formula for a factorial is given by: n! = n x (n-1) x (n-2) x … x 2 x 1.</p>
<p>The factorial function wasn’t pulled out of a mathematician’s hat - it has a very concrete meaning. For example, if you have 3 balls of different colours (red, green, blue), there are 3! = 6 ways to order those ball. See the picture below and check that there are really 6 ways to order the balls!</p>
<img style="display: block; margin-left: auto; margin-right: auto; width: 20%;" class="img-responsive" src="https://s3-ap-southeast-1.amazonaws.com/next-academy-learning-portal/static_assets/images/(public)+Permutations_RGB.svg.png"><p></p><p>In general, if you have a set of <strong>n&nbsp;things</strong> then there are <strong>n!&nbsp;ways</strong> to order those things.</p>
<p>By convention we define</p>
<img src="https://s.wordpress.com/latex.php?latex=%5Cbegin%7Baligned%7D%0A%20%20%20%20%20%200!%20%3D%201%0A%20%20%20%20%5Cend%7Baligned%7D&amp;bg=ffffff&amp;fg=000000&amp;s=0" alt="zero_factorial"><p>so that we can formally define the factorial as</p>
<img src="https://s.wordpress.com/latex.php?latex=n!%20%3D%0A%20%20%20%20%20%20%5Cbegin%7Bcases%7D%0A%20%20%20%20%20%20%20%201%20%26%20%5Cmbox%7Bif%20%7D%20n%20%3D%200%20%5C%5C%0A%20%20%20%20%20%20%20%20n%20%5Ccdot%20(n-1)!%20%26%20%5Cmbox%7Botherwise%7D%0A%20%20%20%20%20%20%5Cend%7Bcases%7D&amp;bg=ffffff&amp;fg=000000&amp;s=0" alt="factorial"><p>Basically, what’s happening in the above formula is this:</p>
<p>When <strong>n = 0</strong>, 0! = 1 (that’s the first iteration)</p>
<p>When <strong>n = 1</strong>, n! = 1! = &nbsp;1.</p>
<p>When <strong>n = 2</strong>, n! = 2! = 2 x (2 - 1)! = 2 x 1 = 2.</p>
<p>And so on so forth.&nbsp;</p>
<p>This definition is called <strong>recursive</strong> because we define the factorial of <strong>n</strong>&nbsp;in terms of the factorial of <strong>n-1</strong>. We stop at the <strong>base case</strong>, where n = 0. This is called a <a href="https://en.wikipedia.org/wiki/Recursion_termination">recursive termination</a>&nbsp;whereby a condition is met (here the condition is&nbsp;<img src="http://s.wordpress.com/latex.php?latex=n%2520%253D%25200&amp;bg=ffffff&amp;fg=000000&amp;s=0" alt="">) such that recursive algorithm can stop calling itself and start returning values.</p>
<h3>Tasks</h3>
<h4>1. Factorial, Iteratively</h4>
<p>Implement an iterative version of the factorial function called <code class="inline">factorial_iterative</code>. It should accept any non-negative integer as input. Don’t worry about handling bad input.</p>
<h4>2. Factorial, Recursively</h4>
<p>The focus this time around will be on understanding <a href="http://en.wikipedia.org/wiki/Recursion_%2528computer_science%2529">recursion</a>. This is your first run-in with <strong>recursion</strong>. It will seem strange at first, but you’ll quickly get used to it. Eventually, you’ll develop a kind of sixth sense and start saying things like, “This feels like a recursive problem.”</p>
<p>The most important thing to understand is that every recursive problem has some number of <strong>base cases</strong> , the condition that acts like the “kick” from Inception, bumping you back up ever-closer to where you came from. The base case is the part of the recursive problem that is not defined in terms of itself.</p>
<p>“What are the base cases?” should be the first question you ask every time you want to approach a problem recursively. Many recursive problems have only one base case, but others have more.</p>
<p><strong><em>Here is a short video about recursion</em> -&nbsp;<a href="https://vimeo.com/24716767">Ruby kickstart - Introduction to recursion</a>.</strong></p>
<p>Implement a recursive version of the factorial function called <code class="inline">factorial_recursive</code>. It should accept any non-negative integer as input. Don’t worry about handling bad input.</p>
<p>What’s the largest value your recursive factorial function can take as its input before it crashes? What does the error mean?</p>
</div>

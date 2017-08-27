<div><p>Any Ruby program you write is running inside another pieces of software: the Ruby interpreter. And that interpreter is itself running inside another piece of software: your operating system. These software layers “outside” your Ruby program are called <strong>the environment</strong> and there are many ways you can shuttle data between the environment and your program.</p>
<p>One way is via the <code class="inline">ARGV</code> constant which comes pre-defined in every Ruby program. It is an <code class="inline">Array</code> of <code class="inline">Strings</code> representing the command line arguments. Consider this simple program:</p>
<pre><code class="ruby hljs">puts <span class="hljs-string">"The command line arguments are:"</span>
puts ARGV.inspect
puts <span class="hljs-string">""</span></code></pre>
<p>The output looks like this:</p>
<pre><code class="bash hljs ruby">$ ruby argv.rb these are
The command line arguments <span class="hljs-symbol">are:</span>
[<span class="hljs-string">"these"</span>, <span class="hljs-string">"are"</span>]

$ ruby argv.rb these are the command line arguments
The command line arguments <span class="hljs-symbol">are:</span>
[<span class="hljs-string">"these"</span>, <span class="hljs-string">"are"</span>, <span class="hljs-string">"the"</span>, <span class="hljs-string">"command"</span>, <span class="hljs-string">"line"</span>, <span class="hljs-string">"arguments"</span>]

$ ruby argv.rb <span class="hljs-string">"this come in as one"</span> <span class="hljs-string">"this comes in as two"</span>
The command line arguments <span class="hljs-symbol">are:</span>
[<span class="hljs-string">"this come in as one"</span>, <span class="hljs-string">"this comes in as two"</span>]

$</code></pre>
<h3>Objectives</h3>
<h4>ARGV-ify Pig Latin</h4>
<p>Take your pig latin script and augment it so you can do the following:</p>
  <pre><code class="bash hljs ruby">$ ruby pig_latin.rb i love baseball
  i ovelay aseballbay
  $</code></pre>
  <p>Save your file under <code class="inline">pig_latin.rb</code> and check if it passes the tests!</p>
  <h4>ARGV-ify An ATM</h4>
  <p>Now that you are more acquainted with ARGV, let’s ARGV-ify an ATM. In your code, set your bank balance to be 10 dollars. Then using ARGV, allow the user to <em>add</em>, <em>withdraw</em>, and <em>check</em> bank balance. An example is as follows:</p>
  <pre><code class="bash hljs ruby">$ ruby atm.rb add <span class="hljs-number">10</span>
  Your balance is now <span class="hljs-number">20</span> dollars.</code></pre>
  <p>Note that you will now need to pass in two arguments in the command line. How would you do that? By the way, for this exercise, don’t worry about using classes. Just keep it simple.</p>
    <p>Save your file under <code class="inline">atm.rb</code> and check if it passes the tests!</p>
    <h4>ARGV-ify A Calculator</h4>
    <p>Make a simple calculator&nbsp;script that can perform the 4 basic math operations (+, -, x, /) and augment it so you can do the following:</p>
                                                                                          <pre><code class="bash hljs ruby">$ ruby calc.rb <span class="hljs-number">3</span> + <span class="hljs-number">4</span>
                                                                                          <span class="hljs-number">7</span></code></pre>
                                                                                          <p>Note, you’ll have to pass in the arguments in quotes because some characters have special meaning on the command-line. <code class="inline">*</code> for example means “every file in the current directory.” Probably not what you want to pass in as command-line arguments!</p>
                                                                                          <p><em>Extra Credit:</em> instead of building a simple calculator, build an <a href="https://en.wikipedia.org/wiki/Reverse_Polish_notation">RPN calculator</a>!</p>
                                                                                          </div>

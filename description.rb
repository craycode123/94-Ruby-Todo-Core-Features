<div><p>This is a small challenge to learn more about how blocks work in Ruby. Think about methods for a second. You call a method with data from the outside world - the method’s arguments - that the code inside your method can see and use.</p>
<p>If arguments are how we pass in data into our methods, blocks are how we pass in behavior. Think of them as a chunk of logic or a “brain” that your method can yield to.</p>
<p>Blocks can be passed into methods as a sort of “invisible argument”, like this:</p>
<pre><code class="ruby hljs"><span class="hljs-function"><span class="hljs-keyword">def</span> <span class="hljs-title">print_result</span></span>
block_execution = <span class="hljs-keyword">yield</span>
puts block_execution
<span class="hljs-keyword">end</span>

<span class="hljs-comment"># This will print out the number 9 to the console</span>
print_result { <span class="hljs-number">3</span> * <span class="hljs-number">3</span> }

<span class="hljs-comment"># Blocks can also be written using the do...end format</span>
print_result <span class="hljs-keyword">do</span>
  creature = <span class="hljs-string">"walrus"</span>
  <span class="hljs-string">"I am the <span class="hljs-subst">#{creature}</span>!"</span>
  <span class="hljs-keyword">end</span>

  <span class="hljs-comment"># Blocks have access to variables outside of their definition</span>

  shopping_list = [<span class="hljs-symbol">:milk</span>, <span class="hljs-symbol">:eggs</span>, <span class="hljs-symbol">:cheese</span>]
  print_result <span class="hljs-keyword">do</span>
    important_item = shopping_list.sample
    <span class="hljs-string">"I hope I don't forget <span class="hljs-subst">#{important_item}</span>!!!"</span>
    <span class="hljs-keyword">end</span></code></pre>
    <p>As you will notice, the call to <code class="inline">yield</code> in the method definition is where the block is executed.</p>
    <p>Let’s write something practical using blocks. A common scenario is wanting to benchmark some code. The “skeleton” involved in benchmarking doesn’t need to know what it’s benchmarking, but it should be responsible for keeping track of how long it’s running and other benchmarking-specific concerns.</p>
    <p>That is, it shouldn’t care whether we’re benchmarking a simple function to add two numbers or something much more complicated.</p>
    <p>Without blocks we might write code like this:</p>
    <pre><code class="ruby hljs">start_time = Time.now

    <span class="hljs-comment"># Calculate the 100th Fibonacci number</span>
    fibonacci(<span class="hljs-number">100</span>)

    end_time = Time.now

    <span class="hljs-comment"># This will return the difference in the timestamps in seconds</span>
    running_time = end_time - start_time

    puts <span class="hljs-string">"fibonacci(100) took <span class="hljs-subst">#{running_time}</span> seconds."</span></code></pre>
    <p>Let’s use blocks to create a <code class="inline">benchmark</code> method that can benchmark anything.</p>
    <h3>Task</h3>
    <h4>Write a&nbsp;<code class="inline">benchmark</code> method</h4>
    <p>Write a <code class="inline">benchmark</code> method which takes a block and returns the running time (in seconds) of that block. It should work like this:</p>
    <pre><code class="ruby hljs"><span class="hljs-comment"># Be careful, pasting this into IRB will take a long time to print.</span>
    <span class="hljs-comment"># It's a loooong string. :)</span>
    long_string = <span class="hljs-string">"apple"</span>*<span class="hljs-number">100000000</span>

    running_time = benchmark { long_string.reverse }

    puts <span class="hljs-string">"string.reverse took <span class="hljs-subst">#{running_time}</span> seconds to run"</span></code></pre>
    <h3>Resources</h3>
    <ul>
    <li><a href="http://stackoverflow.com/questions/3066703/blocks-and-yields-in-ruby">Blocks and yields in Ruby</a>
    </li>
    <li><a href="http://yehudakatz.com/2010/02/07/the-building-blocks-of-ruby/">The Building Blocks of Ruby</a>
    </li>
    </ul>
    </div>

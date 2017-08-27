<div><p>Once methods start taking more than one or two parameters, it can be difficult to remember their order.</p>
<p>When a method expects its arguments to arrive in a particular order, it creates a <em>dependency</em>. The rest of your code now must <em>know</em> about this order, and that makes it brittle. What happens if you want to add or remove a parameter? Now you have to find every place where you call that method and change the argument order accordingly.</p>
<p>A good design solution for this problem is to use <strong>named arguments</strong> . In Ruby, we can implement this design pattern by passing in a hash as a method argument, using the keys of the hash as names for the arguments, for example:  </p>
<pre><code class="ruby hljs"><span class="hljs-function"><span class="hljs-keyword">def</span> <span class="hljs-title">make_a_speech</span><span class="hljs-params">(**components)</span></span>
introduction = components[<span class="hljs-symbol">:introduction</span>]
inappropriate_anecdote = components[<span class="hljs-symbol">:inappropriate_anecdote</span>]
long_winded_moralizing = components[<span class="hljs-symbol">:long_winded_moralizing</span>]
conclusion = components[<span class="hljs-symbol">:conclusion</span>]

<span class="hljs-comment"># Now put it all together ...</span>
<span class="hljs-keyword">end</span></code></pre>
<h3>Objectives</h3>
<h4>Use named arguments</h4>
<p>Take a look at the <code class="inline">House#initialize</code> method. My, how many parameters it has!</p>
<p>Refactor the method to use named arguments instead.</p>
<p><strong><br>IMPORTANT: Handling default values</strong></p>
<p>Some of the parameters defined earlier take default values. Check out <a href="https://robots.thoughtbot.com/ruby-2-keyword-arguments">thoughtbot’s article</a> on keyword arguments (i.e. use Ruby 2.0 keyword arguments). Identify the relevant parts and <strong>incorporate that into your design for the default values.</strong></p>
<h4></h4>
<p>Optional: Handling boolean and nil with Ruby 1.9</p>
<p>What happens when you pass a boolean or <code class="inline">nil</code> value as an argument? Take a look at this example:&nbsp;</p>
<pre><code class="ruby hljs"><span class="hljs-class"><span class="hljs-keyword">class</span> <span class="hljs-title">Car</span></span>
<span class="hljs-keyword">attr_reader</span> <span class="hljs-symbol">:headlights</span>, <span class="hljs-symbol">:gear</span>

<span class="hljs-function"><span class="hljs-keyword">def</span> <span class="hljs-title">start_car</span><span class="hljs-params">(options = {})</span></span>
@headlights = options[<span class="hljs-symbol">:headlights</span>] <span class="hljs-params">||</span> <span class="hljs-literal">true</span>
@gear = options[<span class="hljs-symbol">:gear</span>] <span class="hljs-params">||</span> <span class="hljs-number">1</span>
<span class="hljs-keyword">end</span>
<span class="hljs-keyword">end</span>

herbie = Car.new

<span class="hljs-comment"># When we start the car, the headlights should be on by default:</span>
herbie.start_car
herbie.headlights <span class="hljs-comment"># =&gt; true</span>

<span class="hljs-comment"># But what happens when we want to start without headlights?</span>
herbie.start_car(<span class="hljs-symbol">headlights:</span> <span class="hljs-literal">false</span>)
herbie.headlights <span class="hljs-comment"># =&gt; true WHAT???</span></code></pre>
<p>Check out&nbsp;<a href="http://devblog.avdi.org/2009/03/16/go-fetch/">Avdi Grim’s post</a>&nbsp;on how this issue was resolved. But note that&nbsp;this is for Ruby 1.9. The <strong>best practice</strong> is still to use <strong>Ruby 2.0’s way</strong> of handling keyword arguments. This is just an example of Ruby 1.9’s way.</p>
</div>

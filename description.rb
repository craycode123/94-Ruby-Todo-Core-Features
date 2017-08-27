<div><p>The fundamental way that programmers organize their code is by writing methods. Methods (the code you write between <code class="inline">def</code> and <code class="inline">end</code>) have input, output, and side-effects.</p>
<p>A method’s input is the arguments you pass in, such as in <code class="inline">puts "hi mom"</code>, where the <code class="inline">puts</code> method’s input is the argument “hi mom”. The <code class="inline">puts</code> method takes input, but only ever returns <code class="inline">nil</code>as output. Its side-effect is that it writes to STDOUT. On the other hand, many methods have no side-effects and are purely input/output. For example, <code class="inline">File.exists?("app/models")</code> takes <code class="inline">"app/models"</code> as input, and returns <code class="inline">true</code> or <code class="inline">false</code>.</p>
<p>One of the conventions that you’ll learn in Ruby is that methods with side-effects are appended with a <code class="inline">!</code> (what programmers call a “bang”). This helps future programmers calling these methods understand that when they call it, something serious is happening behind the scenes.</p>
<p>For this exercise, you will write a function (a method with no side-effects), and then a method with the side-effect of “destroying” its input argument.</p>
<p><em>Note: the bang <code class="inline">!</code> symbol is used because permanently modifying data is dangerous. Use destructive methods with caution.</em></p>
<h3>Tasks</h3>
<h4>Rules for your method</h4>
<p>You will be writing two versions of a method called <code class="inline">destroy_message</code> which takes in a string identified by the variable <code class="inline">message</code> and modifies that string based upon the following rules:</p>
<ul>
<li><p>A message is a string that may or may not contain a <code class="inline">":"</code>.</p>
</li>
<li><p>If the original message contains a <code class="inline">":"</code> then all content after (but not including) the <code class="inline">":"</code> is removed when the message self-destructs. So if the original message is <code class="inline">"This message will self destruct: Ruby is fun"</code> it will then return <code class="inline">"This message will self destruct:"</code>.</p>
</li>
<li><p>If the original message does not contain a <code class="inline">":"</code> then it will not change when it is destructed.</p>
</li>
</ul>
<h4>Writing methods with no side effects</h4>
<p>Start by writing the <code class="inline">destroy_message</code> method following the rules outlined above. It <strong>must not</strong> permanently alter the original string passed in.</p>
<p>What does that mean? Here is an example of a <em>non-destructive</em> method:</p>
<pre><code class="ruby hljs">name = <span class="hljs-string">"Mr. Billy Jones"</span>

<span class="hljs-comment"># The String#sub method replaces one part of the string</span>
<span class="hljs-comment"># with another and returns the new, modified string.</span>
name.sub(<span class="hljs-string">'Jones'</span>, <span class="hljs-string">'Jimmy Jones'</span>)
<span class="hljs-comment"># =&gt; "Mr. Billy Jimmy Jones"</span>

<span class="hljs-comment"># But it does NOT permanently change the string, as we</span>
<span class="hljs-comment"># can see here:</span>
name
<span class="hljs-comment"># =&gt; "Mr. Billy Jones"</span>

<span class="hljs-comment">### Destroying everything!</span></code></pre>
<p>Now, write the method <code class="inline">destroy_message!</code> which does the same thing as <code class="inline">destroy_message</code> (without the <code class="inline">!</code>) <strong>except</strong> that this new method will permanently modify the original string.</p>
<p>What does it mean to permanently modify a piece of data? Here is an example of a <em>destructive</em> method:</p>
<pre><code class="ruby hljs">name = <span class="hljs-string">"Mr. Billy Jones"</span>

<span class="hljs-comment"># The String#sub! method replaces one part of the ORIGINAL</span>
<span class="hljs-comment"># string with another and returns the modified string.</span>
name.sub!(<span class="hljs-string">'Jones'</span>, <span class="hljs-string">'Jimmy Jones'</span>)
<span class="hljs-comment"># =&gt; "Mr. Billy Jimmy Jones"</span>

<span class="hljs-comment"># When you call #sub! on a string, it permanently modifies</span>
<span class="hljs-comment"># the original value.</span>
name
<span class="hljs-comment"># =&gt; "Mr. Billy Jimmy Jones"</span></code></pre>
</div>

<div><p>Scope can be a difficult concept to grasp.</p>
<p>Do you know the ins and outs of how constants, global variables, class variables, instance variables, and local variables work? How about the difference between class methods and instance methods? What about methods defined within a module?</p>
<p>Examples:
  Constants =&gt; User (Capitalised), Global variables =&gt; $, Class variables =&gt; @@, Instance variables =&gt; @, Local variables =&gt; user (not capitalised)</p>
<p>If your answer is ‘yes’ to all of the above questions, then congratulations. Now please go teach your friends. :)</p>
<p>If not, then let’s use this challenge as an excuse to play around with and learn about the intricacies of scope.</p>
<p>As a reference, find a copy of the “Programming Ruby - The Pragmatic Programmer’s Guide” aka “Pickaxe” and read the section “Variables and Constants” in chapter 22. Watch <a href="https://www.youtube.com/watch?v=iLxKNUFHAnY">this video</a> as well!</p>
<hr class="thick">
<h3>Objectives</h3>
<h4>Local variables and methods</h4>
<p>Write a program that has one local variable <code class="inline">local_var</code> defined in the global scope and one method <code class="inline">get_local_var</code> defined in the global scope.</p>
<p>The method should return the value of the local variable. Does it work? What happens if you define a local variable of the same name within the body of the method definition and assign it a different value?  </p>
<h4>Classes and instance variables</h4>
<p>Add a class <code class="inline">BasicClass</code> to your program. Duplicate your <code class="inline">get_local_var</code> method within the class.</p>
<p>Create a new instance of <code class="inline">BasicClass</code> and call the <code class="inline">get_local_var</code> method on it. What happens?</p>
<p>Now add an instance variable <code class="inline">@instance_var</code> to your class and define an instance method <code class="inline">get_instance_var</code> for your class that returns the value of <code class="inline">@instance_var</code>.</p>
<p>Try creating a new instance of the class and calling <code class="inline">get_instance_var</code> on it. What happens?  </p>
<h4>Getters and setters</h4>
<p>Your instance method <code class="inline">get_instance_var</code> is an example of a <em>getter method</em>. It allows us <em>read access</em> to an instance variable of an object.</p>
<p>A <em>setter method</em> is similar, except that instead of reading an instance variable, it allows us to <em>write</em> a new value to the instance variable.</p>
<p>Create a setter method for <code class="inline">BasicClass</code> named <code class="inline">set_instance_var=</code> that takes one argument and then assigns the value of the argument to the instance variable <code class="inline">@instance_var</code>.</p>
<p>Note that a commonly used pattern for setter methods is to name them with a <code class="inline">=</code> at the end. This is simply syntactic sugar that allows us to write code like this:</p>
<pre><code class="ruby hljs">    foo = BasicClass.new
foo.get_instance_var
<span class="hljs-comment"># =&gt; 'default value'</span>
foo.set_instance_var = <span class="hljs-string">'some other value'</span></code></pre>
<p>The last line is the same as writing <code class="inline">foo.set_instance_var=('some other value')</code>, it’s just easier to read. Thank you, Ruby.  </p>
<h4>Class methods</h4>
<p>A <em>class method</em> is a method on a class, as opposed to a method on an instance of a class. It works like this:</p>
<pre><code class="ruby hljs">    <span class="hljs-class"><span class="hljs-keyword">class</span> <span class="hljs-title">MyCoolClass</span></span>
<span class="hljs-function"><span class="hljs-keyword">def</span> <span class="hljs-title">self</span>.<span class="hljs-title">some_method</span></span>
<span class="hljs-string">"quack"</span>
<span class="hljs-keyword">end</span>
<span class="hljs-keyword">end</span>

MyCoolClass.some_method <span class="hljs-comment"># =&gt; "quack"</span></code></pre>
<p>What are some class methods you’ve seen? <code class="inline">MyCoolClass.new</code> is one class method that every class in Ruby comes with, which returns a new instance of a class.  </p>
<h4>Class variables</h4>
<p>An <em>instance variable</em>, as the name implies, is associated with an <em>instance</em> of a class. In other words, its value can be different for different objects created by the same class.</p>
<p>Try creating two different objects from <code class="inline">BasicClass</code> and then using your setter method to give each of them a different value for the <code class="inline">@instance_var</code>. Then use your getter method on each to see if they are <em>actually</em> different.</p>
<p>A <em>class variable</em>, on the other hand, is the same for all instances of a class.</p>
<p>Within your class definition, create the class variable <code class="inline">@@class_var</code> and assign it a value.</p>
<p>Then define a getter and setter method for <code class="inline">@@class_var</code> and play around with assigning new values to it from multiple instances of the class.</p>
<p>What happens if you change the value of <code class="inline">@@class_var</code> from one instance, and then create a new instance of the class and use your getter method to read the value of <code class="inline">@@class_var</code>?</p>
<h4>Global variables and constants</h4>
<p>Within your global scope, create a constant <code class="inline">THIS_IS_A_CONSTANT</code> and a global variable <code class="inline">$global_var</code>.</p>
<p>Then write getter and setter methods for your constant and global variable and duplicate them within your class and in the global scope. (I know, this is not DRY, but we’re just experimenting here).</p>
<p>What happens when you try to read from and write to constants and global variables from different place in your program? Did you get any errors? Did you <strong>Google</strong> the errors? ;)</p>
</div>

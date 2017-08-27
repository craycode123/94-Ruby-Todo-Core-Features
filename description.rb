<div><p>A central component of good object-oriented design is understanding how much of an object to <em>expose</em>.</p>
<p><em>Exposing</em> an object means making its properties (internal data) available to the “public”, i.e. other objects in the program or even other programs. Together, these public methods make up an object’s <strong>public interface</strong> . The methods which are private (accessible only within the object itself) make up its <strong>private interface</strong> .</p>
<p>As a general rule, you should only expose as much of an object as is needed for other objects to interact with it. Design objects that can take care of their own properties. They shouldn’t just invite everyone else in to mess around with their business.</p>
<p>To play with this principle, let’s build a simple <code class="inline">BankAccount</code> class that stores information about a bank account.</p>
<h3>Objectives</h3>
<h4>Def initialize</h4>
<p>Define the class <code class="inline">BankAccount</code>.</p>
<p>It should have three instance variables: <code class="inline">@customer_name</code>, <code class="inline">@type</code>, and <code class="inline">@acct_number</code>.</p>
<p>Define an <code class="inline">initialize</code> method that takes three arguments and assigns them to the above instance variables. It should look something like this:</p>
<pre><code class="ruby hljs">    my_acct = BankAccount.new(<span class="hljs-string">"Junipero Serra"</span>, <span class="hljs-string">"Checking"</span>, <span class="hljs-string">"347-923-239"</span>)</code></pre>
<h4>Redefine to_s</h4>
<p>One more requirement: define an instance method <code class="inline">to_s</code> that will return a string with information about the account.</p>
<p>You will probably come across other classes in Ruby that redefine the built-in method <code class="inline">to_s</code>. This is an easy way to display relevant information about an object to the user, and to control which information is conveyed.</p>
<p>As an example, here is one way to display object information:</p>
<pre><code class="ruby hljs">    my_acct.to_s
<span class="hljs-comment"># =&gt; "Junipero Serra: Checking# ***** 3239"</span></code></pre>
<p>Once you define <code class="inline">to_s</code>, you can interpolate your objects in strings like this:</p>
<pre><code class="ruby hljs">    str = <span class="hljs-string">"My account information is <span class="hljs-subst">#{my_acct}</span>"</span>
<span class="hljs-comment"># =&gt; "My account information is Junipero Serra: Checking# ***** 3239"</span></code></pre>
<h4>Define getter methods</h4>
<p>When you create a new instance of <code class="inline">BankAccount</code>, do you have access to any of the values stored in its instance variables? No? Good.</p>
  <p>The way we get read access to variables stored within a class is through a pattern called a <em>getter method</em>.</p>
  <p>Which of the instance variables should have associated <em>getter</em> methods?</p>
  <p>Think about the implications behind defining a getter method. Which variables should expose themselves in this way? Which values should be hidden and protected from the outside world?  </p>
  <h4>Define setter methods</h4>
  <p>Now think about which variables should be able to be <em>written</em> to.</p>
  <p>Then define your setter method(s).  </p>
  <h4>Hide the account</h4>
  <p>You probably recognized that it might not be a good idea to expose the account number via a getter or setter method. That is just the kind of information that should remain private.</p>
  <p>Sometimes, though, it is useful to expose part of a value. If a user has many checking accounts, then it might be useful to display some kind of information that allows them to distinguish between the accounts without seeing the full account number.</p>
  <p>How would you get around this problem? What kind of method can you define that will return enough information about the account to be able to distinguish it from other accounts, without exposing the full number?</p>
  </div>

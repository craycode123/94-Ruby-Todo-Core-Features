<div><p>In computer science, there are many different ways to search through collections of data. Understanding the various algorithms and patterns for searching and sorting data sets is an essential part of computer science.</p>
<p>Ruby abstracts many of the lower-level functions of programming by providing us with methods like <code class="inline">Array#index</code>. You don’t need to know <em>how</em> the index of an element is found, you just need to know <em>what</em> it is. In general, the fact that Ruby provides these abstractions is a Good Thing.</p>
<p>However, it is also useful to understand that there are many different ways to perform a simple task like finding the index of an element in a list. Aside from being important to your knowledge of theory, the searching and sorting algorithms you use will have a significant impact on your program’s performance (how long it takes to execute and how much memory it uses).</p>
<p>One of the most basic searching algorithms is the <strong>linear search</strong> . In this challenge, you will build a <code class="inline">linear_search</code> method using very basic programming constructs in Ruby. Here is a <a href="https://scratch.mit.edu/projects/72166092/">little game</a> for you play with to understand linear search better.</p>
<p>Linear search (also called <em>sequential</em> search) is an algorithm for finding a particular value in a list by checking every one of its elements, one at a time and in sequence, until the desired one is found.</p>
<p><em>Sources:&nbsp;
</em></p>
<ol>
<li><em><a href="http://en.wikipedia.org/wiki/Linear_search">Wikipedia</a>
</em>
</li>
<li><em><a href="http://pragprog.com/book/gwpy/practical-programming">Practical Programming</a>
</em>
</li>
</ol>
<h3>Task</h3>
<h4>1. Basic linear search</h4>
<p>Write a method <code class="inline">linear_search</code> that takes two arguments: an object and an array.</p>
<ul>
<li>It should return the index of the object in the array by going through each element in sequence and returning the index of the first instance of the element.
  </li>
<li>If the object searched for does not exist in the array, it should return <code class="inline">nil</code>.
  </li>
</ul>
<pre><code class="ruby hljs">random_numbers = [<span class="hljs-number">6</span>, <span class="hljs-number">29</span>, <span class="hljs-number">18</span>, <span class="hljs-number">2</span>, <span class="hljs-number">72</span>, <span class="hljs-number">19</span>, <span class="hljs-number">18</span>, <span class="hljs-number">10</span>, <span class="hljs-number">37</span>]
linear_search(<span class="hljs-number">18</span>, random_numbers)
<span class="hljs-comment"># =&gt; 2</span>
linear_search(<span class="hljs-number">9</span>, random_numbers)
<span class="hljs-comment"># =&gt; nil</span></code></pre>
<p>Here’s the catch: you can’t use any of Ruby’s built-in <code class="inline">Array</code> or <code class="inline">Enumerable</code> methods <em>except</em> for <code class="inline">Array#[]</code>. You will have to use of the keywords <code class="inline">for</code>, <code class="inline">while</code>, or <code class="inline">until</code>.</p>
<h4>2. Global linear search</h4>
<p>Write a new method <code class="inline">global_linear_search</code> that returns an array of <em>all the indices</em> for the object it searches for. In other words, if the object <code class="inline">x</code> is in more than one place in the array, <code class="inline">global_linear_search</code> will return an array containing the index of each occurrence of <code class="inline">x</code>.</p>
<pre><code class="ruby hljs">bananas_arr = <span class="hljs-string">"bananas"</span>.split(<span class="hljs-regexp">//</span>)
<span class="hljs-comment"># =&gt; ["b", "a", "n", "a", "n", "a", "s"]</span>
global_linear_search(<span class="hljs-string">"a"</span>, bananas_arr)
<span class="hljs-comment"># =&gt; [1, 3, 5]</span></code></pre>
</div>

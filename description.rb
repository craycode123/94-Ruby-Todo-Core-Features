<div><p>California grows oranges - mostly <a href="http://en.wikipedia.org/wiki/Orange_%2528fruit%2529#Navel_oranges">Washington Navel oranges</a>&nbsp;and <a href="http://en.wikipedia.org/wiki/Valencia_orange">Valencia oranges</a>, for the botanists among us.</p>
<p>Let’s create a toy program to model an orange tree growing over the years. We plant the orange tree, wait for it to bear some fruit, and then pick all the oranges as soon as it does.</p>
<p>The script might look like this:</p>
<pre><code class="ruby hljs">    tree = OrangeTree.new

tree.age! <span class="hljs-keyword">until</span> tree.any_oranges?

puts <span class="hljs-string">"Tree is <span class="hljs-subst">#{tree.age}</span> years old and <span class="hljs-subst">#{tree.height}</span> feet tall"</span>

<span class="hljs-keyword">until</span> tree.dead?
basket = []

<span class="hljs-comment"># It places the oranges in the basket</span>
<span class="hljs-keyword">while</span> tree.any_oranges?
basket &lt;&lt; tree.pick_an_orange!
<span class="hljs-keyword">end</span>

avg_diameter = <span class="hljs-comment"># It's up to you to calculate the average diameter for this harvest.</span>

puts <span class="hljs-string">"Year <span class="hljs-subst">#{tree.age}</span> Report"</span>
puts <span class="hljs-string">"Tree height: <span class="hljs-subst">#{tree.height}</span> feet"</span>
puts <span class="hljs-string">"Harvest: <span class="hljs-subst">#{basket.size}</span> oranges with an average diameter of <span class="hljs-subst">#{avg_diameter}</span> inches"</span>
puts <span class="hljs-string">""</span>

<span class="hljs-comment"># Age the tree another year</span>
tree.age!
<span class="hljs-keyword">end</span>

puts <span class="hljs-string">"Alas, the tree, she is dead!"</span>
</code></pre>
<p>In this challenge, you will be modeling a simple system with two objects: orange trees and oranges. You’ll be applying what you have learnt about&nbsp;<strong>variable scope</strong>, and &nbsp;<strong>attr_reader/writer/accessor</strong> methods here.  </p>
<h3>Objectives</h3>
<h4>Implement the OrangeTree and Orange classes</h4>
<p>Use <code class="inline">attr_reader</code>, <code class="inline">attr_writer</code>, and/or <code class="inline">attr_accessor</code> so that we can call <code class="inline">tree.height</code> and <code class="inline">tree.age</code> to get a tree’s height or age, respectively. Which of the three <code class="inline">attr_</code> methods should you be using and why?</p>
<p>Do the same with the <code class="inline">Orange</code> class so that we can call <code class="inline">orange.diameter</code> to get an orange’s diamater.  </p>
<h4>Implement Aging</h4>
<p>As a tree ages, it grows taller. Eventually it starts bearing fruit and stops growing - not necessarily at the same time. Some years later, the tree dies and can bear fruit no more!</p>
<p>Implement an <code class="inline">OrangeTree#age!</code> instance method that will age your tree one year. Each year the tree should get some amount taller, and then eventually stop growing. You can decide when the tree stops growing.</p>
<p>Later, it should die. At this point your <code class="inline">OrangeTree</code> class should:</p>
<ol>
<li>Have an <code class="inline">OrangeTree#height</code> method which returns the tree’s current height
</li>
<li>Have an <code class="inline">OrangeTree#age</code> method which returns the tree’s current age
</li>
<li>Have an <code class="inline">OrangeTree#age!</code> method which ages the tree one year and grows the tree a little, if it’s able to grow
</li>
<li>Have an <code class="inline">OrangeTree#dead?</code> method which returns <code class="inline">true</code> if the tree has died
</li>
</ol>
<h4>Implement Orange-picking</h4>
<p>After some number of years - you decide the number - the orange tree starts to bear fruit. Write a method <code class="inline">OrangeTree#any_oranges?</code> which returns <code class="inline">true</code> if there are any oranges on the tree and <code class="inline">false</code> otherwise.</p>
<p>Also write a method <code class="inline">OrangeTree#pick_an_orange!</code> which will return one of the oranges on the tree (an instance of the <code class="inline">Orange</code> class). If you try to pick an orange when there are no oranges left, your code should raise a <code class="inline">NoOrangesError</code> (defined in the source code).</p>
<p>You’ll also have to implement the <code class="inline">Orange</code> class at this point, including <code class="inline">Orange.new</code> and <code class="inline">Orange#diameter</code>.  </p>
<h4>Does the script run?</h4>
<p>Does the script at the top of the challenge run and output what you’d expect? (Hint: you have to be clear about your expectations before you an answer that question.)</p>
<p>If not, what are the errors or unexpected behaviors? Do you understand them?</p>
</div>

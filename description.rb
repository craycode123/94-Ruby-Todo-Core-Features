<div><p>Inheritance is a design pattern that can be found in almost every modern programming language in some form or another.</p>
<p>If you’re not sure why inheritance is important or useful, just think about why we have DNA.&nbsp;</p>
<p>Here’s a simple explanation from <a href="http://pragprog.com/book/ruby3/programming-ruby-1-9">Programming Ruby</a>&nbsp;(a.k.a. the <em>Pickaxe</em>):</p>
<blockquote><p>Inheritance allows you to create a class that is a refinement or specialization of another class. This class is called a <strong>subclass</strong> of the original, and the original is a <strong>superclass</strong> of the subclass. People also talk of <strong>child</strong> and <strong>parent</strong> classes.The basic mechanism of subclassing is simple. The child inherits all of the capabilities of its parent class—all the parent’s instance methods are available in instances of the child.</p>
</blockquote>
<p>Additionally, you may want to <a href="http://rubylearning.com/satishtalim/ruby_inheritance.html">read about class inheritance in Ruby</a>&nbsp;to get a sense for how it works.</p>
<h3>Objectives</h3>
<h4>A bunch of animals</h4>
<p>Define 7 empty classes: <code class="inline">Animal</code> <code class="inline">Mammal</code>, <code class="inline">Amphibian</code>, <code class="inline">Primate</code>, <code class="inline">Frog</code>, <code class="inline">Bat</code>, and <code class="inline">Chimpanzee</code>.</p>
<p>Set up an inheritance structure that makes sense given the phylogenetic position of the animal in relation to the others.  </p>
<h4>Add some properties</h4>
<p>Add instance variables and methods to your different classes. These could include things like <code class="inline">@num_legs</code> or <code class="inline">warm_blooded?</code>. Make up your own.</p>
<p>The write a script to prove that your inheritance structure works. If you assign <code class="inline">@num_legs = 2</code> in the <code class="inline">Primate</code> class, does an instance of <code class="inline">Chimpanzee</code> have the same variable and value?</p>
<p>Hint: you may have to define some reader methods.  </p>
<h4>Extra Credit: Super powers with a Module</h4>
<p>This objective is really just for fun.</p>
<p>Create a module <code class="inline">SuperPowers</code> with some crazy (and perfectly useless) features like a <code class="inline">use_laser_vision</code> method and a <code class="inline">magic_points</code> reader and writer method.</p>
<p>Then use your module as a mixin for one or more of your classes.</p>
</div>

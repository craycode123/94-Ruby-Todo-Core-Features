<div><p><strong>I &lt;3 Cookies</strong> is a bakery that makes delicious cookies. They are growing rapidly, and they need some software to help them manage their kitchen.</p>
<p>Your job is to build a program that will help them manage their cookie baking. Here are a few user stories to help get you started:</p>
<ul>
<li>As a baker, I want to make different types of cookies (peanut butter, chocolate chip, etc.).
  </li>
<li>As a baker, I want to place batches of cookies in an oven.
  </li>
<li>As a baker, I want to know when a batch of cookies is ready to be removed from the oven.
  </li>
</ul>
<p>The point of this challenge is to exercise your object-oriented design muscles. It’s time to apply the concepts that you have learnt in previous challenges over here. Are you up for it?&nbsp;</p>
<h3>Objectives</h3>
<h4>Design the structure</h4>
<p>Think about this problem critically before you even begin to write code and describe how you would design the program in plain English.</p>
<p>At the very least, consider these questions in your answer:</p>
<ul>
<li>What are essential classes?
</li>
<li>What attributes will each class have?
</li>
<li>What interface will each class provide?
</li>
<li>How will the classes interact with each other?
</li>
<li>Which classes will inherit from others, if any?
</li>
</ul>
<h4>Step 1: MVP</h4>
<p>Implement a minimum viable product.</p>
<p>It does not need to track multiple types of cookies, but you should be able to move cookies into and out of an oven.  </p>
<h4>Step 2: Additional Features</h4>
<p>Add more features to your program.</p>
<ul>
<li>Multiple types of cookies, each with a different baking time
</li>
<li>Status <strong>attribute</strong> for cookies, with at least these possible values: <code class="inline">:doughy</code>, <code class="inline">:almost_ready</code>, <code class="inline">:ready</code>, <code class="inline">:burned</code>
</li>
</ul>
<h4>Step 3: Refactor</h4>
<p>Take a step back and look at the code you’ve produced. Run through a checklist to see if you are following the principles of object-oriented design:</p>
<ul>
<li>Is it DRY (Don’t Repeat Yourself)?
</li>
<li>Do your classes follow the <a href="http://en.wikipedia.org/wiki/Law_of_Demeter">Law of Demeter</a>?
</li>
<li>Are your classes <a href="http://stackoverflow.com/a/1527430">orthogonal</a>?
</li>
<li>Do you expose only the minimum amount of surface area for each object?
</li>
</ul>
<hr class="thick">
<p>The Law of Demeter can be summarized as follows:</p>
<p><em>For all classes C. and for all methods M attached to C, all objects to which M sends a message must be instances of classes associated with the following classes:</em></p>
<ol>
<li>The argument classes of M (including C).
  </li>
<li>The instance variable classes of C.
  </li>
</ol>
<p><em>(Objects created by M, or by functions or methods which M calls, and objects in global variables are considered as arguments of M.)</em></p>
<p>Read <a href="http://devblog.avdi.org/2011/07/05/demeter-its-not-just-a-good-idea-its-the-law/">Avdi Grim’s post</a>&nbsp;for a more thorough explanation.</p>
  <h3>Get Creative!</h3>
  <p>Put yourself in the baker’s shoes, and imagine what other features you might like to have. Then pick the most useful and feasible one and build it out.</p>
  </div>

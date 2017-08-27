<div><p>We hope you are now more acquainted with error messages, data types, and how certain methods can only be used by certain data types. Let’s now put everything together and fix erroneous code.</p>
<h3>Objectives</h3>
<p>The exercises given contain bugs. Your task is to figure out what the error is and then change to code to remove the bug. In order to do this, you will have to read the error message that Ruby returns.</p>
  <p>In the first exercise, you will get rid of the <code class="inline">ArgumentError</code> bug by changing the statement that <em>invokes</em> the method.</p>
  <p>In the second exercise, you will have to change the method <em>definition</em> in order to solve the bug.</p>
  <p>The third exercise contains a few <code class="inline">TypeError</code>s, which are common bugs in <a href="http://en.wikipedia.org/wiki/Type_system#Dynamic_typing">dynamically typed</a> languages such as Ruby.</p>
  <p>Fix all the errors in the code in the repo&nbsp;to make it run successfully without changing it’s intended purpose!</p>
  <p>By the way, here’s a juicy question: why would we rewrite the <em>invocation</em> as opposed to the <em>definition</em> of the method?</p>
  <p>In a small program like this, the code is flexible enough to warrant either choice. When working on larger applications, you have to <strong>constantly be aware of <em>how</em> you are fixing bugs</strong>. Fixing one bug can easily cause more bugs or confusion down the line if you are not careful.</p>
  <h3>Using rspec</h3>
  <ol>
  <li><p>Make sure your code works by running <code class="inline">ruby argument_error_1.rb</code>, <code class="inline">ruby type_error.rb</code>, <code class="inline">ruby argument_error_2.rb</code>.</p>
  </li>
  <li><p>Then run <code class="inline">rspec rspec_test.rb</code> in the terminal to check that the requirements given are met. </p>
  </li>
  </ol>
  <p>If you see red words, it means that even though your code is working, you may have not done it the right way. Read the requirements again and edit your code accordingly. If you are still unable to pass all the tests, flag a mentor and ask him/her to help review your code.</p>
  </div>

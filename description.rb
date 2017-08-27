<div><p>For this challenge, we will be building a single-user command-line ToDo application. From the user’s perspective, we want to build something that works like this (you will need to use ARGV here!):&nbsp;  </p>
<pre><code class="hljs ruby">$ ruby todo.rb add Bake a delicious blueberry-glazed cheesecake
$ ruby todo.rb list
$ ruby todo.rb delete &lt;task_id&gt;
$ ruby todo.rb complete &lt;task_id&gt;
</code></pre>
<p>Your text file (an example is included in the repo) will be simple. Just task descriptions each on their own line. Keep in mind that you will eventually have more information included, this is why we want you to use the CSV format.</p>
<p>An example of task descriptions:</p>
<pre><code class="hljs">Bake a delicious blueberry-glazed cheesecake
Go play miniature golf with Mike Tyson
Become a World-Class Developer</code></pre>
<p>This application has all the moving parts of an MVC (model-view-controller - you will learn more about this in Week 4) application: user input, display code, and data persistence. It’s important to think about what <em>responsibilities</em> this application has to fulfill.</p>
<p>Keep things like the <a href="http://en.wikipedia.org/wiki/Single_responsibility_principle">single responsibility principle</a>&nbsp;and <a href="http://en.wikipedia.org/wiki/Separation_of_concerns">separation of concerns</a>&nbsp;in mind as you decide what objects and classes belong in your application.</p>
<p>You will be working on several iterations of the application. Each iteration will involve adding new commands and features. As you work through the iterations, pay close attention to how <em>change</em> impacts your application. When a new feature is added how many files do you have to change? How frustrating is it to make those changes?</p>
  <h3>Objectives</h3>
  <h4>Enumerate the responsibilities</h4>
  <p>Start by listing down the responsibilities of your ToDo application. These aren’t just the user-facing commands like “add”, “delete”, etc. They’re also back-end responsibilities like reading and writing from the <code class="inline">todo.csv</code> file, parsing command-line arguments, and printing the “interface” to the console.</p>
  <p>Each responsibility should map to a concrete unit of Ruby code. For example,</p>
  <table class="table table-bordered">
  <tbody>
  <tr>
  <td><strong>Responsibility</strong></td>
  <td><strong>Code World</strong></td>
  </tr>
  <tr>
  <td>Initialize an empty TODO list</td>
  <td><code>list = List.new</code></td>
  </tr>
  <tr>
  <td>Add a task to a TODO list</td>
  <td><code>list.add(Task.new("walk the dog"))</code></td>
  </tr>
  <tr>
  <td>Get all the tasks on a TODO list</td>
  <td><code>tasks = list.tasks</code></td>
  </tr>
  <tr>
  <td>Delete a particular task from a TODO list</td>
  <td>???</td>
  </tr>
  <tr>
  <td>Complete a particular task on a TODO list</td>
  <td>???</td>
  </tr>
  </tbody>
  </table><p>Parse the command-line arguments and take the appropriate action. Parse the <code class="inline">todo.csv</code> file and wrap each entry in easier-to-manipulate Ruby objects. There are other responsibilities. What are they?&nbsp;</p>
  <h4>Implement the list command</h4>
  <p>When you run</p>
  <pre><code class="hljs ruby">$ ruby todo.rb list</code></pre>
  <p>your application should print out a list of all the TODOs. For example:  </p>
  <pre><code class="hljs ruby">$ ruby todo.rb list
  <span class="hljs-number">1</span>. Bake a delicious blueberry-glazed cheesecake
  <span class="hljs-number">2</span>. Write up that memo <span class="hljs-keyword">and</span> fax it out
  <span class="hljs-number">3</span>. Conquer the world</code></pre>
  <p>You’ll have to design and build basic controller and model code to make this work. For example, how does your program know the user wants to “add” a task to their list?  </p>
  <h4>Implement the add command</h4>
  <p>Requirements:</p>
  <ul>
  <li>A user can add (append) a task to their TODO list
  </li>
  </ul>
  <p>It should work like this</p>
  <pre><code class="hljs ruby">$ ruby todo.rb add Walk the dog
  Appended <span class="hljs-string">"Walk the dog"</span> to your TODO list...

    $</code></pre>
  <h4></h4>
  <p>Implement the delete command</p>
  <p>Requirements:</p>
  <ul>
  <li>A user can delete a specific task from their TODO list
  </li>
  </ul>
  <p>It should work like this</p>
  <pre><code class="hljs ruby">$ ruby todo.rb list
  <span class="hljs-number">1</span>. Bake a delicious blueberry-glazed cheesecake
  <span class="hljs-number">2</span>. Write up that memo <span class="hljs-keyword">and</span> fax it out
  <span class="hljs-number">3</span>. Conquer the world

  $ ruby todo.rb delete <span class="hljs-number">3</span>
  Deleted <span class="hljs-string">"Conquer the world"</span> from your TODO list...

    $ ruby todo.rb list
  <span class="hljs-number">1</span>. Bake a delicious blueberry-glazed cheesecake
  <span class="hljs-number">2</span>. Write up that memo <span class="hljs-keyword">and</span> fax it out

  $</code></pre>
  <h4></h4>
  <p>Implement completeness</p>
  <p>Requirements:</p>
  <ul>
  <li>A user can complete a specific task from their TODO list
  </li>
  <li>A completed TODO task will be identified as such when a user uses the <code class="inline">list</code> command
  </li>
  </ul>
  <p><strong>Note</strong> : This will require changing the format of <code class="inline">todo.csv</code> and the code that parses it.  </p>
  <h4>Extra Credit: Human Readable File</h4>
  <p>Here’s the deal: Google just LOVES your new command line todo app. And they’re ready to buy you out for millions if only you can change the CSV file to a human readable file, so that it can be printed out easily. They also want the app to be able to handle commas in the task description - something a CSV file doesn’t accommodate very easily.</p>
  <p>Here’s the way the file should be saved:</p>
  <pre><code class="hljs ruby"><span class="hljs-number">1</span>. [ ] Bake a delicious blueberry-glazed cheesecake
  <span class="hljs-number">2</span>. [X] Write up that memo <span class="hljs-keyword">and</span> fax it out
  <span class="hljs-number">3</span>. [ ] Conquer the world</code></pre>
  <p><em>(the brackets indicate whether the task has been completed or not)</em></p>
  <p>What factors do you need to take into account to save this data correctly? How does this change the parsing (besides not being able to use the CSV class)?</p>
    <p>Update your app to accommodate this new feature!</p>
    </div>

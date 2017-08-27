<div id="challenge-instructions"><h3>Deaf Aunty</h3><div><p>We’re going to model something a little silly: an interaction between you and your imaginary deaf aunty. She exhibits the following inexplicable behavior:</p>
<ol>
<li>If you say something but don’t shout all the way, she’ll shout right back: “HUH?! SPEAK UP, SANDRA!”
</li>
<li>If you do shout you’re also out of luck, because she’ll misunderstand you and shout back “NO, WE CANNOT DO THAT!”
  </li>
  <li>She won’t let you leave the room unless you say, politely, “I love ya, aunty, but I’ve got to go.” She may be deaf, but she can smell rude a mile away.
    </li>
  </ol>
  <p>How should these behaviors map to code?</p>
  <table class="table table-bordered table-striped">
  <thead>
  <tr>
  <th>"Real" world</th>
  <th>Code world</th>
  </tr>
  </thead>
  <tbody>
  <tr>
  <td>Starting a conversation with Aunty</td>
  <td>Running the program via the command line</td>
  </tr>
  <tr>
  <td>Speaking to your Aunty</td>
  <td>Reading a line of user input with the <a href="http://www.ruby-doc.org/docs/Tutorial/part_02/user_input.html" target="_blank">gets method</a></td>
  </tr>
  <tr>
  <td>Aunty speaking to you</td>
  <td>Printing a line to the console using the <a href="http://www.ruby-doc.org/core-1.9.3/IO.html#method-i-puts" target="_blank">puts method</a></td>
  </tr>
  <tr>
  <td>Shouting</td>
  <td>Either entering or printing text IN ALL CAPS, depending on who is speaking.</td>
  </tr>
  <tr>
  <td>Not Shouting</td>
  <td>Either entering or printing text in lower case or mix.</td>
  </tr>
  <tr>
  <td>Leaving the conversation</td>
  <td>Exiting the program</td>
  </tr>
  </tbody>
  </table><p><iframe type="text/html" width="100%" height="480" src="https://www.youtube.com/embed/AHbJ2mZZK4E" frameborder="0"></iframe></p>
  <h3>As you are coding, ask yourself….</h3>
  <ul>
  <li>Are you writing a single, gigantic method or breaking down your program into logical units?
  </li>
  </ul>
  <hr class="thin">
  <h3>Tasks</h3>
  <h4>1. Deaf Aunty Doesn’t Gets It</h4>
  <p>Write a method called <code class="inline">deaf_aunty</code> that models the Aunty-talkin’ rules above. Use <a href="http://www.ruby-doc.org/docs/Tutorial/part_02/user_input.html">gets</a>&nbsp;to prompt the user for input.</p>
  <p>Create your code logic base off the video above!</p>
  <h4>2. Changing the Requirements (Optional)</h4>
  <p>After you have a program that allows you to leave the conversation with Aunty in a civil way, we’re going to add a new requirement. In addition to saying “I love ya, Aunty, but I’ve got to go.” to end the conversation, you also need to silently move away. Set up a new way to exit the program in your method: <strong>when two empty lines are entered in succession <em>by the user</em></strong>. (Both conditions for ending the program should be supported!)</p>
  <p>How does this change your program? How do you record the “state” of your interaction with Aunty?</p>
    <hr class="thin">
    <h4>Getting Creative (Optional)</h4>
    <p>Consider some further changes to the rules above. Let’s say we want to model some new behavior in our system. Think of how these “real world” scenarios might be modeled in “code world.”</p>
    <ol>
    <li>How would you model non-verbal actions, like giving your Aunty a hug?
    </li>
    <li>What if Aunty’s behavior changed depending on her mood? Maybe she’s happy in the morning but grumpy at night.
      </li>
    <li>What if Aunty wants to pinch your cheeks every time you visit?
    </li>
    <li>What other scenarios can you think of?
    </li>
    </ol>
    <p>Have some fun! Think of the craziest scenario you can and write a version of Deaf Aunty called <code class="inline">deaf_aunty_crazy</code> which models that scenario.</p>
    </div><div class="checkbox"></div></div>

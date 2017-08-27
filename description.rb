<div><p>We’re going to create a basic Boggle board generator. Read about <a href="http://en.wikipedia.org/wiki/Boggle">Boggle on Wikipedia</a>&nbsp;or <a href="http://www.wordplays.com/boggle">try out the game</a> if you’re not familiar with it.</p>
<p>Boggle is a simple game, but when you get down into it there are some subtleties.</p>
<p>First, we’re only going to model the first part of Boggle, where you place the Boggle dice and shake them around to create the initial board. To imagine what that might look like, visualize a blank 4x4 grid with a button next to it. When you push the button a letter appears in each of the 16 cells and you can begin playing Boggle.</p>
<p>We’re going to do it in two steps. First, we’ll to build a dumb version which doesn’t care at all about whether it’s likely that the Boggle board will have English words. Second, we’ll build a version that models the dice.</p>
  <h3>Tasks</h3>
  <p><strong>Please note:</strong> Start with sample code from the gist given in the challenge. It gives a hint on class structure and internal methods.</p>
  <h4>1. Stupid Boggle Board</h4>
  <p>Our <code class="inline">BoggleBoard</code> class has one core instance method: <code class="inline">shake!</code></p>
  <p>For the first step, focus on how you represent the board. <code class="inline">shake!</code> should modify the board, filling each cell with a random upper-case letter <code class="inline">A-Z</code>.</p>
  <p>There are no other restrictions on the letters. They can appear multiple times, for example. Just pick a flippin’ random letter and don’t sweat it, ok?</p>
  <p>I also know you’re worrying about how “Q” is always “Qu” in Boggle. Just let it be “Q” for now.</p>
  <p>We want to write code that works like this:</p>
  <pre><code class="ruby hljs">board = BoggleBoard.new
  puts board
  <span class="hljs-comment"># An unshaken board prints out something sensible, like:</span>
  <span class="hljs-comment"># ____</span>
  <span class="hljs-comment"># ____</span>
  <span class="hljs-comment"># ____</span>
  <span class="hljs-comment"># ____</span>

  <span class="hljs-comment"># Shake (and modify) the board</span>
  board.shake!

  puts board
  <span class="hljs-comment"># Prints out:</span>
  <span class="hljs-comment"># DUMV</span>
  <span class="hljs-comment"># KSPD</span>
  <span class="hljs-comment"># HCDA</span>
  <span class="hljs-comment"># ZOHG</span>

  board.shake!
  puts board

  <span class="hljs-comment"># We've shaken again, so a new random board:</span>
  <span class="hljs-comment"># QIRZ</span>
  <span class="hljs-comment"># EEBY</span>
  <span class="hljs-comment"># OEJE</span>
  <span class="hljs-comment"># MHCU</span></code></pre>
  <h4>2. Smart(er) Boggle Board</h4>
  <p>We need to model the dice, now. Think carefully about how shaking a Boggle board works. Each die lands in one and only one cell, with one side facing up.</p>
  <p>Can you think of a way to model a die landing in only one cell without explicitly keeping track of which dice have landed and which haven’t? One way to do this is using a secondary <code class="inline">Array</code>, can you think of another?</p>
    <p>We’ll still only have one core method, <code class="inline">BoggleBoard#shake!</code>. Here’s a list of Boggle dice, with “Q” representing “Qu”:</p>
    <pre><code class="ruby hljs">AAEEGN
    ELRTTY
    AOOTTW
    ABBJOO
    EHRTVW
    CIMOTU
    DISTTY
    EIOSST
    DELRVY
    ACHOPS
    HIMNQU
    EEINSU
    EEGHNW
    AFFKPS
    HLNNRZ
    DEILRX</code></pre>
    <h4>3. Dealing with Q</h4>
    <p>Now let’s take care of the “Q”. Assuming we want “Qu” to be printed rather than “Q”, how could we make that happen?</p>
    <p>There are several ways of making this happen, especially if you keep in mind that how the board appears to the computer - how it’s represented in your program - doesn’t have to be how it appears to the person using the program.</p>
    <p>Consider a few ways to make “Qu” print instead of just “Q”, deliberate on the tradeoffs for a few minutes, and implement one. You’ll probably want to change how the board is printed, too, since “Qu” will throw everything out of alignment.</p>
    <p>For example, something like this might be appropriate:</p>
    <pre><code class="ruby hljs">&gt; puts board.shake!
    U N O T
    S E W G
    S V L T
    L Qu C F</code></pre>
    <p>Check out the <a href="http://www.ruby-doc.org/core-2.1.2/String.html#method-i-ljust">String#ljust</a>&nbsp;method for an easy way to add the right amount of space for display.</p>
    <h3>As you’re coding, ask yourself…</h3>
    <ul>
    <li>Do I have a clear understanding of how this procedure works?
    </li>
    <li>Am I stuck because I know what I want to do but don’t know how to say it in Ruby?
      </li>
      <li>Am I stuck because my understanding of how Boggle works is too fuzzy or mistaken?
      </li>
      </ul>
      </div>

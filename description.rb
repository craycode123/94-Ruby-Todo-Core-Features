<div><p>Using your basic <code class="inline">BoggleBoard</code> generator from before, we’re now going to model a person checking whether a given word is on the Boggle board or not.</p>
<p>The only rule is that the same dice can’t be reused in the same word, i.e., the “word path” can’t ever cross itself.</p>
<p>We’ll implement a <code class="inline">BoggleBoard#include?</code> method which works like this:</p>
<pre><code class="ruby hljs">board = BoggleBoard.new
board.shake!
board.<span class="hljs-keyword">include</span>?(<span class="hljs-string">"apple"</span>) <span class="hljs-comment"># =&gt; true or false</span></code></pre>
<p><strong>Note</strong>: This method won’t care whether the input is <em>actually</em> a word in a dictionary. It will just tell you whether the string, as its input, is on the Boggle board.</p>
<h3>Tasks</h3>
<h4>1. Pseudocode for <code class="inline">BoggleBoard#include?</code></h4>
<p>Take a step back. Breathe. I know you want to jump right in and start writing code. But don’t! It’s a trap!</p>
<p>Get a pen and paper and draw out a 4-by-4 Boggle board. Imagine it filled with letters. Or actually fill it with letters if you like - maybe using your Boggle board generator.</p>
<p>Have your pair spell out a word for you and verify yourself whether it is on the board. It might help if the word is gibberish and not English so that you’re forced to check letter-by-letter and can short-circuit the English-reading part of your brain.</p>
<p>As clearly and precisely as you can, reflect on your internal mental process. Can you explain it to your pair? Draw it, verbalize it, or do whatever is easiest for you, but make sure you and your pair are clear about it.</p>
  <p>Initially, let’s do a simpler, less interesting version of Boggle. Instead of being able to string together letters that are connected in any direction, let’s just focus on words that appear in a <strong>continuous line</strong> vertically, horizontally, and diagonally. (Remember, only words of 3 or more letters count!)</p>
    <p>Write pseudocode for your algorithm. If you’re feeling adventurous, you and your pair could each write your own pseudocode and compare.</p>
    <p>How do your stylistic approaches compare? Your respective vocabulary? The overall structure and strategy of your approach?</p>
      <h4>2. Implement <code class="inline">BoggleBoard#include?</code> in Ruby</h4>
      <p>If you went through the exercise above, your job is now to just translate your pseudocode into Ruby.</p>
      <p>What new instance methods do you need to define? Would your algorithm be easier to implement if your board was stored differently?</p>
        <p>For example, what are the tradeoffs between storing the board as a 4x4 array of arrays versus a single 16-element array?</p>
        <h3>Going Deeper (Extra Credit)</h3>
        <p>Now try implementing your algorithm for the real boggle rules! The words don’t have to be in continuous lines, they can be connected in any way, diagonally, vertically, horizontally, in any order, i.e. words can snake themselves across the board willy-nilly.</p>
        <p>What do you need to change to accommodate this added requirement? Does it make sense to change the structure of your board? Again, model this before coding, make sure you are aware of all the cases.</p>
          </div>

<div><p>By the end of the next two challenges, you’ll have a fully-functioning Sudoku solver that you can run from the command line.</p>
<h3>Context</h3>
<p>From Wikipedia’s definition, <a href="http://en.wikipedia.org/wiki/Sudoku">Sudoku</a> is a logic-based, combinatorial number-placement puzzle. The objective is to fill a 9x9 grid with digits so that each column, each row, and each of the nine 3x3 sub-grids that compose the grid (also called “boxes”) contains all of the digits from 1 to 9.</p>
<p>In a sudoku game, some of the squares will already have numbers. Usually there will be enough initial numbers to guarantee a unique solution.</p>
<p>An example is given below:</p>
<p><img src="http://upload.wikimedia.org/wikipedia/commons/thumb/f/ff/Sudoku-by-L2G-20050714.svg/250px-Sudoku-by-L2G-20050714.svg.png" alt="image">
<img src="http://upload.wikimedia.org/wikipedia/commons/thumb/3/31/Sudoku-by-L2G-20050714_solution.svg/250px-Sudoku-by-L2G-20050714_solution.svg.png" alt="image"></p>
<p>For this challenge, we will be building a solver that fills in <strong>logically necessary</strong> squares and requires no guessing (a square/cell that has one and only one solution). This will be the first iteration of the code.</p>
<p><strong><em>Breathe</em></strong>: We know this is the hardest challenge you’ve hit yet. When in doubt, take a step back and reflect on how you or someone else plays Sudoku and <strong>don’t get stuck in code!</strong> You can start by breaking down your problem into smaller, more manageable parts/tasks as follows.</p>
<h3>Tasks</h3>
<h4>1. Understanding: Write down the nouns and verbs of the game</h4>
<p>Think carefully about all the nouns and verbs in a Sudoku game. There’s the person who created the puzzle (the setter). There’s the person who is solving the puzzle (the player). What are the important parts of the board called? How do the player and setting interact with them?</p>
  <p>A computer program that solves Sudoku is simulating the <strong>player</strong>, which means the better you can empathize with the player the more likely you’ll understand how to write a Sudoku solver. You’ll be tempted to focus on the board first - is it some kind of array, a hash, something else? - but don’t!
  <strong>Understanding the person playing the game is key</strong>; the code to “power” the board is a detail.</p>
  <h4>2. Modeling: Strategies for Humans</h4>
  <p>Get out an actual Sudoku puzzle, printed on a piece of paper. Play it with your pair. Pay attention to yourself and to each other.</p>
  <ol>
  <li>What strategies are you adopting and why?
  </li>
  <li>How do you choose where to start?
    </li>
    <li>How do you know when to really put a number in a cell?
      </li>
      <li>Did you adopt the same notation/board markings while playing Sudoku? Why? If not, why did you choose differently?
      </li>
      <li>Are you avoiding any strategies because they’re too tedious or require you to remember too much?
      </li>
      </ol>
      <p>It’s important to see that sometimes the strategies that work for us (humans) would be really hard to implement on a computer, and vice versa: strategies we avoid because we’d have to write too much, use too many sheets of paper, or remember too much are a cakewalk for a computer.</p>
      <h4>3. Planning: Pseudocode for First Iteration</h4>
      <p>Remember, for the first iteration, we’re just going build a solver that fills in <strong>logically necessary</strong> squares and requires no guessing. This might not solve every Sudoku board, although it often solves the easiest. How can you tell when you’ve filled in all the <strong>logically necessary</strong> squares?</p>
      <p>Write out <strong>pseudocode</strong> for this version, separately, and compare it to each other. How does it differ? Which approach seems more sound? Are there some core operations or methods you need to support?</p>
      <p>For example, given a cell/square, you’ll probably need at least three methods:</p>
      <ol>
      <li>Give me the other cells in that cell’s <strong>row</strong>.
        </li>
      <li>Give me the other cells in that cell’s <strong>column</strong>.
        </li>
      <li>Give me the other cells in that cell’s <strong>box</strong>.
        </li>
      </ol>
      <h4>4. Code it Out!</h4>
      <p>Your Sudoku solver should take a string like this as its input:
        <code class="inline">619030040270061008000047621486302079000014580031009060005720806320106057160400030</code></p>
      <p>Each consecutive 9 digits represents a row of the Sudoku board, and a <code class="inline">0</code> represents an empty cell. It’d work like this:</p>
      <pre><code class="ruby hljs">game = Sudoku.new(<span class="hljs-string">'619030040270061008000047621486302079000014580031009060005720806320106057160400030'</span>)
      game.solve!
      puts game.board</code></pre>
      <p>This would print something like this:</p>
      <pre><code class="ruby hljs">                      ----------------------
        <span class="hljs-number">6</span> <span class="hljs-number">1</span> <span class="hljs-number">9</span> <span class="hljs-params">| 0 3 0 |</span> <span class="hljs-number">0</span> <span class="hljs-number">4</span> <span class="hljs-number">0</span>
      <span class="hljs-number">2</span> <span class="hljs-number">7</span> <span class="hljs-number">0</span> <span class="hljs-params">| 0 6 1 |</span> <span class="hljs-number">0</span> <span class="hljs-number">0</span> <span class="hljs-number">8</span>
      <span class="hljs-number">0</span> <span class="hljs-number">0</span> <span class="hljs-number">0</span> <span class="hljs-params">| 0 4 7 |</span> <span class="hljs-number">6</span> <span class="hljs-number">2</span> <span class="hljs-number">1</span>
      ----------------------
        <span class="hljs-number">4</span> <span class="hljs-number">8</span> <span class="hljs-number">6</span> <span class="hljs-params">| 3 0 2 |</span> <span class="hljs-number">0</span> <span class="hljs-number">7</span> <span class="hljs-number">9</span>
      <span class="hljs-number">0</span> <span class="hljs-number">0</span> <span class="hljs-number">0</span> <span class="hljs-params">| 0 1 4 |</span> <span class="hljs-number">5</span> <span class="hljs-number">8</span> <span class="hljs-number">0</span>
      <span class="hljs-number">0</span> <span class="hljs-number">3</span> <span class="hljs-number">1</span> <span class="hljs-params">| 0 0 9 |</span> <span class="hljs-number">0</span> <span class="hljs-number">6</span> <span class="hljs-number">0</span>
      ----------------------
        <span class="hljs-number">0</span> <span class="hljs-number">0</span> <span class="hljs-number">5</span> <span class="hljs-params">| 7 2 0 |</span> <span class="hljs-number">8</span> <span class="hljs-number">0</span> <span class="hljs-number">6</span>
      <span class="hljs-number">3</span> <span class="hljs-number">2</span> <span class="hljs-number">0</span> <span class="hljs-params">| 1 0 6 |</span> <span class="hljs-number">0</span> <span class="hljs-number">5</span> <span class="hljs-number">7</span>
      <span class="hljs-number">1</span> <span class="hljs-number">6</span> <span class="hljs-number">0</span> <span class="hljs-params">| 4 0 0 |</span> <span class="hljs-number">0</span> <span class="hljs-number">3</span> <span class="hljs-number">0</span>
      ----------------------</code></pre>
      <p><strong>Note</strong>: Don’t worry about the particular format of the board when printed. The key thing is getting the logic around solving/guessing correctly.</p>
      <p>Question: What about performance?
      Do <em>not</em> worry about performance yet! Optimizations can come later. Clean, logical code is more important and will be easier to refactor.</p>
      <h4>5. Testing!</h4>
      <p>Remember, always start with the simplest test case possible. For a Sudoku solver, what’s the simplest case? It’s working with a board that is only missing one number.
        <code class="inline">609238745274561398853947621486352179792614583531879264945723816328196457167485932</code></p>
      </div>

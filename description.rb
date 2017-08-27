<div><p>Arrays are exceedingly useful for storing collections of data due to their flexibility and simplicity. The possibilities for different uses of arrays are limitless.</p>
<p>One common design pattern you will encounter is <strong>nested arrays</strong>, i.e. arrays within arrays. With nested arrays, we can store and organize data according to a variety of patterns.</p>
<pre><code class="ruby hljs">nested_array = [[<span class="hljs-number">1</span>, <span class="hljs-number">2</span>], [<span class="hljs-number">3</span>, <span class="hljs-number">4</span>], [<span class="hljs-number">5</span>, <span class="hljs-number">6</span>]]
puts nested_array[<span class="hljs-number">1</span>][<span class="hljs-number">0</span>] == <span class="hljs-number">3</span> <span class="hljs-comment"># outputs true</span></code></pre>
<h3>Example: Grid Pattern</h3>
<p>Using nested arrays, we can represent a 2-dimensional grid of a tic tac toe board:</p>
<pre><code class="ruby hljs">tic_tac_toe = [[<span class="hljs-string">"X"</span>, <span class="hljs-string">"X"</span>, <span class="hljs-string">"O"</span>],
                                            [<span class="hljs-string">"O"</span>, <span class="hljs-string">"X"</span>, <span class="hljs-string">"O"</span>],
                                            [<span class="hljs-string">"O"</span>, <span class="hljs-string">"O"</span>, <span class="hljs-string">"X"</span>]]</code></pre>
<p>Any element in a grid pattern has two indices: the first index identifies the “row” (the position of the nested array it is in) and the second index identifies the “column” (the position of the element within the nested array). In the example above, the number represents the row and the letter represents the column.</p>
<p>We can index into a grid with the pattern <code class="inline">array[row][column]</code>.</p>
<p>For example, in the <code class="inline">tic_tac_toe</code> array above, we can access the center tic tac toe box by writing <code class="inline">tic_tac_toe[1][1]</code>, since it is in the 1st row, 1st column. (Remember, arrays start counting at zero!)</p>
<h3>Tasks</h3>
<h4>1. Chessboard</h4>
<p>Build an array to represent a chess board. Populate it with the appropriate pieces represented as strings, i.e. “W Knight”, “B Pawn”, “B Queen”, etc. Don’t overthink this! It’s as simple as it seems. This may help:</p>
<p><img src="http://www.freemasons-freemasonry.com/game_chess08.jpg" alt="Orang putih chess"></p>
<p>There are many ways to approach this problem. You can hardcode, or you can make use of loops to help you fill the chessboad.&nbsp;If you cringe at the thought of creating the whole board by hand and how much repetition that will be, create a method that generates the board, and DRY it up! We will leave it up to you to decide which works better. But try not to spend too much time on this! You can always come back later to improve your code.</p>
<pre><code class="ruby hljs"><span class="hljs-comment"># Example usage:</span>
puts chessboard[<span class="hljs-number">7</span>][<span class="hljs-number">0</span>] == <span class="hljs-string">"W Rook"</span> <span class="hljs-comment"># outputs true</span></code></pre>
<h4>2. Data table</h4>
<p>Nested arrays can also be used as a way to store data in a table format, similar to a spreadsheet.</p>
<p>You can use the first nested array to store the headers, and then each of the subsequent nested arrays can store the values in the particular column.</p>
<p>Build an array to store this tabular data:</p>
<pre><code class="ruby hljs"><span class="hljs-params">| Number |</span> Name <span class="hljs-params">| Position |</span> Points per Game <span class="hljs-params">|
+---------+-------------+----------------+----------------------+
  |</span> <span class="hljs-number">12</span> <span class="hljs-params">| Joe Schmo |</span> Center <span class="hljs-params">| [14, 32, 7, 0, 23] |</span>
<span class="hljs-params">| 9 |</span> Ms. Buckets <span class="hljs-params">| Point Guard |</span> [<span class="hljs-number">19</span>, <span class="hljs-number">0</span>, <span class="hljs-number">11</span>, <span class="hljs-number">22</span>, <span class="hljs-number">0</span>] <span class="hljs-params">|
|</span> <span class="hljs-number">31</span> <span class="hljs-params">| Harvey Kay |</span> Shooting Guard <span class="hljs-params">| [0, 30, 16, 0, 25] |</span>
<span class="hljs-params">| 18 |</span> Sally Talls <span class="hljs-params">| Power Forward |</span> [<span class="hljs-number">18</span>, <span class="hljs-number">29</span>, <span class="hljs-number">26</span>, <span class="hljs-number">31</span>, <span class="hljs-number">19</span>] <span class="hljs-params">|
|</span> <span class="hljs-number">22</span> <span class="hljs-params">| MK DiBoux |</span> Small Forward <span class="hljs-params">| [11, 0, 23, 17, 0] |</span></code></pre>
<p>When completed, you should be able to index into <code class="inline">table</code> like this:</p>
<pre><code class="ruby hljs">puts table[<span class="hljs-number">3</span>][<span class="hljs-number">2</span>] == <span class="hljs-string">"Shooting Guard"</span> <span class="hljs-comment"># outputs true</span>
puts table[<span class="hljs-number">1</span>][<span class="hljs-number">3</span>] == [<span class="hljs-number">14</span>, <span class="hljs-number">32</span>, <span class="hljs-number">7</span>, <span class="hljs-number">0</span>, <span class="hljs-number">23</span>] <span class="hljs-comment"># outputs true</span></code></pre>
</div>

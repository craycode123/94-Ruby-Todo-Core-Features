<div><p>In this challenge, we will start creating some data structures and have a better understanding on what’s going on under the hood with arrays and hashes. A powerful way to create an array is using the <code class="inline">Array.new</code> class method.</p>
<pre><code class="ruby hljs">first_25_letters = (<span class="hljs-string">'A'</span>..<span class="hljs-string">'Z'</span>).first(<span class="hljs-number">25</span>)

letter_grid = Array.new(<span class="hljs-number">5</span>) { first_25_letters.shift(<span class="hljs-number">5</span>) }
<span class="hljs-comment"># =&gt; [["A", "B", "C", "D", "E"],</span>
<span class="hljs-comment"># ["F", "G", "H", "I", "J"],</span>
<span class="hljs-comment"># ["K", "L", "M", "N", "O"],</span>
<span class="hljs-comment"># ["P", "Q", "R", "S", "T"],</span>
<span class="hljs-comment"># ["U", "V", "W", "X", "Y"] ]</span></code></pre>
<p>Do you understand how the above code is working? If not, make a note to come back later so you understand passing blocks and the <code class="inline">shift</code> method.</p>
<h3>Tasks</h3>
<h4>1. Tic-Tac-Toe Revisited - Populating a Board</h4>
<p>Take a look at the simple 2 dimensional array for Tic-Tac-Toe from <a href="https://code.nextacademy.com/courses/web-development-bootcamp/challenges/data-drill-nested-arrays">the previous challenge</a>. Let’s say we wanted to generate 10 sample boards with x’s and o’s. How would you do that? How do you make the x’s and o’s random? In the first iteration, it’s OK to create boards that don’t have logical ratio of x’s and o’s.</p>
    <p>Write some driver code with a test to make sure your method is working, and your resultant array has 9 elements. What <code class="inline">Array</code> method would you use?</p>
    <p><strong>Extra Credit:</strong> Go ahead and populate a board with a realistic ratio of x’s and o’s. There should only be either 5 x’s or 4 o’s or vice versa. There’s an enumerable method that works on arrays that can help you! How could you write a good driver code test to make sure the array has the right number of x’s and o’s?</p>
    <h4>2 Convert nested array to hash</h4>
    <p>Ruby provides a handy <code class="inline">Hash::[]</code> method which will convert a properly formatted array into a hash. <a href="http://www.ruby-doc.org/core-1.9.3/Hash.html#method-c-5B-5D">Read the documentation</a>.</p>
    <p>Convert each entry (player) from the data table array from the previous challenge (shown below) into a hash. You will need to write code that modifies the original array into the right format that the <code class="inline">Hash::[]</code> method expects to get the proper result.</p>
    <pre><code class="ruby hljs">roster = [[<span class="hljs-string">"Number"</span>, <span class="hljs-string">"Name"</span>, <span class="hljs-string">"Position"</span>, <span class="hljs-string">"Points per Game"</span>],
                                           [<span class="hljs-number">12</span>, <span class="hljs-string">"Joe Schmo"</span>, <span class="hljs-string">"Center"</span>, [<span class="hljs-number">14</span>, <span class="hljs-number">32</span>, <span class="hljs-number">7</span>, <span class="hljs-number">0</span>, <span class="hljs-number">23</span>] ],
                                           [<span class="hljs-number">9</span>, <span class="hljs-string">"Ms. Buckets"</span>, <span class="hljs-string">"Point Guard"</span>, [<span class="hljs-number">19</span>, <span class="hljs-number">0</span>, <span class="hljs-number">11</span>, <span class="hljs-number">22</span>, <span class="hljs-number">0</span>] ],
                                           [<span class="hljs-number">31</span>, <span class="hljs-string">"Harvey Kay"</span>, <span class="hljs-string">"Shooting Guard"</span>, [<span class="hljs-number">0</span>, <span class="hljs-number">30</span>, <span class="hljs-number">16</span>, <span class="hljs-number">0</span>, <span class="hljs-number">25</span>] ],
                                           [<span class="hljs-number">7</span>, <span class="hljs-string">"Sally Talls"</span>, <span class="hljs-string">"Power Forward"</span>, [<span class="hljs-number">18</span>, <span class="hljs-number">29</span>, <span class="hljs-number">26</span>, <span class="hljs-number">31</span>, <span class="hljs-number">19</span>] ],
                                           [<span class="hljs-number">22</span>, <span class="hljs-string">"MK DiBoux"</span>, <span class="hljs-string">"Small Forward"</span>, [<span class="hljs-number">11</span>, <span class="hljs-number">0</span>, <span class="hljs-number">23</span>, <span class="hljs-number">17</span>, <span class="hljs-number">0</span>] ]]</code></pre>
    <h4>3. Break It Down</h4>
    <p>Take a moment to read up in the <a href="http://www.ruby-doc.org/core-1.9.3/Hash.html#method-c-5B-5D">documentation</a>&nbsp;to see the 3 formats that the <code class="inline">Hash::[]</code> method accepts.</p>
    <p>Which format seems most convenient, given the nested array shown above? Test out the <code class="inline">Hash::[]</code> method with some test data in <code class="inline">irb</code>. How does your nested array need to change so it is the right format?</p>
    <p>Create a method that can converts the nested array appropriately:</p>
    <pre><code class="ruby hljs"><span class="hljs-function"><span class="hljs-keyword">def</span> <span class="hljs-title">convert_roster_format</span><span class="hljs-params">(roster)</span></span>
    <span class="hljs-comment"># your code here</span>
    <span class="hljs-comment"># should return a new format of roster which is an array of hashes</span>
    <span class="hljs-keyword">end</span>

    hashed_roster = convert_roster_format(roster)

    <span class="hljs-comment"># Now, you should have an array of hash objects, which will allow you to write driver code like this:</span>

    hashed_roster[<span class="hljs-number">2</span>]
    <span class="hljs-comment"># =&gt; { "Number" =&gt; 31, "Name" =&gt; "Harvey Kay", "Position" =&gt; "Shooting Guard", "Points per Game" =&gt; [0, 30, 16, 0, 25] }</span>

    puts hashed_roster[<span class="hljs-number">0</span>][<span class="hljs-string">"Name"</span>] == <span class="hljs-string">"Joe Schmo"</span> <span class="hljs-comment"># outputs true</span></code></pre>
    <p>Write some more driver code to test your new array of hashes!</p>
    </div>

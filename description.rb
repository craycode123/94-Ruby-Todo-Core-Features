<div id="challenge-instructions"><h3>Anagrams 2: Generating Anagrams</h3><div><p>An <strong>anagram</strong> is a word formed by rearranging the letters of another word, e.g., <em>iceman</em> is an anagram of <em>cinema</em>.</p>
<p>We’re going to write a method called <code class="inline">anagrams_for</code> that takes as its input a word and an array of words, representing a dictionary, and returns an array consisting of all the anagrams of the input word.</p>
<p>You should look back and possibly re-use some of the code you wrote in your <code class="inline">is_anagram?</code> method. You may or may not re-use the method itself, but at the very least you’ll want the code handy for reference.&nbsp;</p>
<h3>Tasks</h3>
<h4>1. Pseudocode Implementation of <code class="inline">anagrams_for</code></h4>
<p>Before you start writing a single line of Ruby code, sit down and ask yourself, “Given a word and a dictionary, could I create a list of anagrams of that word by hand, tediousness aside?”</p>
<p>Your <code class="inline">anagrams_for</code> method will be a model of you performing this task, so the more clearly you understand how to do this task yourself the easier it will be for you to write the code. Do you understand it well enough to teach someone else how to create an anagram list? How do you know the other person understands how to create an anagram list?</p>
    <p>Write pseudocode that outlines your own mental procedure in a way that’s easy for a human to both understand and translate into their favorite programming language.</p>
    <h4>2. Ruby Implementation of <code class="inline">anagrams_for</code></h4>
    <p>Write a method called <code class="inline">anagrams_for</code> that takes as its input a word and an array of words, representing a dictionary, and returns an array consisting of all the anagrams of the input word. Like <code class="inline">is_anagram?</code>, the method should be <em>case insensitive</em>. Remember, a word is always an anagram of itself.</p>
    <p><code class="inline">anagrams_for</code> should return an empty arrray (<code class="inline">[]</code>) if no anagrams are found in the dictionary. You don’t have to worry about the order of the returned <code class="inline">Array</code>.</p>
    <p>For example,</p>
    <pre><code class="ruby hljs"><span class="hljs-comment"># The dictionary is just an arbitrary collection of strings.</span>
    <span class="hljs-comment"># It need not contain English words, e.g., 'etlsm'.</span>
    dictionary = [<span class="hljs-string">'acres'</span>, <span class="hljs-string">'cares'</span>, <span class="hljs-string">'Cesar'</span>, <span class="hljs-string">'races'</span>, <span class="hljs-string">'smelt'</span>, <span class="hljs-string">'melts'</span>, <span class="hljs-string">'etlsm'</span>]

    <span class="hljs-comment"># If the input word happens to be in the dictionary, it should be in the the returned array, too.</span>
    <span class="hljs-comment"># The list should also be case-insensitive.</span>
    puts anagrams_for(<span class="hljs-string">'acres'</span>, dictionary) <span class="hljs-comment"># =&gt; ['acres', 'cares', 'Cesar', 'races']</span>
    puts anagrams_for(<span class="hljs-string">'ACRES'</span>, dictionary) <span class="hljs-comment"># =&gt; ['acres', 'cares', 'Cesar', 'races']</span>
    puts anagrams_for(<span class="hljs-string">'Cesar'</span>, dictionary) <span class="hljs-comment"># =&gt; ['acres', 'cares', 'Cesar', 'races']</span>

    <span class="hljs-comment"># Although "sacre" is not *in* the dictionary, several words in the dictionary are anagrams of "sacre"</span>
    puts anagrams_for(<span class="hljs-string">'sacre'</span>, dictionary) <span class="hljs-comment"># =&gt; ['acres', 'cares', 'Cesar', 'races']</span>

    <span class="hljs-comment"># Neither the input word nor the words in the dictionary need to be valid English words</span>
    puts anagrams_for(<span class="hljs-string">'etlsm'</span>, dictionary) <span class="hljs-comment"># =&gt; ['smelt', 'melts', 'etlsm']</span>

    puts anagrams_for(<span class="hljs-string">'unicorn'</span>, dictionary) <span class="hljs-comment"># =&gt; []</span></code></pre>
    <h3>As you’re coding, ask yourself…</h3>
    <ul>
    <li>Do I have a clear understanding of how this procedure works?
    </li>
    <li>Am I stuck because I know what I want to do but don’t know how to say it in Ruby?
      </li>
      <li>Is my pseudo-code helpful enough to help me get started?
      </li>
      <li>Am I stuck because my understanding of how anagrams work is too fuzzy or mistaken?
      </li>
      </ul>
      <p>Have a chat with your mentor about the problems you are encountering in terms of learning style, and seek advice on how you can make your learning more efficient.</p>
      <h3>After you’re done, ask yourself…</h3>
      <ul>
      <li>Is my program doing any duplicate work? Is there a way to remove that duplicate work?
      </li>
      <li>Am I iterating over the dictionary multiple times or just once?
      </li>
      <li>If I’m re-using <code class="inline">is_anagram?</code>, what happens if I call <code class="inline">is_anagram?(word1, word2)</code> and then later call <code class="inline">is_anagram?(word1, word100)</code>? Is there any duplicate work?
      </li>
      </ul>
      <h3>External Resources</h3>
      <ul>
      <li><a href="http://en.wikipedia.org/wiki/Anagram">Anagram on Wikipedia</a>
      </li>
      </ul>
      </div><div class="checkbox"></div></div>

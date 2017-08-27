<div id="challenge-instructions"><h3>Anagrams 1: Detecting Anagrams</h3><div><p>An <strong>anagram</strong> is a word formed by rearranging the letters of another word, e.g., <em>iceman</em> is an anagram of <em>cinema</em>.</p>
<p>Since this relationship is symmetric - X is an anagram of Y if and only if Y is an anagram of X - you’ll often hear people say that, e.g., “iceman and cinema are anagrams” or “iceman and cinema are anagrams of each other.” They all mean the same thing: you can rearrange the letters of one word to spell another.</p>
<p>We’re going to write a method <code class="inline">is_anagram?</code> that takes two strings as input and returns <code class="inline">true</code> if the two strings are anagrams and <code class="inline">false</code> otherwise.</p>
<p>For now we won’t care if the strings are valid English words or not.</p>
<h3>Tasks</h3>
<h4>1. Pseudocode Implementation of <code class="inline">is_anagram?</code></h4>
<p>Before you start writing a single line of Ruby code, sit down and ask yourself, “Do I know how to tell whether two words are anagrams?”</p>
<p>Your <code class="inline">is_anagram?</code> method will be a (digital, computerized, mechanical) model of the (analog, organic, human) process by which you determine whether two words are anagrams.</p>
<p>Once you’re confident that <em>you</em> can tell whether two words are anagrams, reflect on your own or with your pair about how that process works. Can you explain it to your pair in a way that they understand? How do you know whether they’ve understood you?</p>
  <p>If you can’t explain it to another person, you’ll have a hard time “explaining” it to a computer via Ruby code!</p>
  <p>Finally, write pseudocode that outlines your own mental procedure in a way that’s easy for a human to both understand and translate into their favorite programming language.</p>
  <p><strong>Note:</strong> If you have spent more than 20 minutes trying to figure out how to do this, check in with a fellow student or staff. There’s a very simple way to implement this!</p>
    <h4>2. Ruby Implementation of <code class="inline">is_anagram?</code></h4>
    <p>Write a method <code class="inline">is_anagram?</code> in Ruby that takes two strings as input and returns <code class="inline">true</code> if the two strings are anagrams and <code class="inline">false</code> otherwise. The method should be <em>case insensitive</em>. For example,</p>
    <pre><code class="ruby hljs"><span class="hljs-comment"># The method should be symmetric, i.e.,</span>
    <span class="hljs-comment"># is_anagram?(word1, word2) == is_anagram?(word2, word1) for any two words</span>
    puts is_anagram?(<span class="hljs-string">'cinema'</span>, <span class="hljs-string">'iceman'</span>) <span class="hljs-comment"># =&gt; true</span>
    puts is_anagram?(<span class="hljs-string">'iceman'</span>, <span class="hljs-string">'cinema'</span>) <span class="hljs-comment"># =&gt; true</span>

    <span class="hljs-comment"># Pedantically, a word is always an anagram of itself.</span>
    <span class="hljs-comment"># This is called being "reflexive," i.e., is_anagram?(word, word) == true for any word</span>
    puts is_anagram?(<span class="hljs-string">'pants'</span>, <span class="hljs-string">'pants'</span>) <span class="hljs-comment"># =&gt; true</span>

    <span class="hljs-comment"># is_anagram? should be case-insensitive</span>
    puts is_anagram?(<span class="hljs-string">'CiNemA'</span>, <span class="hljs-string">'iceman'</span>) <span class="hljs-comment"># =&gt; true</span>

    <span class="hljs-comment"># Notice: acres, cares, and scare are all anagrams of each other</span>
    puts is_anagram?(<span class="hljs-string">'acres'</span>, <span class="hljs-string">'cares'</span>) <span class="hljs-comment"># =&gt; true</span>
    puts is_anagram?(<span class="hljs-string">'cares'</span>, <span class="hljs-string">'scare'</span>) <span class="hljs-comment"># =&gt; true</span>
    puts is_anagram?(<span class="hljs-string">'scare'</span>, <span class="hljs-string">'acres'</span>) <span class="hljs-comment"># =&gt; true</span>

    <span class="hljs-comment"># The "words" don't need to be valid English words</span>
    puts is_anagram?(<span class="hljs-string">'abcde2'</span>, <span class="hljs-string">'c2abed'</span>) <span class="hljs-comment"># =&gt; true</span>

    puts is_anagram?(<span class="hljs-string">'pants'</span>, <span class="hljs-string">'turtle'</span>) <span class="hljs-comment"># =&gt; false</span>
    puts is_anagram?(<span class="hljs-string">'123123'</span>, <span class="hljs-string">'kjhasd'</span>) <span class="hljs-comment"># =&gt; false</span></code></pre>
    <h3>As you’re coding, ask yourself…</h3>
    <ul>
    <li>Do I have a clear understanding of how this procedure works?
    </li>
    <li>Am I stuck because I know what I want to do but don’t know how to say it in Ruby?
      </li>
      <li>Am I stuck because my understanding of how anagrams work is to fuzzy or mistaken?&nbsp;
      </li>
      </ul>
      <h3>After you’re done, ask yourself…</h3>
      <p>Is there a way to transform a word into a “canonical” representation such that two words have the same canonical representation precisely when they are anagrams of each other?</p>
      <p>That is, can you define a method <code class="inline">canonical</code> which lets us write <code class="inline">is_anagram?</code> like this?</p>
      <pre><code class="ruby hljs"><span class="hljs-function"><span class="hljs-keyword">def</span> <span class="hljs-title">canonical</span><span class="hljs-params">(word)</span></span>
      <span class="hljs-comment"># Magic goes here</span>
      <span class="hljs-keyword">end</span>

      <span class="hljs-function"><span class="hljs-keyword">def</span> <span class="hljs-title">is_anagram?</span><span class="hljs-params">(word1, word2)</span></span>
      canonical(word1) == canonical(word2)
      <span class="hljs-keyword">end</span></code></pre>
      <p>Please include in your answer: Why is adding the canonical method a good idea? What principles in programming does it follow?</p>
      <p>###
      External Resources</p>
      <ul>
      <li><a href="http://en.wikipedia.org/wiki/Anagram">Anagram on Wikipedia</a>
      </li>
      </ul>
      </div><div class="checkbox"></div></div>

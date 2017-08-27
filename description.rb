<div id="challenge-instructions"><h3>Algorithm Drill: Roman Numerals (Modern)</h3><div><h4>2. Modern Roman numerals</h4>
<p>Eventually, someone thought it would be terribly clever if putting a smaller number before a larger one meant you had to subtract the smaller one. As a result of this development, you must now suffer.</p>
<p>Rewrite your previous method to return the new-style Roman numerals so when someone calls <code class="inline">to_roman(4)</code>, it should return the string <code class="inline">'IV'</code>. You might want to run a script like this to make sure your program is working as intended:</p>
<pre><code class="ruby hljs">puts <span class="hljs-string">"My totally sweet testing script"</span>
puts <span class="hljs-string">""</span>
puts <span class="hljs-string">"input | expected | actual"</span>
puts <span class="hljs-string">"------|----------|-------"</span>
puts <span class="hljs-string">"4 | IV | <span class="hljs-subst">#{to_roman(<span class="hljs-number">4</span>)}</span>"</span>
puts <span class="hljs-string">"9 | IX | <span class="hljs-subst">#{to_roman(<span class="hljs-number">9</span>)}</span>"</span>
puts <span class="hljs-string">"13 | XIII | <span class="hljs-subst">#{to_roman(<span class="hljs-number">13</span>)}</span>"</span>
puts <span class="hljs-string">"1453 | MCDLIII | <span class="hljs-subst">#{to_roman(<span class="hljs-number">1453</span>)}</span>"</span>
puts <span class="hljs-string">"1646 | MDCXLVI | <span class="hljs-subst">#{to_roman(<span class="hljs-number">1646</span>)}</span>"</span></code></pre>
<h4>Examples</h4>
<pre><code class="ruby hljs">Arabic Roman
<span class="hljs-number">4</span> IV
<span class="hljs-number">9</span> IX
<span class="hljs-number">14</span> XIV
<span class="hljs-number">44</span> XLIV
<span class="hljs-number">944</span> CMXLIV</code></pre>
<h3>Roman Numerals vs. Arabic Numerals: Pros and Cons</h3>
<p>Reflect for a second on the pros and cons of each representation. Imagine you’re an engineer building a system for people to manipulate numbers and you have two proposals before you: use Roman numerals or use the <a href="http://en.wikipedia.org/wiki/Arabic_numerals">Arabic numerals</a>&nbsp;we use today. How do you decide and why?</p>
  <p>What benefits do Arabic numerals have over Roman numerals as a way to represent numbers? For example, with Arabic numerals we have an obvious way to represent 0. Arabic numerals also typically require fewer characters to represent the same number, e.g., “3111” vs “MMMCXI”.</p>
    <p>What else? This is a useful thinking exercise in understanding the relationship between how you represent your data and the actions you want to perform on your data: a dynamic you’ll see at play in almost every piece of software you write.</p>
    <p>For example, if we’re counting people as they walk into a room by marking something on a piece of paper, Arabic numerals are a terrible representation. That’d be like trying to go for a hike and using a political map as a guide. Instead, we opt for using <a href="http://en.wikipedia.org/wiki/Tally_marks">tally marks</a>&nbsp;to count.</p>
    </div><div class="checkbox"></div></div>

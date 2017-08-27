<div id="challenge-instructions"><h3>Algorithm Drill: Roman Numerals (Old-School)</h3><div><h3>Roman Numerals as Representation</h3>
<p>Have you ever seen a 5? I don’t mean the symbol we write on a piece of paper or print to a screen, but an actual, honest-to-goodness 5?</p>
<p>Of course not. You’ve seen things that somehow embody five: five apples, five fingers, five weekdays on the calendar, a scrap of paper with “5” written on it, and so forth. Think of all the ways you can represent the integer 5.</p>
<p>Symbols like 5, “five”, V, and IIIII are one way. If you asked a three-year-old, they might hold up the five fingers on their hand or pull out five pennies from their pocket. Computers encode numbers as a sequence of 0s and 1s called <a href="http://en.wikipedia.org/wiki/Binary_number">binary</a>.</p>
<p><a href="https://en.wikipedia.org/wiki/Map%25E2%2580%2593territory_relation">The map is not the territory</a>, as they say.</p>
<h3>Tasks</h3>
<h4>1. Old-school Roman numerals</h4>
<p>In the early days of Roman numerals, the Romans didn’t bother with any of this new-fangled subtraction ‘IX’ nonsense. No sir, it was straight addition, biggest to littlest—so 9 was written ‘VIIII’ and so on.</p>
<p>Write a method <code class="inline">to_roman</code> that when passed an integer between 1 and 3000 (or so) returns a string containing the proper old-school Roman numeral.</p>
<p>In other words, <code class="inline">to_roman(4)</code> should return the string <code class="inline">'IIII'</code>.</p>
<p>Make sure to test your method by passing it several inputs whose results you know. Test some simple numbers like <code class="inline">to_roman(1)</code> and more complicated numbers like <code class="inline">to_roman(1646)</code>. This serves as a good sanity check.</p>
<p>Hint: Use the integer division <code class="inline">/</code> and modulus <code class="inline">%</code> methods.</p>
<p>For reference, these are the building blocks for how we encode numbers with Roman numerals:</p>
<pre><code class="ruby hljs">I <span class="hljs-number">1</span>
V <span class="hljs-number">5</span>
X <span class="hljs-number">10</span>
L <span class="hljs-number">50</span>
C <span class="hljs-number">100</span>
D <span class="hljs-number">500</span>
M <span class="hljs-number">1000</span></code></pre>
</div><div class="checkbox"></div></div>

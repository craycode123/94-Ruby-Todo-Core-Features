<div><p>We’re going to write a method called <code class="inline">prime_factors</code> which returns the prime factors of an integer.</p>
<p><strong>Prime factors</strong> of a positive integer are the prime numbers that divide that integer exactly. A number is <strong>prime</strong> if it is greater than 1 and no number divides it other than 1 and itself. <a href="http://en.wikipedia.org/wiki/Euclid">Euclid</a>, circa 300BC, proved that every integer greater than 1 is either prime itself or the product of prime numbers, and that these <strong>prime factors</strong> are unique.</p>
<p>For example,</p>
<p><img src="https://s3-ap-southeast-1.amazonaws.com/next-academy-learning-portal/static_assets/images/(public)+prime-factor.png" alt=""></p>
<p>This fact is important enough to be called the <a href="http://en.wikipedia.org/wiki/Fundamental_theorem_of_arithmetic">Fundamental Theorem of Arithmetic</a>.</p>
<p>Prime factors play a major role in encryption systems. Check out <a href="https://www.youtube.com/watch?v=56fa8Jz-FQQ">this cool video</a> on how prime factors are used to encrypt your bank details!&nbsp;</p>
<h3>Task</h3>
<h4>Write a <code class="inline">prime_factors</code> method</h4>
<p>Write a method <code class="inline">prime_factors</code> that takes an integer <code class="inline">n</code> and returns an array of the prime factors of <code class="inline">n</code>.</p>
<p>A prime number can only be divided by itself and “1”. (Keep in mind that “1” is not considered a prime number - see below for examples of expectations).</p>
<pre><code class="ruby hljs">prime_factors(<span class="hljs-number">3</span>) <span class="hljs-comment"># =&gt; [3]</span>
prime_factors(<span class="hljs-number">6</span>) <span class="hljs-comment"># =&gt; [2,3]</span>
prime_factors(<span class="hljs-number">8</span>) <span class="hljs-comment"># =&gt; [2,2,2]</span>
prime_factors(<span class="hljs-number">25</span>) <span class="hljs-comment"># =&gt; [5,5]</span>
prime_factors(<span class="hljs-number">123123123</span>) <span class="hljs-comment"># =&gt; [3, 3, 41, 333667]</span></code></pre>
<p>Use pseudocode! Make sure you are clear on how you would calculate the prime factors yourself, and use this as a process to guide your code.</p>
<h3>External Resources</h3>
<ul>
<li><a href="http://en.wikipedia.org/wiki/Prime_number">Prime Number on Wikipedia</a>
</li>
</ul>
</div>

<div><p>Sometimes, you want to add a bit of chaos to your data. Too many ordered lists can get… boring.</p>
<p>Writing your own <code class="inline">shuffle</code> method is a good way to explore looping through collections.</p>
<p>And no, you are <strong>not</strong> allowed to use <code class="inline">Array#shuffle</code> method or <code class="inline">Array#sort_by</code>. The point of this challenge is to get you to delve into the algorithm, not use a pre-built solution. That would be a cop-out.</p>
<h3>Task</h3>
<h4>Write a Method to Shuffle an Array</h4>
<p>Write a <code class="inline">shuffle</code> method that takes an array and returns a new array with all of the elements in a random order. One important property of a good <code class="inline">shuffle</code> method is that every permutation is equally likely.</p>
<p>As usual, start by writing a pseudo-code on how you would approach this. You will need to use loops, arrays,&nbsp;<code class="inline">rand</code> or <code class="inline">Array#sample</code>, and also know how to access elements in an array. The&nbsp;<a href="https://en.wikipedia.org/wiki/Fisher-Yates_shuffle">Knuth shuffle method</a>&nbsp;may be helpful for you to get started. Remember that you can always use the <strong>irb</strong> to help you try out what&nbsp;<code class="inline">rand</code>or <code class="inline">Array#sample</code>&nbsp;does. You may also find <a href="https://github.com/thoughtbot/til/blob/master/ruby/parallel-assignment.md">parallel assignments</a> useful here.</p>
<p>Use the driver code in the gist to check and be sure that the method truly does shuffle the elements in the array each time it is called.</p>
</div>

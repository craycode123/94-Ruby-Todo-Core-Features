<div><p>When two processes on a single computer or two computers across a network want to share information they have to pre-agree on a format for exchanging data. A program running on my laptop can’t directly access the memory of some program running on yours, so they translate their internal state to/from this intermediate format first. <strong>XML, JSON, CSV, and YAML are all examples of text-based data exchange formats.</strong></p>
<p>You can think of it like a dial-up modem. Because phone lines were designed to transmit audio signals, my modem translates all outgoing data into an audio signal before it’s sent over the phone line. Your modem receives the audio signal and translates it back into data your computer can make sense of.</p>
<p>If heaven forbid you’ve never heard what this sounds like, <a href="http://www.youtube.com/watch?v=GSRG0TqxLWc">enjoy this video</a>. That’s the sound of <strong>DATA</strong> .</p>
<p>You’ll be receiving, transforming, and forwarding data like this all the time in every program you write, so it’s important to get used to it. We’re going to start with a CSV file.</p>
<h3>Objectives</h3>
<p>The overall objective here is to learn to <strong>manipulate CSV data and objects as part of a single application</strong>. This is a common pattern in software engineering as per the above: change the representation of data from format A to format B to make it easier to do X with it.</p>
  <p>Consider, for example, that trying to manipulate CSV data as pure text could get pretty tricky. Say you wanted to filter out a list of first names from the CSV file that started with the letter “A” or even find all people who had similar last names in area code 415 — how would you do that?</p>
    <p>What if the contents of the CSV file was instead <strong>represented as objects</strong> in your program. Couldn’t you then just use <code class="inline">Enumerable#select</code> or similar methods to grab just the records that matched your search criteria?</p>
    <p>These next few steps will walk you through the core part of this process — getting data out of the file and turning it into a bunch of objects you can manipulate in your program and then save them back to the file.</p>
    <h4>Person and PersonParser</h4>
    <p>First, make sure you have a copy of the CSV file from the gist. It contains a few hundred rows of random data about people.</p>
    <p>Create a <code class="inline">Person</code> class such that each row of the CSV file represents a particular instance of the <code class="inline">Person</code> class. What attributes should a <code class="inline">Person</code> object have?</p>
    <p>Create a <code class="inline">PersonParser</code> class that is initialized with the name of a CSV file. Then use Ruby’s&nbsp;<a href="http://ruby-doc.org/stdlib-1.9.2/libdoc/csv/rdoc/CSV.html">built-in CSV class</a>&nbsp;to implement a <code class="inline">PersonParser#people</code> method that returns an <code class="inline">Array</code> of properly-parsed <code class="inline">Person</code>s, based on the data in the CSV file. Say that three times fast.</p>
    <p><em>Note: CSV is a “built-in” class, but you still need to <code class="inline">require</code> it at the top of your program.</em></p>
    <h4>Manipulating in Ruby, Saving to CSV</h4>
    <p>Create a <code class="inline">PersonParser#add_person</code> method which takes a new <code class="inline">Person</code> instance as its input and appends that instance to the parser’s internal <code class="inline">@people</code> array.</p>
    <p>Next, create a <code class="inline">PersonParser#save</code> method which uses the CSV class to save the current state of the parser to a new CSV file. For example:</p>
    <pre><code class="ruby hljs">parser = PersonParser.new(<span class="hljs-string">'people.csv'</span>)
    parser.add_person( Person.new(...) )

    <span class="hljs-comment"># This will now write to people.csv, but there will be one more row</span>
    <span class="hljs-comment"># corresponding to the extra Person you just added.</span>
    parser.save
    </code></pre>
    <p>Note: When you read and write to a file, you can choose a format (like “r” for read and “w” for write). The CSV formats are the same as the <a href="http://ruby-doc.org/core-1.9.3/IO.html">file formats</a>.</p>
    <h4>Translating from CSV-land to Ruby-land</h4>
    <p>Because text-based data formats don’t know anything about where your data is going to be used, there aren’t easy ways to encode language-specific features into the format. For example, the <code class="inline">people.csv</code> file has a <code class="inline">created_at</code> field. In a CSV this is just a conveniently-formatted string, but in Ruby we might want it to be an instance of the <code class="inline">DateTime</code> class.</p>
    <p>At the top of your Ruby program add the line:  </p>
    <pre><code class="ruby hljs"><span class="hljs-keyword">require</span> <span class="hljs-string">'date'</span></code></pre>
    <p>Instead of storing <code class="inline">Person#created_at</code> as a <code class="inline">String</code>, use the <a href="http://www.ruby-doc.org/stdlib-1.9.3/libdoc/date/rdoc/DateTime.html#method-c-parse">DateTime#parse method</a>&nbsp;to parse the <code class="inline">String</code> into an actual honest-to-goodness <code class="inline">DateTime</code> object.</p>
    </div>

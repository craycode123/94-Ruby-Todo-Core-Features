<div><p>Here’s a story every programmer knows. Your friend George comes up to you one day and asks, “I have an idea for a script, but I don’t want to write it. Will you, my talented programmer friend, do it for me?”</p>
  <p>In this situation your job will involve:</p>
  <ol>
  <li>Understanding the picture George has in his head of what he wants built and why
  </li>
  <li>Creating various representations of what you think he wants, ranging from product specifications, to <a href="http://en.wikipedia.org/wiki/Website_wireframe">wireframes</a>&nbsp;and <a href="http://en.wikipedia.org/wiki/User_story">user stories</a>, to <a href="http://en.wikipedia.org/wiki/Pseudocode">pseudocode</a>&nbsp;used to communicate with other engineers.
    </li>
  <li>Implementing prototypes and iterating towards a finalized product.
    </li>
  </ol>
  <p>When this process goes wrong, it ends up looking like this:</p>
  <img src="https://s3-ap-southeast-1.amazonaws.com/code-division/learning_portal/static_assets/images/tree_comic.jpg" alt="tree_comic" width="570px" height="500px"><p>As a programmer, you will be expected to build code from all kinds of specifications:&nbsp;<a href="http://en.wikipedia.org/wiki/Website_wireframe">wireframes</a>,&nbsp;<a href="http://en.wikipedia.org/wiki/User_story">user stories</a>, and&nbsp;<a href="http://en.wikipedia.org/wiki/Pseudocode">pseudocode</a>. It’s important to be able to understand how to read these models and translate them into a functional program.</p>
  <p>More importantly, you have to understand the value each model has. Pseudocode, for example, is primarily used to communicate the essence of an algorithm without getting bogged down in language-specific syntax. A good programmer can take well-written pseudocode and translate it into functional code in the language of his choice.</p>
  <h3>Objectives</h3>
  <h4>Build from Pseudocode</h4>
  <p>In the prepwork, we talked about coding a pig latin program. Here’s a <a href="https://drive.google.com/file/d/0B9G51A7Ar4SlTVh0LWRIaG02eGc/view">refresher</a> for you in case you have forgotten about it. In this challenge, we will get our hands dirty and code up a pig latin programme. Below is the pseudocode for a <code class="inline">pig_latin</code> program that we would like you to code:</p>
  <pre><code class="hljs">Script: CONVERT TO PIG LATIN

  Iteration One: CONVERT SINGLE WORD

  GET a word from user input
  IF the word starts with a vowel, don't change it
ELSE replace the word with its pig latin equivalent
  GET all of the consonants before the first vowel in the word
  SET the consonants at the end of the word and add the suffix "ay"
ENDIF
PRINT the pig-latin-ified word

Iteration Two: CONVERT COMPLETE SENTENCE

GET a sentence from user input
FOR each word in the sentence
  CONVERT SINGLE WORD
ENDFOR
PRINT the converted sentence
DISPLAY the number of words converted</code></pre>
<p>Write code that accomplishes the expectations laid out in the pseudocode above.&nbsp;</p>
<p>ps: here’s a cute cartoon about <a href="https://www.youtube.com/watch?v=aggpWsIylFI">pig latin</a>. Imagine talking in “secret pig latin code” with your friends!</p>
</div>

#!/bin/bash

echo "

All reasoning has a PURPOSE.
Take time to state your purpose clearly.
Distinguish your purpose from related purposes.
Check periodically to be sure you are still on target.
Choose significant and realistic purposes.
---------------
My purpose in addressing the problem is…
Know exactly what you are after. Make sure you are not operating with a hidden agenda and that your announced and real purposes are the same.

"

read purpose

echo "

All reasoning is an attempt to figure something out, to settle some QUESTION, to solve some problem.
State the question at issue clearly and precisely.
Express the question in several ways to clarify its meaning.
Break the question into sub-questions.
Distinguish questions that have definitive answers from those that are a matter of opinion or that require multiple viewpoints.
---------------
The key question that emerges from the problem is… State the question as clearly and precisely as you can. Details are very important.

"

read question

echo "

All reasoning is based on DATA, INFORMATION and EVIDENCE.
Restrict your claims to those supported by the data you have.
Search for information that opposes your position as well as information that supports it.
Make sure that all information used is clear, accurate and relevant.
Make sure you have gathered sufficient information.
-----------------
Actively seek the information most relevant to the question. Include in that information options for action, both short-term and long-term. Recognize limitations in terms of money, time, and power.

"

read information

echo "

All reasoning contains INFERENCES or INTERPRETATIONS by which we draw CONCLUSIONS and give meaning to data.
Infer only what the evidence implies.
Check inferences for their consistency with each other.
Identify assumptions underlying your inferences.
-----------------
In reasoning through the problem, as you consider the important information relevant to the question, you will make multiple inferences. Finally, you will need to come to a conclusion (and then act on that conclusion). Your conclusion is your main inference. Complete this piece last and write out your main inferences as well as your final conclusion or decision.

"

read interpretation

echo "

All reasoning is expressed through, and shaped by, CONCEPTS and IDEAS.
Identify key concepts and explain them clearly.
Consider alternative concepts or alternative definitions of concepts.
Make sure you are using concepts with precision.
---------------
The most important concepts, theories, or ideas I need to use in my thinking are… Figure out all significant ideas needed to understand and solve the problem. You may need to analyze these concepts. Use a good dictionary.

 "

read concepts

echo "

All reasoning is based on ASSUMPTIONS.
Clearly identify your assumptions and determine whether they are justifiable.
Consider how your assumptions are shaping your point of view.
--------------
Some important assumptions I am using in my thinking are… Figure out what you are taking for granted. Watch out for self-serving or unjustified assumptions.

"

read assumptions

echo "

All reasoning leads somewhere or has IMPLICATIONS and CONSEQUENCES.
Trace the implications and consequences that follow from your reasoning.
Search for negative as well as positive implications.
Consider all possible consequences.
--------------
If we solve, or fail to solve this problem, some important implications are… Evaluate options, taking into account the advantages and disadvantages of possible decisions before acting. What consequences are likely to follow from this or that decision?

"

read implications

echo "

All reasoning is done from some POINT OF VIEW.
Identify your point of view.
Seek other points of view and identify their strengths as well as weaknesses.
Strive to be fairminded in evaluating all points of view.
-----------------
The point(s) of view is/are as follows:
Know the point of view from which your thinking begins. Be especially careful to determine whether multiple points of view are relevant.

"

read pov

cat << EOF > index.html
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <meta http-equiv="X-UA-Compatible" content="ie=edge">
  <title>Document</title>
  <link rel="stylesheet" href="stylesheet/style.css">
</head>
<body>
<div class="header">
<h1>
Analyse a Problem
</h1>
<p>
Using the Elements of Reasoning and thought by <a href="https://www.criticalthinking.org/pages/the-elements-of-reasoning-and-the-intellectual-standards/480"> CriticalThinking.org</a>
</div>
<div class="divider">
</div>

<div class="row">
<div class="col-6 col-s-4">
<div class="border purpose">
<h2>My purpose in addressing the problem is… </h2>
<p>$purpose</p1>
</div>
</div>

<div class="col-6 col-s-4">
<div class="border question">
<h2>The key question that emerges from the problem is</h2>
<p>$question</p>
</div>
</div>


<div class="col-6 col-s-4">
<div class="border information">
<h2>Information, data, facts, observations, experiences</h2>
<p>$information</p>
</div>
</div>

<div class="col-s-4 col-6">
<div class="border interpretation">
<h2>Interpretations and Inferences</h2>
<p>$interpretation</p>
</div>
</div>

<div class="col-s-4 col-6">
<div class="border concepts">
<h2>The most important concepts, theories, or ideas I need to use in my thinking are..</h2>
<p>$concepts</p>
</div>
</div>

<div class="col-s-4 col-6">
<div class="border assumptions">
<h2>Some important assumptions I am using in my thinking are… </h2>
<p>$assumptions</p>
</div>
</div>

<div class="col-s-4 col-6">
<div class="border implications">
<h2>Implications and Consequences
If we solve, or fail to solve this problem, some important implications are… </h2>
<p>$implications</p>
</div>
</div>

<div class="col-s-4 col-6">
<div class="border pov">
<h2>The point(s) of view is/are as follows:</h2>
<p>$pov</p>
</div>
</div>
</div>

<div class="footer"><p>Created by <a href="https://github.com/Nswayze">Nswayze</a>
</body>
</html>

EOF

mkdir stylesheet

cat << EOF > stylesheet/style.css
@import url('https://fonts.googleapis.com/css2?family=Oxygen:wght@300;400;700&display=swap');

* {
  box-sizing: border-box;
}

body {
  margin: 0;
font-family: 'Oxygen', sans-serif;
}

a {
  text-decoration: none;
  color: black;
  font-weight: bold;
}

.header {
  background-color: #f1f1f1;
  padding: 2px;
  text-align: center;
  font-size: 10px;
}


.divider {
  background-color: #333;
  display: block;
  width: 100%;
  height: 1%;
}


.row:after {
  content: "";
  display: table;
  clear: both;
}

 /* For mobile phones: */
[class*="col-"] {

  float: left;
  padding: 15px;
  font-size: 8px;
  width: 100%;

}

.border {
  border-radius: 8px;
  padding: 10px 15px;
  color: #0E1017;

}

.border.purpose {
  background-color: #69688C;
}

.border.question {
  background-color: #383D59;

}

.border.information {
  background-color: #99AABF;
}

.border.interpretation {
  background-color: #F2BC8D;
}

.border.concepts {
  background-color: #F29F8D;
}

.border.assumptions {
  background-color: #F39491;
}

.border.implications {
  background-color: #F397C5;
}

.border.pov {
  background-color: #C995F2;
}



@media only screen and (min-width: 600px) {

  .header {
    background-color: #f1f1f1;
    padding: 20px;
    font-size: 14px
  }

  .divider {
    height: 2%;
  }

  /* For tablets: */
  .col-s-1 {width: 8.33%;}
  .col-s-2 {width: 16.66%;}
  .col-s-3 {width: 25%;}
  .col-s-4 {width: 33.33%;
  font-size: 10px}
  .col-s-5 {width: 41.66%;}
  .col-s-6 {width: 50%;}
  .col-s-7 {width: 58.33%;}
  .col-s-8 {width: 66.66%;}
  .col-s-9 {width: 75%;}
  .col-s-10 {width: 83.33%;}
  .col-s-11 {width: 91.66%;}
  .col-s-12 {width: 100%;}
}

@media only screen and (min-width: 768px) {
  /* For desktop: */


    .divider {
      height: 4%;
    }

    .header {
      font-size: 15px
    }


  .col-1 {width: 8.33%;}
  .col-2 {width: 16.66%;}
  .col-3 {width: 25%;}
  .col-4 {width: 33.33%;}
  .col-5 {width: 41.66%;}
  .col-6 {width: 50%;
  font-size: 12px;}
  .col-7 {width: 58.33%;}
  .col-8 {width: 66.66%;}
  .col-9 {width: 75%;}
  .col-10 {width: 83.33%;}
  .col-11 {width: 91.66%;}
  .col-12 {width: 100%;}
}

.footer {
  text-align: center;
  bottom: 0;
  left: 0;
}

EOF

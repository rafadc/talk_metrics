---
theme: gaia
_class: lead
paginate: true
backgroundColor: #fff
backgroundImage: url('assets/bg.png')
---

# Observing your system

 - We all need to observe the behaviour of a system
 - There are bugs, lack of resources, hardware failures...

---
![bg left](./assets/money_burn.jpg)

# Spend your own money

 - Life is a tradeoff
 - My intention is to show some techniques so you can choose your own tradeoffs
 - Take conscious decissions
 - Do what makes sense for you from an economical standpoint

---

![bg right](./assets/mark_twain.jpg)
# Lies, damn, lies and statistics

 - No one is saving us from some math
 - It is not that hard

---

# Means are often deceitful

 - We almost never want a mean

---
<!-- _class: lead -->

# Demo

A sample measuring system
Meant for you to download and play

---

# SPAs are deceitful

- For displaying a single page sometimes we do 20 requests
- Chances of one being slow are high

---

# Histogram

---

# Quantiles

q-quantiles are values that partition a finite set of values into q subsets of (nearly) equal sizes.

The only 2-quantile is called the median
The 100-quantiles are called percentiles → P

---

# Quantile function

The quantile function, associated with a probability distribution of a random variable, specifies the value of the random variable such that the probability of the variable being less than or equal to that value equals the given probability

---
<!-- _class: lead -->

# Demo 2

Using quantiles

---

# 99.99999999999

---
<!-- _class: lead -->

# Don't be afraid of production

- We need to check things in production. That is a fact.
- In the end that is the thing you want reflect your changes
-

---
![bg contain right](./assets/roll_safe.jpg)
Just call it "instrumentation" and everybody will be ok with it.

---

# Dashboards, oh dashboards

- A dashboard answers a question in one circumstance
- Does it make sense to have a predefined set of questions?


---

# Observability

- Ability to observe certaing behaviours in the system.
- Optimize to make easy to answer new questions.

---

# Monitoring

- Answers to the question, is my system up?

---

# Metrics for performance

- Answers to the question: **under this load** how my system behaves?

---

<!-- backgroundColor: #000000 -->
![width:600px center](./assets/famous_last_words.jpg)

# "We should be able to handle twice the load we have now"

---

# Extrapolation of data never works

- Your graphs are only useful for the current situation
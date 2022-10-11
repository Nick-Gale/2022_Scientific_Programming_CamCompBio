# Scientific Programming in Julia
Welcome to the Julia component of the Scientific Programming lecture series. In this course we will cover:

0. Why we want to learn Julia
1. How to interact with Julia and the basics
2. The key differences between Julia and R
3. Several advanced concepts: types and structures, optimisation, high performance computing
4. Some essential packages: Plotting, Statistics, Distributed, CUDA
5. Julia workflows and code development

-- Page Break --


* By now you should be quite familiar with R (and likely some others: Python, MatLab, Mathematica etc.) Why should we bother to learn another language?

* A new language needs to offer benefits over the existing language

* Current paradigm is a two language development cycle. Things are developed in an "easy" (to use) interpreted language like R, and when they need to be optimised they are rewritten in C with an interface (Numpy, Cython, rcpp).

* Current paradigm is not elegant and lots of code is rewritten and is neither here nor there. [Image of numpy supporting the whole world.]().

--- Page Break ---


* Julia offers a solution to the two language problem: it is fast *and* flexible.

* It uses a method called just-in-time (JIT) compiliation to generate compiled code just before it is needed.

* There is a penalty to compile the first time you run code

* This means it can be used like an interpreted language such as Python/R while having many of the performance aspects of C

* In addition to this, several other considered design choices have led to very elegant code.

* It is extremely well optimised for scientific computing and is a joy to develop in: performant, syntactic sugar tastes like maths, and easily scalable to correct level of abstraction.

--- Page Break ---

:Title Interacting with Julia

* Three primary ways to interact with Julia: Notebooks, terminal, and REPL.

* The notebook format is through the "IJulia" package and Jupyter notebook software. This is exactly like Python and R notebooks but with Julia code.

* The terminal can be used to execute scripts with the bash command `julia path/to/script`. This can be useful for large scale server jobs but is in general *not recommended*.

* REPL stands for Read-Evaluate-Print-Loop and is an interactive Julia session initiated by running `julia` in terminal.


--- Page Break ---

* The REPL can execute basic commands or run scripts with the include function:

```{julia}
include("my_first_script.jl")
```

* This is the recommended scripting workflow because for every new Julia session each package needs to be pre-compiled

* Some packages such as `Plots.jl` incur a large cost for this precompiliation

* Scripting in the REPL is costly *once*. Scripting from terminal is costly *everytime*.

* The REPL also lets you run quick commands between script being called.


--- Page Break ---

* Working in the REPL is very intuitive: functions generally have very mathematical names.

* Variable assignment is done through the `=` operator, equality is tested through the `==` operator, and indistinguishability through the `===` operator. This is different to R which uses the `<-` assignment operator and the ``identical(a,b)`` fucntion for indistinguishability.

```{julia}

a = 1.0
b = 1
println(a == b)
println(a === b)

```

* Types are inferred automatically unless specified: `a` was inferred as a float and `b` as an integer. They are numerically equal, but not indistinguishable.




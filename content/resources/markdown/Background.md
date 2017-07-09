
----

# Fundamentals

## Wordbank

-----------       -------------     ------------
Variable          Value             Type
Function          list              tuple
String            int               float
-----------       -------------     ------------

## Variables, Values & Types

- Values represent "things" we want to deal with:
    - Names: `"Noon"`, `"Gala"`, ..
    - Ages: `34`, `30`, ...

- Variables hold _Values_ and can be passed around
- Values have _Types_
- Types specify the "world" of potential _Values_


### Variables

In Python you can define variables with the `=` operator.

Example:
```{data-language=python}
my_location = "VALA Tech Camp"
```

Example:
```{data-language=python}
number_of_people_present = 22
```

Example:
```{data-language=python}
# (x,y) refers to the desk position in terms of rows and columns.
# We call this a "tuple".
my_position_in_this_room = (1, 2)
```

Example:
```{data-language=python}
# This is a "list".
favourite_foods = ["Pizza", "Pancakes", "Toasted Cheese Sandwich"]
```

Example:
```{data-language=python}
# In meters
distance_to_wall = 1.25
```

```instruction
(1) - Define these variables in your notebook, and fill in your
own values.
```

```instruction
(2) - Ask your neighbours for their favourite decimal number
and make a list of these. Called `favourite_decimals`.
```


### Types

The type of a variable informs how we can use the values.

For example, we can add and divide numbers, but dividing strings
doesn't make a lot of sense.

We can count the number of elements in a list, but it doesn't make
sense to "count" anything on a single number.

We can learn the type of a variable by using the `type` function:

```{data-language=python}
suburb = "Carlton"
print(type(suburb))
```

```note
We've also introduced functions here. The "print" and the "type"
functions. We will see more of these in the next section.
```

```instruction
(3) - Figure out the type of the variables defined in Exercises 
1 and 2.

Bonus (3.1): 

Redefine the variable assigned to your distance to the wall and make
it into an integer: the `int` type in Python.

Bonus (3.2): 

Do you expect the type of the "favourite_foods" and "favourite_decimals"
variables to have the same type? Do they?
```


```open
Group Question 1: 
- Are there some types you've heard of but not seen here? 
- Can you imagine some other types of values?  
```


## Functions and Operators

We've seen how to define variables and assign values. We would now
like to perform actions and operations on these values. 

**Functions** are the means by which we can manipulate values. We'll look at
some functions that come with Python, and later on we will define our own.

### Evaluating Functions

We _call_ a function by writing:


```{data-language=python}
function_name(argument_1, argumnet_2, ...)
```

An argument is the input to your function.

### Built-In Functions


The following is an example of _calling_ the _print_ function:
```{data-language=python}
print("Hello, World!")
```

Here, `print` is the function name, and `"Hello World"` is the first (and
only) argument.


```instruction
(4) - Use the "print", "min", "sum" functions to look at the 
list of "favourite_decimals".

(4.1) - What is the sum of your favourite decimals variable?
      - What is the function name, and what is the argument?

(4.2) - What is the smallest favourite decimal?
```


A useful function is the `range` function. It let's you get a list of numbers.
To see the values, we need to use the `list` function on the range:

```{data-language=python}
list(range(5, 10))
```

[Python Built-In function
documentation](https://docs.python.org/3/library/functions.html).

```instruction
(5) - Use the "range" function to print out all the numbers from
0 to 10.

(5.1) - Look up the "range" function in the Python documentation, and
add a new argument so that we only get the even numbers in this range.

Bonus: What is the sum of these two lists?

Bonus: What are the lengths of these lists? (Hint: Look in the 
documentation for the appropriate function).
```

```note
The Python documentation (which we linked to above) is an 
invaluable resource for learning about available functions 
and how to use them. We will use it through-out the session, 
so we will see more on this later.
```


### Built-In Operators

We've summed up an entire list, but we can also just add two
numbers together using the `+` operator:

```{data-language=python}
fun = 5 + 6
print(fun)
```

```instruction
(6) - What else can be added together? Strings? Lists?

(6.1) - What can't be added together?

Bonus - Can you guess some other operators that might exist? What do they 
do on integers? And lists?
```

### Function Reference

Below are the functions we've seen:

-----------       -------------     ------------
type              list              print
sum               range             len
-----------       -------------     ------------



## Keywords and Syntax

In the sections to follow we will see
[keywords](https://docs.python.org/3/reference/lexical_analysis.html#keywords).
These are special words that Python uses to determine how the program is
structured.

The structure of a program is referred to as "Syntax". It determines
what is a comment, what is a function, what is a variable, a value,
and indeed _every element_ of the program.

In practice, keywords are words that we cannot use for variable names.

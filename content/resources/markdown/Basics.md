
----

# Fundamentals 2

We've seen how to define variables and assign values, and do a bit of basic
manipulation of those variables.

However, in any real-world program we're going to be interested in
performing our own transformations on data, and combining transformations
together into a larger overall purpose.

We'll see later on that our main task today will be to investigate movie
reviews; and this may involve many steps.

Functions are a way of collecting together many steps of logic into a single
statement. Much like how we would think of walking to the shops and buying
apples as a "single thing", instead of all the individual steps that that
would involve.


## User-Defined Functions

To define a function we will use some keyswords for the first time.

The `def` keyword let's us begin what we call a "function block", and
the `return` keyword let's us set what we refer to as the "return value" of
the function.

Let's take a look at an example:

```{data-language=python}
def seven_up(x):
    y = x + 7
    return y
```

<center>
![](resources/images/user-defined-function-examples.png)
</center>

```
Group Question 2: How many arguments does the function below have?
```

```{data-language=python}
def greet_person(name, location):
    result = "Hello " + name + "! How's things in " + location + "?"
    return result
```

```note
The syntax for specifying a function block in Python is that
the function body, i.e. the "steps", are indented.

For consistency, we will say that there should be 4 spaces
for all of the steps in the function body relative to the
position of the "def" keyword.

This rule actually applies to ANY block in Python, such as
an "if" statement, which we will see later.
```

```
Group Question 3 - What are the steps in the "foo" function
below?
```

```{data-language=python}
def foo(x):
    w = 1
    y = x + (7 * w)
    print(y)
w = 9
```

```instruction
(7) - Evaluate the "seven_up" and "greet_person" functions, 
with different values, in your notebook. 

(7.1) - Write a new function, "always_five" that always returns
the value 5.

(7.2) - Delete the "return result" line from the "greet_person"
function and try and evaluate it again, like you did in step 7.
What is different?
```

## Objects and Functions on them

We often think of Python as an Object-oriented programming language.

An "Object" is a way of representing something about the world. Examples of
things we might like to represent are:

- Houses
- Our friends
- Places we've been
- Words
- Sentences

We won't go into the details of objects (and classes) here (take a look at
[this](https://www.digitalocean.com/community/tutorials/how-to-construct-classes-and-define-objects-in-python-3)
and
[this](https://en.wikibooks.org/wiki/A_Beginner%27s_Python_Tutorial/Classes)
for a nice introduction), but we will make use of them.

As usual let's investigate by example. Consider the following string:

```{data-language=python}
friends = "Jean Girard,Ricky Bobby,Cal Naughton Jr.,Susan"
```

We'd like to count the number of friends in this string. One solution would be
to convert this string into a list, and count the elements in the list.

The function [`split`](https://docs.python.org/3/library/stdtypes.html#str.split)
can be used here. This is defined _on_ the string itself:

```{data-language=python}
list_of_friends = friends.split(",")
```

```instruction
(8) - Run the code above, and count the number of friends 
in the list.

(8.1) - Try the "replace" function on a string.

(8.2) - Try the "upper" and "lower" functions on strings.

(8.3) - Challenge: Use the "join" function on a string to go
        from the "list_of_friends" variable back to the
        string where the friends are separated by commas.
        This can be done in one line.
```


## Control Structures

So far we've seen how to define functions and variables, but we're yet to make
any kind of decision based on their values!

Control structures let us change our program _flow_ based on the values.

![](resources/images/quest.gif)

Let's see an example of an "if/else" statement, along with the `==` operator
(named "equals").

```{data-language=python}
quest = "..."

if "Learn Python" == quest:
    print("You may pass!")
else:
    print("*You get thrown off the bridge and into the ravine.*")
```

```instruction
(9) - Run the code above. What happens? Can you put in a value
that lets you pass?

(9.1) - What is the type of: "Learn Python" == quest
```


### Logical Operators

We can use any of the following operators for making decisions:

-------------------------------------------
Name                              Operator
--------------------------------- ---------
Equal To                          `==`

Not Equal To                      `!=`

Greater Than                      `>`

Less Than                         `<`

Greater Than Or Equal To          `>=`

Less Than Or Equal To             `<=`
-------------------------------------------

```instruction
(10) - Try out the above operators on integers and strings. 

Which ones can you use to compare an integer to a string?

(10.1) - Are upper case letters smaller than, equal to, or larger 
than lower case letters?

(10.2) - Does the order of elements matter when you compare if 
two lists are equal? What about tuples?
```

### Looping

<center>
![](resources/images/turning.gif)
</center>

Oftentimes we will want to run a certain step several times, or even
indefinitely!

One of the standard tools is the `for` loop, which let's us perform
a step a given number of times. Let's see an example:

```{data-language=python}
for k in range(0, 10):
    print(k)
```


----

# Basics

### User-Defined Functions

```{data-language=python}
def function_name(arguments):
    # *do something*
    print("Hello")
    return some_output 
```

Simple example:

Define -- A function that takes a number and adds 7

```{data-language=python}
def seven_up(x):
    y = x + 7
    return y 
```
Use the function --

```{data-language=python}
> seven_up(5)
> 12
```

```instruction

- Define a function which takes two numbers and adds them together.
- Define a function which takes a name, such as "Gala" and prints 
    > "Hello Gala!"
- Define a function which takes no arguments and always returns 5
```
<center>
worbank: <font color='blue'><b>
            def return 
            </b></font>
</center>

### Control Structures

#### True/False statements
<center>
`<, <=, ==, >=, >, !=`
</center>

```{data-language=python}
> 5==7
> False

> 5==5
> True

> 5>=3
> True

> "Gala"=="gala"
> False
```

```instruction

- Are uppercase letter smaller than, equal to, or larger than lowercase letter. 
- Can you compare an int and a str?
- Does order matter when you compare if two lists are equal?
- What about two tuples?
- What about two dictionaries?
```

#### If/Else if/Else
```{data-language=python}
if some_statement:
    # this is the first statement it will try
    print('The first statement was true!')
elif some_other_statement:
    # this is the second statement it will try
    print ('The next statement was true!')
else:
    # this is what it will do if nothing above it was true
    print('All stemements were false!')
```

Simple example:
If a number is equal to 5:add 2, if a number is smaller than 5: multiply by 2, if a number is larger than 5: divide by 2

```{data-language=python}
x = 7
if x==5:
    y = x+2
elif x<5:
    y = x*2
elif x>5:
    y = x/2
print(y)
```

Worbank: 

<font color='magenta'><b>if elif else and or </b></font>

### Looping



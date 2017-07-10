
----

# Pandas!

## Libraries

<center>
![](resources/images/library.gif)
</center>

A Library in Python is a collection of methods and functions that let you do interesting things without writing raw code to do it. 

- You import an entire library in order to use it in your code, 
    - you can give it an alias, 
    ```{data-language=python}
    # Import the pandas library and call it 'pd'
    import pandas as pd
    ```
    - or just use its name 
    ```{data-language=python}
    # Import the sys library (as sys)
    import sys
    ```
- you can import only the functions you want to use
    ```{data-language=python}
    # Import the 'ceil' function from the 'math' library
    from math import ceil
    ```
How you import libraries affects the way you use it in your code. 

The ceil function in the math library lets you find the value of rounding up a number. 

```{data-language=python}
import math as ma
ma.ceil(9.7)
``` 
```{data-language=python}
import math
math.ceil(9.7)
``` 
```{data-language=python}
from math import ceil
ceil(9.7)
``` 

```note
Python comes with some libraries already installed. 'math' is one 
of them. These pre-installed libraries are all in the Python 
Standard Library. 
There are lots of handy libraries that you can install and use 
(how to do it is beyond our scope :( )
```
[The Python Standard Library](https://docs.python.org/3/library/index.html)

Today we will be learning about the pandas library. Pandas lets us play with data!

## The pandas library
<center>
![](resources/images/panda.gif)
</center>

```instruction
(13) - Import pandas into your notebook and give it 'pd' 
as an alias. 
```

We found some data on IMDB about movies, these files are located under the folder "data". We can read each of these files into what we call a "DataFrame" and play with the data. This DataFrame is an object, and as such, it has many functions we can use to investigate it and have fun. 

```instruction
(14) - Use the read_csv function from pandas to read the file 
"data/movies.csv", assign this file to a variable, "movies". 

(14.1) - Look at the first 5 rows of your data using the "head" 
function on "movies"

    movies.head(5)

What are the columns in this data?

(14.2) What can you predict will be the "type" of what you observe
 in each column. 
```

We can access "attributes" of the DataFrame to learn things about it. 

For example if I want to know the column names of my dataframe I can do the following:
```{data-language=python}
movies.columns
```
```instruction
(15) - Investigate the following attributes:
- shape
- dtypes
```

We can investigate a full column in our DataFrame, the column when referenced by the index, is called a "Series". We can look at the "title" in our DataFrame as follows:
```{data-language=python}
movies['title']
```
We can look locate data in our DataFrame using the attribute "loc". To access a particular row, or more precisely, the row indexed 27, we would do,
```{data-language=python}
movies.loc[27]
```
We can also access a particular based on a value in the column:
```{data-language=python}
movies.loc[movies['title']=="Ghostbusters (2016)"]
```
```instruction
(16) - Read in the file "ratings.csv" in the data folder. 

(16.1) - How many ratings are in this file?

(16.2) - Find all the ratings for userId == 14

(16.3) - Asumming 5 is the best score, what is the title of their
 best rated movie?

(16.4) - What are the genres of this movie?

(16.5) - Challenge: Use the "sort_values" function on your ratings 
DataFrame and sort them according to the "rating" column. Can you
  sort them from largest to smallest, ie. descending
```
Hint: You can find documentation here -> [sort_values](https://pandas.pydata.org/pandas-docs/stable/generated/pandas.DataFrame.sort_values.html)

Pandas makes it really easy for us to add columns to our DataFrame. Suppose we hate this 5-star rating, instead we want to see a score out of 100, and we want the name of the column to be "score"
```{data-language=python}
ratings['score'] = 100 * ratings['rating']/5
```
We can also find out how many unique different "scores" we assigned, by using the "unique" function on the "scores" series.

```instruction
(17) - Find the unique scores by doing the following:
- follow the code above to assing your ratings data a "score"
- access the "score" column as a series, like we did to access
 movie titles (movies['title'])
- use the "unique" function to get all unique scores. 
```




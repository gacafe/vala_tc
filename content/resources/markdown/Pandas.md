
----

# Pandas!

In this section we'll see our first Python Library. But before we get into
that, we need first take a look at how libraries work!

## Wordbank

-----------       -----------------    --------------
library           import               as
ceil              math                 alias
DataFrame         Series               head
dtypes            multi-index          loc
csv               sort_values          unique
-----------       -----------------    --------------

## Libraries

<center>
![](resources/images/library.gif)
</center>

A Library in Python is a collection of functions that let you do
interesting things without writing raw code to do it. 

- You import an entire library in order to use it in your code, 
    - You can give it an alias, 
    ```{data-language=python}
    # Import the pandas library and call it 'pd'
    import pandas as pd
    ```
    - or just use its name 
    ```{data-language=python}
    # Import the sys library (as sys)
    import sys
    ```
- You can import only the functions you want to use
    ```{data-language=python}
    # Import the 'ceil' function from the 'math' library
    from math import ceil
    ```

How you import libraries affects the way you use them in your code. 

The `ceil` function in the `math` library lets you find the value of rounding
up a number. Let's take a look at some examples:

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
Python comes with some libraries already installed. 

The 'math' library is one of them. These libraries that come
pre-installed are called "The Python Standard Library"

One of the main benefits of Python is that there is a large and
well-supported community of handy libraries that you can install
and use for free! 
```

<center>
![](resources/images/imports.jpg)
</center>


[The Python Standard Library](https://docs.python.org/3/library/index.html)

Today we will be learning about the [pandas
library](http://pandas.pydata.org). Pandas lets us play with data!

## The pandas library
<center>
![](resources/images/panda.gif)
</center>

```instruction
In your notebook environments we have pre-installed pandas
for you.

(13) - Import pandas into your notebook and give it 'pd' as an alias. 
```

### Worked Example: Movie Reviews 

![](resources/images/pandas-clapping.jpg)

We found some data about movies, these files are located under the folder
`data` on your instances.

We can read each of these files into what we call a `DataFrame` and play with
the data. This `DataFrame` is an object, and as such, it has many functions we
can use to investigate it and have fun!

```instruction
(14) - Use the read_csv function from pandas to read the file 
"data/movies.csv", assign this file to a variable, "movies". 

(14.1) - Look at the first 5 rows of your data using the "head" 
function on "movies"

    movies.head(5)

What are the columns in this data?

(14.2) Looking at the values, what do you think the "type" of the
data in each column is? Write your guesses down.
```

```note
On Indices

An index is used by pandas to provide a unique identifier for 
each row. If none is specified, Pandas will automatically insert 
one based on the row number.

We can set multiple columns to define the index as long as the
combination of values is unique. This is called a multi-index.
```

```
Group Question 5 - Can you think of a common multi-index that
you use in your everyday life?
```

We can access attributes of the DataFrame to learn things about it. 

For example if I want to know the column names of my dataframe I can do the
following:

```{data-language=python}
movies.columns
```

```instruction
(15) - Investigate the following attributes:
- shape
- dtypes
```


We can investigate a full column in our DataFrame.
the column when referenced by the index, is called a "Series".

Let's investigate our data a bit more closely, and look at the "title" column
in our `DataFrame` as follows:

```{data-language=python}
movies['title']
```

This results in what Pandas calls a
[`Series`](https://pandas.pydata.org/pandas-docs/stable/generated/pandas.Series.html).


```note
On Series and DataFrames

Pandas makes a differentiation between "Series" and "DataFrames".
This becomes important when thinking about what functions we can
perform on them.

Intuitively, we will think of a Series as a single column in a
DataFrame which is still accessible via the index.
```

We can locate data in our DataFrame using the attribute `loc`. To access
a particular row, or more precisely, the row indexed by `27`, we would write,

```{data-language=python}
movies.loc[27]
```

We can also access a particular set of rows based on a value in the column:

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
sort them from largest to smallest, ie. descending?
```

(Hint: You can find documentation
[here](https://pandas.pydata.org/pandas-docs/stable/generated/pandas.DataFrame.sort_values.html).)

Pandas makes it really easy for us to add columns to our DataFrame. Suppose we
are not fans of this 5-star rating, instead we want to see a score out of 100,
and we want the name of the column to be "score"

```{data-language=python}
ratings['score'] = 100 * ratings['rating']/5
```

We can also find out how many unique different scores we assigned, by using
the `unique` function on the `scores` series.

```instruction
(17) - Find the unique scores by doing the following:

    - Follow the code above to assing your ratings data a "score"

    - Access the "score" column as a series, like we did to access
      movie titles (movies['title'])

    - Use the "unique" function to get all unique scores.
      How many are there?
```

```instruction
(18) - Challenge - Merging DataFrames

As it stands, the "ratings" DataFrame we only see the movieId, and 
not the name of the movie. If we were able to merge in the "movies" 
DataFrame, then we could see the ratings together with the movie name 
and other data.

Use the "merge" function on a DataFrame to merge "movies" into 
"ratings".

(18.1) - Extra Challenge - Can you find a way to only merge the 
movie name, and not the other columns.
```

<pre class="instruction">Exercise - (19) - Joint Exercises

Later in the Tech Camp you will learn how to use APIs. IMDB has an API
that is accessible via the library <a href="https://github.com/richardasaurus/imdb-pie">ImdbPie</a>.

This can be used to get the movie poster for the movies in this data 
set.

If you feel comfortable with APIs, come back to this exercise and use
the "imdbId" field from the "movies" data set to find the movie poster
for that movie and display it in the notebook!

Hint: Here are two functions that will be handy:

def to_imdb_format(imdbId):
    return "tt" + (("0" * 7) + str(imdbId))[-7:]

def poster_image(imdbId):
    from IPython.display import Image
    id_ = to_imdb_format(imdbId)
    title = imdb.get_title_by_id(id_)
    return Image(url=title.poster_url, width=200, height=200)
</pre>




```instruction
(20) - Ambitious - Finding Friends To Watch Movies With

Write some code that, using the "reviews" DataFrame, finds
users that reated the same movie highly (a 5, say) and then
in this way build a new DataFrame, "friends", with the following
columns:

    friendId1, friendId2

```

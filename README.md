# Evaluating Efficiency

1. Read [Big O Notation for Newbies with Ruby](http://www.datakicks.com/2016/06/04/big-o-notation.html)
2. Work through [this quiz](http://www.codequizzes.com/computer-science/beginner/big-o-algorithms) on Big O. Try out the code snippets and read the answers.
3. Do the assignment below and submit a PR with your answers.


## Assignment - Determine the big O
1) Give the efficiency of each of the following code snippets and
2) Justify your answer

### Examples
[Examples](examples.md)

### Problems for you

Snippet 1 - Big O:

I would define this as 0(n) linear because the efficiency
will be directly related to how long the array is,
Since you're iterating over each item in the array.

```ruby
def largest?(array, value)
  array.each do |item|
    return false if item > value
  end
  return true
end
```

Snippet 2 - Big O:

I would also define this as 0(n) linear, because, again,
it's going to depend on how long the (assumed) array of
customers is.  Although we technically are iterating
over it twice, I believe we'd simplify 0(2n) to 0(n).

```ruby
def info_dump(customers)
  puts "Customer Names: "
  customers.each do |customer|
    puts "#{customer[:name]}"
  end
  puts "Customer Locations: "
  customers.each do |customer|
    puts "#{customer[:country]}"
  end
end
```

Snippet 3 - Big O:

I'd say 0(1) constant, because no matter how large the
data set, since we're only checking the first element,
it's always going to take the same amount of time.

```ruby
def first_element_is_red?(array)
  array[0] == 'red' ? true : false
end
```

Snippet 4 - Big O:

0(n^2) quadratic because the loops are nested.
Depending on the length of the data set, the
efficiency would decrease exponentially.

```ruby
def duplicates?(array)
  array.each_with_index do |item1, index1|
    array.each_with_index do |item2, index2|
      next if index1 == index2
      return true if item1 == item2
    end
  end
  false
end
```

Snippet 5 - Big O:

This one is a little confusing to me.  I'd say it's
constant because the arrays of words and endings are set
with three items each, so the efficiency shouldn't change.
However if we could change those arrays, I'd say it
was 0(n*m) because the loops are nested.

```ruby
words = [chocolate, coconut, rainbow]
endings = [cookie, pie, waffle]

words.each do |word|
  endings.each do |ending|
    puts word + ending
  end
end
```

Snippet 6 - Big O:

0(n) linear, because even though this each loop is within
a method, it doesn't affect it - it's not like
nesting two each loops.  The efficiency will directly
relate to the size of the data set.  I'm assuming here
that you would call the method print_array on the array
numbers.

```ruby
numbers = # some array (you don't know contents)

def print_array(array)
    array.each {|num| puts num}
end
```

Snippet 7 - Big O:

Since there are nested loops - an each loop and a while
loop - I'm going to assume that this is 0(n)
exponential.  The sort will take longer depending on
the length of the set for both loops.

```ruby
# this is insertion sort
(2...num.length).each do |j|
    key = num[j]
    i = j - 1
    while i > 0 and num[i] > key
        num[i+1] = num[i]
        i = i - 1
    end
    num[i+1] = key
end
```

Snippet 8 - Big O:

Again I'm going to assume 0(n) because of
looped statements here.  The length/size of data set
affects both do/end block.

```ruby
# this is selection sort
n.times do |i|
  index_min = i
  (i + 1).upto(n-1) do |j|
    index_min = j if a[j] < a[index_min]
  end
  a[i], a[index_min] = a[index_min], a[i] if index_min != i
end
```

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

**O(N)**, we are iterating through each element, which means the performance of this algorithm is proportional to the amount of items in the array since we are operating on each element once.

```ruby
def largest?(array, value)
  array.each do |item|
    return false if item > value
  end
  return true
end
```

Snippet 2 - Big O:

**O(N)**, we have two separate loops that are not dependent on each other. In big O, we only care about the element with the greatest latency/longest processing time. Both take the same amount of time - operating on each element once.

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

**O(1)**, no-growth curve/not affected by the size of the array. `first_element_is_red` is only concerned about whether an element is red.

```ruby
def first_element_is_red?(array)
  array[0] == 'red' ? true : false
end
```

Snippet 4 - Big O:

**O(N^2)**, we have two nested loops each operating on one element at a time. So each loop is O(N), and since they're nested, it becomes an exponential operation.

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

**O(N*M)**, we have two loops that are nested BUT do not depend on each other. Both are linear and we combine their times.

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

**O(N)**, each element is visited once, a linear operation.

```ruby
numbers = # some array (you don't know contents)

def print_array(array)
    array.each {|num| puts num}
end
```

Snippet 7 - Big O:

**O(N^2)**, we have nested loops, `.each` and `while` which are dependent on each other so we'll have an exponential operation. Insertion sort is also known to have a complexity of O(N^2).

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

**O(N^2)**, we have nested loops, `.times` and `.upto` which are dependent on each other so we'll have an exponential operation. Selection sort is also known to have a complexity of O(N^2).

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

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
```ruby
def largest?(array, value)
  array.each do |item|
    return false if item > value
  end
  return true
end

O(n) Linear.  Because as the data set size grows the amount of loop iterations grows linearly.


```

Snippet 2 - Big O:
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

O(n) Linear.  Even though there are two separate loops going on, the amount of loop iterations grow linearly as the data size increases.

```

Snippet 3 - Big O:
```ruby
def first_element_is_red?(array)
  array[0] == 'red' ? true : false
end

O(1) Constant.  No matter how big the array becomes, the processing time to access the array[0] will be always the same.  
```

Snippet 4 - Big O:
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

O(n^2) Quadratic.  Loop inside another loop.  As outer loop iterates, inner loop runs the same times(the length of the given array) as outer loop's iteration times. As the data size increases, processing time will be n * n, which makes it n^2.

```

Snippet 5 - Big O:
```ruby
words = [chocolate, coconut, rainbow]
endings = [cookie, pie, waffle]

words.each do |word|
  endings.each do |ending|
    puts word + ending
  end
end

O(n * m) Quadratic.  Loop inside another loop.  As the outer loop iterates, for every word in words array(n), inner loop will go through each element in endings array(m).

```

Snippet 6 - Big O:
```ruby
numbers = # some array (you don't know contents)

def print_array(array)
    array.each {|num| puts num}
end

O(n)  Linear.  As the size of numbers array increases, processing time will increase linearly.  If array.length is 5, it will iterate 5 times.  if array.length is 50, then it will iterate 50 times.  
```

Snippet 7 - Big O:
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

O(n^2)  Loop inside another loop and a insertion sort has a complexity of O(n^2).
```

Snippet 8 - Big O:
```ruby
# this is selection sort
n.times do |i|
  index_min = i
  (i + 1).upto(n-1) do |j|
    index_min = j if a[j] < a[index_min]
  end
  a[i], a[index_min] = a[index_min], a[i] if index_min != i
end

O(n^2). Loop inside another loop.  Selection sort has a complexity of O(n^2)
```

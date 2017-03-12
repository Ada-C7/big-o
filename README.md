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

# O(n) because the time to process the algorithm will grow
# in direct proportion to the size of the data set.
```ruby
def largest?(array, value)
  array.each do |item|
    return false if item > value
  end
  return true
end
```

Snippet 2 - Big O:

# O(n) because the time to process the algorithm will grow
# in direct proportion to the size of the data set and,
# while there are two loops, they are in line with each other and not nested.
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
#
# O(1) because no matter how many elements in the array,
# it will take the same amount of time to find the first element
# and perform the comparison.
```ruby
def first_element_is_red?(array)
  array[0] == 'red' ? true : false
end
```

Snippet 4 - Big O:

# 0(n^2) because there is a 0(n) loop nested within another 0(n) loop
# worst case being the very last element would be the element to return true (or none will)

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

# O(n * m) because the two loops do not depend on each other but both run linearly in time
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

# O(n) because the time to process the algorithm will grow
# in direct proportion to the size of the data set.

```ruby
numbers = # some array (you don't know contents)

def print_array(array)
    array.each {|num| puts num}
end
```

Snippet 7 - Big O:
#O(n^2) - because it is insertion sort, also because two nested loops of O(n)

```ruby
# this is insertion sort

(2...num.length).each do |j|
    key = num[j]
    i = j - 1
    while i > 0 and num[i] > keys
        num[i+1] = num[i]
        i = i - 1
    end
    num[i+1] = key
end
```

Snippet 8 - Big O:
#O(n^2) - because it is selection sort, also because two nested loops of O(n)

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

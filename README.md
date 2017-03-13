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

Snippet 1 - Big O: O(n), because in the worst case, we will iterate through the array once.
```ruby
def largest?(array, value)
  array.each do |item|
    return false if item > value
  end
  return true
end
```

Snippet 2 - Big O: O(n), because while we have two each loops, they are not nested. So O(n + n) = O(n)
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

Snippet 3 - Big O: O(1), because no matter how big the array is, we're only checking one element from it (the first).
```ruby
def first_element_is_red?(array)
  array[0] == 'red' ? true : false
end
```

Snippet 4 - Big O: O(n^2), because we have a nested each_with_index loop. We will be looping through the whole array for each element of the array.
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

Snippet 5 - Big O: O(n * m), because though the each loops don't depend on each other, they each run in linear time.
```ruby
words = [chocolate, coconut, rainbow]
endings = [cookie, pie, waffle]

words.each do |word|
  endings.each do |ending|
    puts word + ending
  end
end
```

Snippet 6 - Big O: O(n), because we are looping through the array once.
```ruby
numbers = # some array (you don't know contents)

def print_array(array)
    array.each {|num| puts num}
end
```

Snippet 7 - Big O: O(n^2), because in the worst case, for each element we're sorting, we might have to compare it to every other element in the array again.
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

Snippet 8 - Big O: O(n^2), because in the worst case, for each element we're sorting, we might have to compare it to every other element in the array again.
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

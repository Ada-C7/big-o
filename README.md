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
**Efficiency = O(n) Linear because we have to access each element of the array**
```ruby
def largest?(array, value)
  array.each do |item|
    return false if item > value
  end
  return true
end
```

Snippet 2 - Big O:
**Efficiency = O(n) Linear because although we have two loops, they are not nested / tied to each other and we still have to access each element of both arrays one time**
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
**Efficiency = 0(1) because array element access is defined as O(1)**
```ruby
def first_element_is_red?(array)
  array[0] == 'red' ? true : false
end
```

Snippet 4 - Big O:
**Efficiency = 0(n^2) because we a loop nested inside the same loop** 
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
**Efficiency = O(N) because the algorithm's performance is directly proportional to the size of the data set being processed**
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
**Efficiency = O(n) Linear because we have to access each element of the array**
```ruby
numbers = # some array (you don't know contents)

def print_array(array)
    array.each {|num| puts num}
end
```

Snippet 7 - Big O:
**Efficiency = O(n^2) because the algorithm's performance is proportional to the square of the data set size**
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
**Efficiency = O(n^2) because the algorithm processes each element of a set, and that processing requires another pass through the set.**

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

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
```
TW: This is an O(n) problem, because the complexity of it is dependent on the size of the array (n). 

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
```
TW: This is an O(n) problem, while there are 2 (n) loops, they happen in succession (2n) and so the complexity still remains O(n). 

Snippet 3 - Big O:
```ruby
def first_element_is_red?(array)
  array[0] == 'red' ? true : false
end
```
TW: This is an O(1) problem, while it's an array -- the size of the array is irrelevant in the code and the only input required is the array[0].

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
```

TW: This is an O(n^2) problem, there are two loops which iterate on an array. If the array had a size of 10, there would be 100 iterations from these 2 loops.

Snippet 5 - Big O:
```ruby
words = [chocolate, coconut, rainbow]
endings = [cookie, pie, waffle]

words.each do |word|
  endings.each do |ending|
    puts word + ending
  end
end
```

TW: This is an O(n^2) problem, because of the nested loops which have to run through all the combinations of both arrays.

Snippet 6 - Big O:
```ruby
numbers = # some array (you don't know contents)

def print_array(array)
    array.each {|num| puts num}
end
```

TW: This is an O(n) problem, because the complexity of it is only dependent on the size of the array (n). 

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
```

TW: This is an O(n^2) problem, the while loop nested within has a complexity of n, and the outside .each loop also has a complexity of n. Nested, this becomes an O(n^2) complexity.

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
```
TW: This is an O(n^2) problem, because of the nested array within the .times loop. 

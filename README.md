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
This example is Big O(n)/linear because it's going through each item in the array, looking at that particilat item, and determining whether or not it is greater than the given value in the argument. If more elements are added to the array the additional time it will take to process will be proprtional to the elements added.

```ruby
def largest?(array, value)
  array.each do |item|
    return false if item > value
  end
  return true
end
```

Snippet 2 - Big O:
This example is Big O(n)/linear because for each customer it is returning the customer's name and location. The amounf of time it will take to process the information is proportional to the number of elements in the customers hash. 

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
This example is Big O(1)/constant because it is only looking at the fist element of the array and returning whether the statement is true or false. The length of the array does not matter in this case because it is only concerned about the first element.

```ruby
def first_element_is_red?(array)
  array[0] == 'red' ? true : false
end
```

Snippet 4 - Big O:
This example is Big O(n^2)/logrithmic because of the nested array.each loops. 

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
This example is Big O(n^2)/logrithmic because it is iterating over each element from the words array while also iterating over each element from the endings array and adding them together to crate a new string. The nested loops make it logrithmic.

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
This example is Big O(n)/linear because for each element in the numbers array, the number will is being printed. If more items are added to the numbers array, the time it will take to execute is proportional to the number of elements added.

```ruby
numbers = # some array (you don't know contents)

def print_array(array)
    array.each {|num| puts num}
end
```

Snippet 7 - Big O:
This example is Big O(n^2)/logrithmic because it uses insertion sort.

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
This example is Big O(n^2)/logrithmic because it uses selection sort.

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

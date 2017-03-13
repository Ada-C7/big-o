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
Efficiency: O(n) or linear

Justify: The worst case is for each loop part of the method which is iterating through an array.  The length of time it will take to complete the method is dependent on the number of items in the array.  The "return true" line seems like O(1), but that's best case, so I think we go with O(n).


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
Efficiency: O(n)

Justify:  because the algorithm's performance is directly proportional to the size of the data set being processed.  It prints 2 lines for each customer.


Snippet 3 - Big O:
```ruby
def first_element_is_red?(array)
  array[0] == 'red' ? true : false
end
```
Efficiency: O(1)

Justify:  Constant or no growth curve because the method only ever looks at the element at the 0 index of an array.

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
Efficiency: O(log n)

Justify: It has a nested loop to go through the array and make the comparison, but it isn't a case where the algorithm increases exponentially.

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
Efficiency: O(n^2) or Quadratic

Justify:  Big O Quadratic here because the nested each loop results in the words having to be multiplied by each ending.  The printed results will be in the amount of words x endings.

Snippet 6 - Big O:
```ruby
numbers = # some array (you don't know contents)

def print_array(array)
    array.each {|num| puts num}
end
```
Efficiency: O(n) or Linear

Justify:  The length of the data set determines the algorithm's performance.  The method iterates through the array and prints each number once.

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
Efficiency: O(n^2)

Justify: Quadratic because the work of the sort function increases exponentially based on the number of items to sort.

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
Efficiency: O(n^2)

Justify: Quadratic because the work of the sort function increases exponentially based on the number of items to sort.

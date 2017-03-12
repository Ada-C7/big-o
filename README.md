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
Answer: O(n) - Since comparing item to value is constant work

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
Answer: O(n) - Since puts-ing a message for every element is constant work

Snippet 3 - Big O:
```ruby
def first_element_is_red?(array)
  array[0] == 'red' ? true : false
end
```
Answer: O(1) - Since only one element is being worked on, the algorithm will always take the same amount of time

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
Answer: O(n^2) - Since adding another element to array will double the work due to the method comparing every element of the array to every other element

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
Answer: O(x^n) - Since the computation time will increase exponentially if the arrays got larger

Snippet 6 - Big O:
```ruby
numbers = # some array (you don't know contents)

def print_array(array)
    array.each {|num| puts num}
end
```
Answer: O(n) - Since puts-ing each element is constant work

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
Answer - O(log n) -  Since the elements under consideration begin at the [2] element

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
Answer: O(n^2) - Since every element in the array is compared to every other element

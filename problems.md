### Problems for you

Snippet 1 - Big O:
```ruby
def largest?(array, value)
  array.each do |item|
    return false if item > value
  end
  return true
end

ANSWER: Big O: O(n), linear, where n is the size of the array.
This is because the code runs through each element in the array once, to compare it to the given value.
```````````````````````````````````````


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

ANSWER: Big O: O(n), linear, where n is the size of the array.
This is because the 2 loops run sequentially, and are not nested. Each loop runs through every element in the array once. This makes the efficiency n + n, or 2n, which is still linear, and is still considered O(n).
```````````````````````````````````````


Snippet 3 - Big O:
```ruby
def first_element_is_red?(array)
  array[0] == 'red' ? true : false
end

ANSWER: Big O: O(1), constant.
 This is because we are only looking at the first element in the array.
 No matter how big the array is, we are only considering one element.   
```````````````````````````````````````


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

ANSWER: Big O: O(n^2), n-squared, where n is the size of the array.
 This is because of the nested loop. For every element in the array, we must consider every element in the array, so each element is seen n*n times.   
 (In other words, we go through the whole list of n elements, n times.)
```````````````````````````````````````


Snippet 5 - Big O:
```ruby
words = [chocolate, coconut, rainbow]
endings = [cookie, pie, waffle]

words.each do |word|
  endings.each do |ending|
    puts word + ending
  end
end

ANSWER: Big O: O(n * m), where n is the size of the 'words' array, and m is the size of the 'endings' array. This is because of the nested loops. For each of the n words, all m endings are seen.
```````````````````````````````````````


Snippet 6 - Big O:
```ruby
numbers = # some array (you don't know contents)

def print_array(array)
    array.each {|num| puts num}
end

ANSWER: Big O: O(n), linear, where n is the size of the array.
 This is because the code runs through each element in the array once.
```````````````````````````````````````



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


ANSWER: Big O: O(n^2), n-squared, where n is the size of the array.
This the insertion sort algorithm., which has a (worst case) Big O of n^2, because element (which is used once as a key), must (in the worst case) be compared with every other element.
(I think it's actually (1/2)(n^2) because once 2 elements have been compared, they won't be compared again, but in Big O terms, that is equivalent to an n^2 efficiency.)
```````````````````````````````````````


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
ANSWER: Big O: O(n^2), n-squared, where n is the size of the array.
This the selection sort algorithm, which has a (worst case) Big O of n^2,
because for each of the n positions in the array, every element must be considered.
```````````````````````````````````````

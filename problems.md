# Evaluating Efficiency



Snippet 1 - Big O:
```ruby
def largest?(array, value)
  array.each do |item|
    return false if item > value
  end
  return true
end
```

**Answer** O(n)
**Explanation** We are visiting each item once to compare it to the argument passed through as a value.  If we touch each item in a collection once, that's O(n)

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

**Answer** O(n) more specifically---O(2n)
**Explanation** Each loop touches the items in that collection once, however we've increased the number of collections which changes the constant in front of the n but not n itself.

Snippet 3 - Big O:
```ruby
def first_element_is_red?(array)
  array[0] == 'red' ? true : false
end
```

**Answer** O(1)
**Explanation** This is a constant because the length of the collection does not impact performance.

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

**Answer** O(n^2)
**Explanation** For each item in array we have to touch all of the items in the array--therefore in the worst case scenario

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

**Answer** O(n+m)
**Explanation** Because for each value in word we also have to visit each value in endings.

Snippet 6 - Big O:
```ruby
numbers = # some array (you don't know contents)

def print_array(array)
    array.each {|num| puts num}
end
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
```

**Answer** O(n^2)
**Explanation** In the worst case scenario num[i] would have to be compared to every item in the collection to find one for which num[i] < key.

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
**Answer** O(n^2)
**Explanation** In the worst case scenario a[j] would have to be compared to every item in the collection to find one for which a[j] > a[index_min].

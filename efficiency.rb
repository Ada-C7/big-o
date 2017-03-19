
# 1)

def largest?(array, value)
  array.each do |item|
    return false if item > value
  end
  return true
end

# This is O(n) because the data grows proportionately along with the loop.

# 2)

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

# This is O(n) because the loops aren't nested, and they will run a certain number of times.

# 3)

def first_element_is_red?(array)
  array[0] == 'red' ? true : false
end

# this is constant, O(1) because we must only check the first element of the array and put it.

# 4)
def duplicates?(array)
  array.each_with_index do |item1, index1|
    array.each_with_index do |item2, index2|
      next if index1 == index2
      return true if item1 == item2
    end
  end
  false
end

# This is quadratic, O(n^2) because there are nested loops.

# 5)

words = [chocolate, coconut, rainbow]
endings = [cookie, pie, waffle]

words.each do |word|
  endings.each do |ending|
    puts word + ending
  end
end

# This is O(n * m) because though the loops are nested, they are independent and run linearly.

# 6)
numbers = # some array (you don't know contents)

def print_array(array)
    array.each {|num| puts num}
end

# This is linear, O(n) because the data grows proportionately along with the loop.

# 7)

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

# This is quadratic because as we get more elements, things get exponentially more expensive.

# 8)

# this is selection sort
n.times do |i|
  index_min = i
  (i + 1).upto(n-1) do |j|
    index_min = j if a[j] < a[index_min]
  end
  a[i], a[index_min] = a[index_min], a[i] if index_min != i
end

# This is quadratic because the data grows proportionately along with the loops.

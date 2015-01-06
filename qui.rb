#!/usr/bin/env ruby
a = [[3,188,2],[400, 322, 444, 195]]
b = Array.new
c = Array.new
count = 0
count1 = 0
pivot = 0
x = 0


def right(a, count, len, pivot)
 a[count].insert(len, a[count][pivot])
 a[count].insert(pivot, a[count][len+1])
a[count].delete_at(pivot+1)
a[count].delete_at(len+1)
end

def left(a, count, len, pivot)
	a[count].insert(len, a[count][pivot])
	a[count].insert(pivot, a[count][len+1])
	a[count].delete_at(pivot+2)
	a[count].delete_at(len+1)
end


while count < a.length
	len = a[count].length-1

while count1 < a[count].length
if pivot < len


if a[count][pivot] < a[count][len]

len -=1
count1 +=1

else
right(a, count, len, pivot)
x = pivot
pivot = len
len = x
len+=1
count1+=1

end
elsif pivot >= len

		
	if a[count][pivot] > a[count][len]
		count1+=1
		len+=1
	else
		left(a, count, len, pivot)
		x = pivot
		pivot = len
		len = x
		len -=1
	count1+=1	

end
end
end
	puts a[count]

b.insert(pivot, a[count][pivot])

count1= 0
count +=1
pivot = 0

end
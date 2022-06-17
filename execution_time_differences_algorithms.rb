
# def my_min(list)
#     arr = []
#     return list if list.length == 1

#     if list[0] < list[1]
#         arr << list.shift 
#         my_min
#     else 
#         arr << list[1]
# end



def my_min(arr)
  
    ans = arr.first
    arr.each do |num|
        ans = num if num < ans
        
    end
    ans
end


list = [ 0, 3, 5, 4, -5, 10, 1, 90 ]
p    my_min(list)  # =>  -5



puts
puts 
puts





def largest_contiguous_subsum(list)
    arr = []
    list.each_with_index do |ele1, idx1|
        list.each_with_index do |ele2, idx2|
            if idx2 >= idx1 
                arr << list[idx1..idx2].sum
            end
        end
    end
    arr.max
end



def largest_contiguous_subsum(arr)
    max_sum = arr.first
    cur_sum = 0
    i = 0
    while max_sum < (arr.length - 1)
        cur_sum += arr[i]
        if cur_sum > max_sum
            max_sum = cur_sum
        end
        if cur_sum < 0
            cur_sum = 0
        end
        i += 1
    end
    max_sum
  
    # (0...arr.length).each do |i|
    #     max_sum << arr[i]
    #     max_sum << arr.reverse[i..-1].sum
    #     max_sum << arr[i..-1].sum 
    # end
    # max_sum.max
end






list1 = [5, 3, -7]
p    largest_contiguous_subsum(list1) # => 8

list2  = [2, 3, -6, 7, -6, 7]
p    largest_contiguous_subsum(list2) # => 8 (from [7, -6, 7])

list = [-5, -1, -3]
p    largest_contiguous_subsum(list) # => -1 (from [-1])
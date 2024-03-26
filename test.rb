# def bin_sch_1st_element(matrix, target)
#     if target < matrix[0][0] || target > matrix[-1][-1]
#         return false
#     end
#     low = 0
#     high = matrix.length - 1
    
#     if target > matrix[high][0]
#         return high
#     end
#     while high>=low
#         mid = ((low+high)/2).to_i
#         if target == matrix[mid][0]
#             return mid
#         end
#         if target > matrix[mid][0] && target < matrix[mid+1][0]
#             return mid
#         end
#         if target < matrix[mid][0]
#             high = mid
#         end
#         if target > matrix[mid][0]
#             low = mid
#         end
#     end
# end

# def search_matrix(matrix, target)
#     idx = bin_sch_1st_element(matrix, target)
#     if idx == false
#         return false
#     end
#     row = matrix[idx]
#     low = 0
#     high = row.length
#     while high >= low
#         mid = ((high+low)/2)  # 0
#         # puts mid
#         if row[mid] == target
#             return true
#         end
#         if row[mid] > target
#             high = mid-1        #high=0
#         end
#         if row[mid] < target
#             low = mid+1         #low=1
#         end    
#     end
#     return false
# end

matrix = [[1,3,5,7],[10,11,16,20],[23,30,34,60]]
matrix = [[1,1],[5,5]]
target = 4

# The code `puts bin_sch_1st_element(matrix, target)` is calling the `bin_sch_1st_element` method with
# the `matrix` and `target` as arguments, and then printing the result returned by the method to the
# console.
# puts bin_sch_1st_element(matrix, target)

# # puts (5+2)/2

# puts search_matrix(matrix, target)

def merge_sort(arr)
    return arr if arr.length <= 1
    mid = arr.length/2
    left = merge_sort(arr[0...mid])
    right = merge_sort(arr[mid..])
    return merge(left, right)
end

def merge(left, right)
    result = []

    while !left.empty? && !right.empty?
        if left.first <= right.first
            result << left.shift

        else
            result << right.shift
        end
    end    
    
    result.concat(left).concat(right)
end

def quick_sort(arr)
    return arr if arr.length <= 1
    mid = arr.length/2
    pivot = arr.delete_at(mid)
    left, right = arr.partition { |element| element < pivot}
    return quick_sort(left) + [pivot] + quick_sort(right)
end


arr = [2,5,7,4,1,3,8]
sorted_arr = merge_sort(arr)
sorted_arr2 = quick_sort(arr)

print sorted_arr
puts ' '
print sorted_arr2

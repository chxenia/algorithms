
func binarySearch(_ list: [Int], _ item: Int) -> Int {
    var low = 0
    var high = list.count - 1
    
    while low <= high {
        let mid = (low + high) / 2
        let guess = list[mid]
        
        if guess == item {
            return mid
        } else if guess > item {
            high = mid - 1
        } else {
            low = mid + 1
        }
    }
    return -1
}

let arr = [1, 4, 8, 10, 12, 17, 19]

print(binarySearch(arr, 8))

// prints 2

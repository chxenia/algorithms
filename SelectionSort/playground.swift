import Foundation
import Foundation

func findSmallest<T: Comparable>(_ arr: [T]) -> Int {
    var smallest = arr[0]
    var smallestIndex = 0

    for (index, element) in arr.enumerated() {
        if element < smallest {
            smallest = element
            smallestIndex = index
        }

    }
    return smallestIndex
}

func selectionSort<T: Comparable>(_ arr: [T]) -> [T] {

    guard arr.count > 1 else { return arr }
    
    var newArr: [T] = []
    var mutableArr = arr
    for _ in 0..<arr.count {
        var smallestIndex = findSmallest(mutableArr)
        var smallest = mutableArr[smallestIndex]
        newArr.append(smallest)
        mutableArr.remove(at: smallestIndex)
    }
    return newArr
}

let arr = [3, 4, 5, 0, -1, 10000]
print(selectionSort(arr)) // =>  prints [-1, 0, 3, 4, 5, 10000]

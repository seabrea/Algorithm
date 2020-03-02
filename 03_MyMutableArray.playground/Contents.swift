import UIKit

class MyMutableArray {
    
    static let DefaultCount = 5
    
    var realArrayCount = DefaultCount
    var arraySize = 0
    var list: [Int] = Array.init(repeating: 0, count: DefaultCount)
    
    
    func append(_ element: Int) {
        
        if arraySize >= realArrayCount {
            list = list + Array.init(repeating: 0, count: MyMutableArray.DefaultCount)
            realArrayCount = realArrayCount + MyMutableArray.DefaultCount
        }
        
        list[arraySize] = element
        arraySize = arraySize + 1
    }
    
    func remove(at index: Int) {
        
        guard index < arraySize else {
            fatalError("Out Range")
        }
        
        for i in index..<(arraySize-1) {
            
            list[i] = list[i + 1]
        }
        arraySize = arraySize - 1
    }
    
    func search(at index: Int) -> Int {
        
        guard index < arraySize else {
            fatalError("Out Range")
        }
        
        return list[index]
    }
    
    func searchAll() -> [Int] {
        
        guard arraySize > 0 else {
            fatalError("Array Null")
        }
        
        return Array(list[(0..<arraySize)])
    }
    
    func clear() {
        arraySize = 0
    }
    
    func size() -> Int {
        return arraySize
    }
    
    func isEmpty() -> Bool {
        return (arraySize == 0)
    }
}

let list = MyMutableArray()

list.append(1)
list.append(2)
list.append(3)
list.append(4)
list.append(5)
list.append(6)

list.remove(at: 1)

print("count : \(list.size()) \n" + " list: \(list.searchAll()) \n" + "Index At 3: \(list.search(at: 3))")


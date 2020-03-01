import UIKit

class MyMutableArray {
    
    var arraySize = 0
    
    
    func append(_ : Int) {
        arraySize = arraySize + 1
    }
    
    func remove(_ : Int) {
        arraySize = arraySize - 1
    }
    
    func clear(_ : Int) {
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

list.isEmpty()


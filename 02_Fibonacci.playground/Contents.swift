import UIKit

/// Fibonacci数列
func fibonacci (num: Int) -> Int {
    if(num >= 2) {
        return fibonacci(num: num - 1) + fibonacci(num: num - 2)
    }
    else {
        return num
    }
}

// 0 1 1 2 3 5 8 13
func fibonacci (_ num: Int) -> Int {
    if num < 2 {
        return num
    }
    
    var first = 0
    var second = 1
    for _ in 0..<(num-1) {
        let sum = first + second
        first = second
        second = sum
    }
    
    return second
}

//1 1 2 3 5 8 13 21 34 55
print("######### 结果: #########")
print(fibonacci(num: 1),fibonacci(num: 2),fibonacci(num: 3),fibonacci(num: 4),fibonacci(num: 5),fibonacci(num: 6),fibonacci(num: 7),fibonacci(num: 8),fibonacci(num: 9),fibonacci(num: 10))


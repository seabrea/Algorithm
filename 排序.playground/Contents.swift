import UIKit

/// 生成100随机数
func needSortSequeue() -> [Int] {
    var list:[Int] = []
    
    while list.count <= 100 {
        list.append(Int(arc4random()))
    }
    
    return list
}

var testList: [Int] = needSortSequeue()
print("原始数据 : \(testList)\n============================")

/// 冒泡排序
func bubbleSort(list: [Int]) -> [Int] {
    
    let startTime = CFAbsoluteTimeGetCurrent()
    
    var sortList = list
    var n = list.count - 1
    while n > 0 {
        for index in 0..<n {
            if(sortList[index] < sortList[index + 1]) {
                let temp = sortList[index + 1]
                sortList[index + 1] = sortList[index]
                sortList[index] = temp;
            }
        }
        n = n - 1
    }

    let endTime = CFAbsoluteTimeGetCurrent()
    print("冒泡排序结束数据 : " , sortList)
    print("冒泡排序代码执行时长:", (endTime - startTime)*1000,"毫秒")
    
    return sortList
}

/// 快速排序
func firstSort(list: [Int]) -> [Int] {
    let startTime = CFAbsoluteTimeGetCurrent()
    
    let sortList = firstSortSet(list: list)
    
    let endTime = CFAbsoluteTimeGetCurrent()
    print("快速排序结束数据 : \(sortList)\n============================")
    print("快速排序代码执行时长:", (endTime - startTime)*1000,"毫秒")
    
    return sortList
}

func firstSortSet(list: [Int]) -> [Int] {
    
    if(list.count <= 1) {
        return list
    }
    
    let base:Int = list[list.count / 2]
    let less = list.filter{ return $0 < base }
    let equl = list.filter{ return $0 == base }
    let large = list.filter{ return $0 > base }
    
    return firstSortSet(list: less) + equl + firstSortSet(list: large)
}

///测试
//bubbleSort(list: testList)
//firstSort(list: testList)


import Foundation
var unsortedList = [String]()
while let line = readLine() {
    unsortedList.append(line.replacingOccurrences(of: "\n", with: "").lowercased())
}


// Add your code below:
var integers = unsortedList

func swap (integers:inout [String], firstIndex : Int, secondIndex: Int){//swaps the numbers
    
    let  temp = integers[firstIndex]
    integers[firstIndex] = integers[secondIndex]
    integers[secondIndex] = temp
    


}
//bubble sort method
var tsc = 0
var csc = 0
for x in 0..<integers.count+1 {
    if(csc==0 && x != 0){break}
    csc = 0
    for i in 0..<integers.count-1 {
        if(integers[i] > integers[i+1]){
            swap(integers: &integers,firstIndex: i, secondIndex: i+1)
            tsc+=1
            csc+=1

        }
    }
}
print(integers)

//
//  main.swift
//  subscripts
//
//  Created by MacStudent on 2018-02-08.
//  Copyright © 2018 MacStudent. All rights reserved.
//

import Foundation

print("Hello, World!")

struct Timestable {
    let multiplier: Int
    
    subscript(index: Int) -> Int{
        return multiplier * index
    }
}

let threeTimestable = Timestable(multiplier: 3)
print("six times three is \(threeTimestable[6])")

struct matrix {
    let rows: Int,columns: Int
    var grid: [Double]
    
    init(rows: Int, columns: Int){
        self.rows = rows
        self.columns = columns
        grid = Array(repeating: 0.0,count: rows * columns)
    }
    
    func indexisvalid(row: Int,column: Int) -> Bool
    {
        return row >= 0 && row < rows && column >= 0 && column < columns
    }
    
    subscript (row: Int,column: Int) -> Double {
        get{
            assert(indexisvalid(row: row, column: column), "Index out of range")
            return grid[(row * columns) + column]
        }
        set{
            assert(indexisvalid(row: row, column: column), "Index out of range")
            grid[(row * columns) + column] = newValue
        }
    }
}

var Matrix = matrix(rows:2, columns: 2)
print("\(Matrix.grid)")
Matrix[0, 1] = 1.5
Matrix[1, 0] = 3.2

print("\(Matrix.grid)")

//
//  Array+Extensions.swift
//  GridDemo
//
//  Created by NazarStf on 01.06.2023.
//

import Foundation

// https://www.hackingwithswift.com/example-code/language/how-to-split-an-array-into-chunks
extension Array {
	func chunked(into size: Int) -> [[Element]] {
		return stride(from: 0, to: count, by: size).map {
			Array(self[$0 ..< Swift.min($0 + size, count)])
		}
	}
}

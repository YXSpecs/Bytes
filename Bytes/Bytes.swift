//
//  Bytes.swift
//  Bytes
//
//  Created by tangbl93 on 2021/12/12.
//

import Foundation

public struct Byte {
    
    var bytes: Data {
        return data as Data
    }
    
    private let data = NSMutableData()
    
    func append(value: Data) {
        data.append(value)
    }
    
    func append(value: ByteConvertible) {
        var bytes = value
        data.append(&bytes, length: MemoryLayout.size(ofValue: value))
    }

    func append(value: ByteConvertible, length: Len) {
        var bytes = value
        data.append(&bytes, length: length.rawValue)
    }
    
    public enum Len: Int {
        case UINT8      = 1
        case UINT16     = 2
        case UINT32     = 4
        case UINT64     = 8
    }
}

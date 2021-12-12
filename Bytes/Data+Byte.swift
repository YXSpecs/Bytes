//
//  Data+Byte.swift
//  Bytes
//
//  Created by tangbl93 on 2021/12/12.
//

import Foundation

public extension Data {
    
    mutating func extract(length: Int) -> Data? {
        guard self.count > 0 else {
            return nil
        }
        
        // read data
        let range = Range(0..<length)
        let value = self.subdata(in: range)
        
        // remove data
        self.removeSubrange(range)
        
        return value
    }
    
    mutating func extract(length: Byte.Len) -> Data? {
        return self.extract(length: length.rawValue)
    }
}

public extension Data {
    
    mutating func extract_uint8() -> UInt8 {
        guard let data = self.extract(length: .UINT8) else {
            return 0x00
        }
        let value = UInt8(data: data)
        return value ?? 0x00
    }
    
    mutating func extract_uint16() -> UInt16 {
        guard let data = self.extract(length: .UINT16) else {
            return 0x00
        }
        let value = UInt16(data: data)
        return value ?? 0x00
    }
    
    mutating func extract_uint32() -> UInt32 {
        guard let data = self.extract(length: .UINT32) else {
            return 0x00
        }
        let value = UInt32(data: data)
        return value ?? 0x00
    }
    
    mutating func extract_uint64() -> UInt64 {
        guard let data = self.extract(length: .UINT64) else {
            return 0x00
        }
        let value = UInt64(data: data)
        return value ?? 0x00
    }
    
}

public extension Data {
    
    mutating func extract_string(length: Int) -> String {
        guard let data = self.extract(length: length) else {
            return ""
        }
        let value = String(data: data, encoding: .utf8)
        return value ?? ""
    }
}



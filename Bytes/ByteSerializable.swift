//
//  ByteSerializable.swift
//  Bytes
//
//  Created by tangbl93 on 2021/12/12.
//

import Foundation

// Serializable
public protocol Serializable {
    init?(data: Data)
    var data: Data { get }
}

extension Serializable where Self: ExpressibleByIntegerLiteral {

    public init?(data: Data) {
        var value: Self = 0
        guard data.count == MemoryLayout.size(ofValue: value) else { return nil }
        _ = withUnsafeMutableBytes(of: &value, { data.copyBytes(to: $0)} )
        self = value
    }

    public var data: Data {
        return withUnsafeBytes(of: self) { Data($0) }
    }
}

extension String: Serializable {
    
    public init?(data: Data) {
        self.init(data: data, encoding: .utf8)
    }
    public var data: Data {
        return Data(self.utf8)
    }
}

extension Int : Serializable {}

extension UInt8 : Serializable {}
extension UInt16 : Serializable {}
extension UInt32 : Serializable {}
extension UInt64 : Serializable {}


//
//  ByteConvertible.swift
//  Bytes
//
//  Created by tangbl93 on 2021/12/12.
//

import Foundation

// ByteConvertible
public protocol ByteConvertible {
    init()
}

extension Int : ByteConvertible {}
extension CChar : ByteConvertible {}

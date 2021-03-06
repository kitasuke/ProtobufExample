/*
 * DO NOT EDIT.
 *
 * Generated by the protocol buffer compiler.
 * Source: DataModel.proto
 *
 */

import Foundation
import SwiftProtobuf


public struct BookInfo: ProtobufGeneratedMessage {
  public var swiftClassName: String {return "BookInfo"}
  public var protoMessageName: String {return "BookInfo"}
  public var protoPackageName: String {return ""}
  public var jsonFieldNames: [String: Int] {return [
    "id": 1,
    "title": 2,
    "author": 3,
  ]}
  public var protoFieldNames: [String: Int] {return [
    "id": 1,
    "title": 2,
    "author": 3,
  ]}

  public var id: Int64 = 0

  public var title: String = ""

  public var author: String = ""

  public init() {}

  public init(id: Int64? = nil,
    title: String? = nil,
    author: String? = nil)
  {
    if let v = id {
      self.id = v
    }
    if let v = title {
      self.title = v
    }
    if let v = author {
      self.author = v
    }
  }

  public mutating func _protoc_generated_decodeField(setter: inout ProtobufFieldDecoder, protoFieldNumber: Int) throws -> Bool {
    let handled: Bool
    switch protoFieldNumber {
    case 1: handled = try setter.decodeSingularField(fieldType: ProtobufInt64.self, value: &id)
    case 2: handled = try setter.decodeSingularField(fieldType: ProtobufString.self, value: &title)
    case 3: handled = try setter.decodeSingularField(fieldType: ProtobufString.self, value: &author)
    default:
      handled = false
    }
    return handled
  }

  public func _protoc_generated_traverse(visitor: inout ProtobufVisitor) throws {
    if id != 0 {
      try visitor.visitSingularField(fieldType: ProtobufInt64.self, value: id, protoFieldNumber: 1, protoFieldName: "id", jsonFieldName: "id", swiftFieldName: "id")
    }
    if title != "" {
      try visitor.visitSingularField(fieldType: ProtobufString.self, value: title, protoFieldNumber: 2, protoFieldName: "title", jsonFieldName: "title", swiftFieldName: "title")
    }
    if author != "" {
      try visitor.visitSingularField(fieldType: ProtobufString.self, value: author, protoFieldNumber: 3, protoFieldName: "author", jsonFieldName: "author", swiftFieldName: "author")
    }
  }

  public func _protoc_generated_isEqualTo(other: BookInfo) -> Bool {
    if id != other.id {return false}
    if title != other.title {return false}
    if author != other.author {return false}
    return true
  }
}

public struct MyLibrary: ProtobufGeneratedMessage {
  public var swiftClassName: String {return "MyLibrary"}
  public var protoMessageName: String {return "MyLibrary"}
  public var protoPackageName: String {return ""}
  public var jsonFieldNames: [String: Int] {return [
    "id": 1,
    "name": 2,
    "books": 3,
    "keys": 4,
  ]}
  public var protoFieldNames: [String: Int] {return [
    "id": 1,
    "name": 2,
    "books": 3,
    "keys": 4,
  ]}

  public var id: Int64 = 0

  public var name: String = ""

  public var books: [BookInfo] = []

  public var keys: Dictionary<String,String> = [:]

  public init() {}

  public init(id: Int64? = nil,
    name: String? = nil,
    books: [BookInfo] = [],
    keys: Dictionary<String,String> = [:])
  {
    if let v = id {
      self.id = v
    }
    if let v = name {
      self.name = v
    }
    if !books.isEmpty {
      self.books = books
    }
    if !keys.isEmpty {
      self.keys = keys
    }
  }

  public mutating func _protoc_generated_decodeField(setter: inout ProtobufFieldDecoder, protoFieldNumber: Int) throws -> Bool {
    let handled: Bool
    switch protoFieldNumber {
    case 1: handled = try setter.decodeSingularField(fieldType: ProtobufInt64.self, value: &id)
    case 2: handled = try setter.decodeSingularField(fieldType: ProtobufString.self, value: &name)
    case 3: handled = try setter.decodeRepeatedMessageField(fieldType: BookInfo.self, value: &books)
    case 4: handled = try setter.decodeMapField(fieldType: ProtobufMap<ProtobufString,ProtobufString>.self, value: &keys)
    default:
      handled = false
    }
    return handled
  }

  public func _protoc_generated_traverse(visitor: inout ProtobufVisitor) throws {
    if id != 0 {
      try visitor.visitSingularField(fieldType: ProtobufInt64.self, value: id, protoFieldNumber: 1, protoFieldName: "id", jsonFieldName: "id", swiftFieldName: "id")
    }
    if name != "" {
      try visitor.visitSingularField(fieldType: ProtobufString.self, value: name, protoFieldNumber: 2, protoFieldName: "name", jsonFieldName: "name", swiftFieldName: "name")
    }
    if !books.isEmpty {
      try visitor.visitRepeatedMessageField(value: books, protoFieldNumber: 3, protoFieldName: "books", jsonFieldName: "books", swiftFieldName: "books")
    }
    if !keys.isEmpty {
      try visitor.visitMapField(fieldType: ProtobufMap<ProtobufString,ProtobufString>.self, value: keys, protoFieldNumber: 4, protoFieldName: "keys", jsonFieldName: "keys", swiftFieldName: "keys")
    }
  }

  public func _protoc_generated_isEqualTo(other: MyLibrary) -> Bool {
    if id != other.id {return false}
    if name != other.name {return false}
    if books != other.books {return false}
    if keys != other.keys {return false}
    return true
  }
}

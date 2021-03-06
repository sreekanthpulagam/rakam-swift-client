//
// QueryError.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation


public class QueryError: JSONEncodable {
    public var message: String?
    public var sqlState: String?
    public var errorCode: Int32?
    public var errorLine: Int32?
    public var charPositionInLine: Int32?

    public init() {
    }

    // MARK: JSONEncodable
    func encodeToJSON() -> AnyObject {
        var nillableDictionary = [String:AnyObject?]()
        nillableDictionary["message"] = self.message
        nillableDictionary["sqlState"] = self.sqlState
        nillableDictionary["errorCode"] = self.errorCode?.encodeToJSON()
        nillableDictionary["errorLine"] = self.errorLine?.encodeToJSON()
        nillableDictionary["charPositionInLine"] = self.charPositionInLine?.encodeToJSON()
        let dictionary: [String:AnyObject] = APIHelper.rejectNil(nillableDictionary) ?? [:]
        return dictionary
    }
}

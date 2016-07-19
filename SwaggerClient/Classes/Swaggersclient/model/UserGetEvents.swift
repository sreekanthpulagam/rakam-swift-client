//
// UserGetEvents.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation


public class UserGetEvents: JSONEncodable {
    public var user: String?
    public var limit: Int32?
    public var offset: NSDate?

    public init() {
    }

    // MARK: JSONEncodable
    func encodeToJSON() -> AnyObject {
        var nillableDictionary = [String:AnyObject?]()
        nillableDictionary["user"] = self.user
        nillableDictionary["limit"] = self.limit?.encodeToJSON()
        nillableDictionary["offset"] = self.offset?.encodeToJSON()
        let dictionary: [String:AnyObject] = APIHelper.rejectNil(nillableDictionary) ?? [:]
        return dictionary
    }
}
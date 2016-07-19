//
// SuccessMessage.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation


public class SuccessMessage: JSONEncodable {
    public var message: String
    public var success: Bool?

    public init(message: String) {
        self.message = message
    }

    // MARK: JSONEncodable
    func encodeToJSON() -> AnyObject {
        var nillableDictionary = [String:AnyObject?]()
        nillableDictionary["message"] = self.message
        nillableDictionary["success"] = self.success
        let dictionary: [String:AnyObject] = APIHelper.rejectNil(nillableDictionary) ?? [:]
        return dictionary
    }
}

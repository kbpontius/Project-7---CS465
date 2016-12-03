//
//  PWFileGenerator.swift
//  Project 7 - Password Generator
//
//  Created by Kyle Pontius on 12/2/16.
//  Copyright © 2016 Kyle Pontius. All rights reserved.
//

import Foundation

class PWFileGenerator {
    
    // MARK: - API -
    
    func generateUNIXPasswordFiles(username: String, password: String) {
        
    }
    
    // MARK: - Private Methods -
    
    fileprivate func generatePasswordFile(username: String, password: String) {
        
    }
    
    fileprivate func MD5(string: String) -> String {
        guard let messageData = string.data(using:String.Encoding.utf8) else { return "" }
        var digestData = Data(count: Int(CC_MD5_DIGEST_LENGTH))
        
        _ = digestData.withUnsafeMutableBytes {digestBytes in
            messageData.withUnsafeBytes {messageBytes in
                CC_MD5(messageBytes, CC_LONG(messageData.count), digestBytes)
            }
        }
        
        return digestData.map { String(format: "%02hhx", $0) }.joined()
    }
}

//
//  DefangingAnIPAddress(1108).swift
//  
//
//  Created by Richard Cho on 2020-08-28.
//

import Foundation

func defangIPaddr(_ address: String) -> String {
    return address.replacingOccurrences(of: ".", with: "[.]")
}

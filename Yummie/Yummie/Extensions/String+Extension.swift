//
//  String+Extension.swift
//  Yummie
//
//  Created by Syed Fasiullah Hussaini on 10/03/24.
//

import Foundation

extension String {
    var asURL: URL? {
        return URL(string: self)
    }
}

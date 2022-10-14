//
//  Change+Mocks.swift
//  
//
//  Created by Fernando Torcelly Garcia on 13/10/22.
//

import Foundation
import TMDb

extension Change {

    static func mock() -> Self {
        .init(id: 601357, adult: false)
    }

}

extension Array where Element == Change {

    static var mocks: [Element] {
        [
            .init(id: 601357, adult: false),
            .init(id: 880555, adult: false),
            .init(id: 1033874, adult: false),
            .init(id: 603204, adult: false),
            .init(id: 16864, adult: false)
        ]
    }

}

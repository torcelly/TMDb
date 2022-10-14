//
//  ChangePageableList+Mocks.swift
//  
//
//  Created by Fernando Torcelly Garcia on 13/10/22.
//

import Foundation
import TMDb

extension ChangePageableList {

    static func mock(
        page: Int = Int.random(in: 1...5),
        results: [Change] = .mocks,
        totalResults: Int? = Int.random(in: 1...100),
        totalPages: Int? = Int.random(in: 1...5)
    ) -> Self {
        .init(
            page: page,
            results: results,
            totalResults: totalResults,
            totalPages: totalPages
        )
    }

}


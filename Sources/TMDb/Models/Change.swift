//
//  Change.swift
//  
//
//  Created by Fernando Torcelly Garcia on 13/10/22.
//

import Foundation

/// A change.
public struct Change: Identifiable, Decodable, Equatable, Hashable {

    /// Movie identifier.
    public let id: Int?
    /// Is the item only suitable for adults.
    public let adult: Bool?

    /// Creates a new `Change`.
    ///
    /// - Parameters:
    ///    - id: Item identifier.
    ///    - adult: Is the item only suitable for adults.
    public init(id: Int?, adult: Bool?) {
        self.id = id
        self.adult = adult
    }

}

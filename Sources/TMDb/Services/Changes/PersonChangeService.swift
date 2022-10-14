//
//  PersonChangeService.swift
//  
//
//  Created by Fernando Torcelly Garcia on 12/10/22.
//

import Foundation

/// A service to fetch an up to date list of all of the person ids that have been changed in the past 24 hours.
public protocol PersonChangeService {

    /// Returns  person ids that have been changed.
    ///
    /// [TMDb API - Person Change List](https://developers.themoviedb.org/3/changes/get-person-change-list)
    ///
    /// - Precondition: `page` can be between `1` and `1000`.
    ///
    /// - Parameters:
    ///     - startDate: Filter the results with a end date.
    ///     - endDate: Filter the results with a start date.
    ///     - page: The page of results to return.
    ///
    /// - Returns: A array of person ids.
    func personChanges(startDate: Date?, endDate: Date?, page: Int?) async throws -> ChangePageableList

}

public extension PersonChangeService {

    func personChanges(startDate: Date? = nil, endDate: Date? = nil, page: Int? = nil) async throws -> ChangePageableList {
        try await personChanges(startDate: startDate, endDate: endDate, page: page)
    }

}

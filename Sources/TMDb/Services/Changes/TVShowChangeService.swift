//
//  TVShowChangeService.swift
//  
//
//  Created by Fernando Torcelly Garcia on 12/10/22.
//

import Foundation

/// A service to fetch an up to date list of all of the TV shows ids that have been changed in the past 24 hours.
public protocol TVShowChangeService {

    /// Returns  TV shows ids that have been changed.
    ///
    /// [TMDb API - TV Change List](https://developers.themoviedb.org/3/changes/get-tv-change-list)
    ///
    /// - Precondition: `page` can be between `1` and `1000`.
    ///
    /// - Parameters:
    ///     - startDate: Filter the results with a end date.
    ///     - endDate: Filter the results with a start date.
    ///     - page: The page of results to return.
    ///
    /// - Returns: A array of TV shows ids.
    func tvShowsChanges(startDate: Date?, endDate: Date?, page: Int?) async throws -> ChangePageableList

}

public extension TVShowChangeService {

    func tvShowsChanges(startDate: Date? = nil, endDate: Date? = nil, page: Int? = nil) async throws -> ChangePageableList {
        try await tvShowsChanges(startDate: startDate, endDate: endDate, page: page)
    }

}

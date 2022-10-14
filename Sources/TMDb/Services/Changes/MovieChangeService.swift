//
//  MovieChangeService.swift
//  
//
//  Created by Fernando Torcelly Garcia on 12/10/22.
//

import Foundation

/// A service to fetch an up to date list of all of the movie ids that have been changed in the past 24 hours.
public protocol MovieChangeService {

    /// Returns  movie ids that have been changed.
    ///
    /// [TMDb API - Movie Change List](https://developers.themoviedb.org/3/changes/get-movie-change-list)
    ///
    /// - Precondition: `page` can be between `1` and `1000`.
    ///
    /// - Parameters:
    ///     - startDate: Filter the results with a end date.
    ///     - endDate: Filter the results with a start date.
    ///     - page: The page of results to return.
    ///
    /// - Returns: A array of movie ids as a pageable list.
    func movieChanges(startDate: Date?, endDate: Date?, page: Int?) async throws -> ChangePageableList

}

public extension MovieChangeService {

    func movieChanges(startDate: Date? = nil, endDate: Date? = nil, page: Int? = nil) async throws -> ChangePageableList {
        try await movieChanges(startDate: startDate, endDate: endDate, page: page)
    }

}

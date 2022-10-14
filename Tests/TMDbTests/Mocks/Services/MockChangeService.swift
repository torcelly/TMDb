//
//  MockChangeService.swift
//  
//
//  Created by Fernando Torcelly Garcia on 12/10/22.
//

@testable import TMDb
import XCTest

final class MockChangeService: ChangeService {

    var movies: MoviePageableList?
    private(set) var lastStartDateMovies: Date?
    private(set) var lastEndDateMovies: Date?
    private(set) var lastMoviesPage: Int?

    var tvShows: TVShowPageableList?
    private(set) var lastStartDateTVShows: Date?
    private(set) var lastEndDateTVShows: Date?
    private(set) var lastTVShowsPage: Int?
    
    var persons: PersonPageableList?
    private(set) var lastStartDatePersons: Date?
    private(set) var lastEndDatePersons: Date?
    private(set) var lastPersonsPage: Int?

    func movies(startDate: Date?, endDate: Date?, page: Int?) async throws -> MoviePageableList {
        lastStartDateMovies = startDate
        lastEndDateMovies = endDate
        lastMoviesPage = page

        return try await withCheckedThrowingContinuation { continuation in
            guard let movies = self.movies else {
                continuation.resume(throwing: MockDataMissingError())
                return
            }

            continuation.resume(returning: movies)
        }
    }

    func tvShows(startDate: Date?, endDate: Date?, page: Int?) async throws -> TVShowPageableList {
        lastStartDateTVShows = startDate
        lastEndDateTVShows = endDate
        lastTVShowsPage = page

        return try await withCheckedThrowingContinuation { continuation in
            guard let tvShows = self.tvShows else {
                continuation.resume(throwing: MockDataMissingError())
                return
            }

            continuation.resume(returning: tvShows)
        }
    }
    
    func persons(startDate: Date?, endDate: Date?, page: Int?) async throws -> PersonPageableList {
        lastStartDatePersons = startDate
        lastEndDatePersons = endDate
        lastPersonsPage = page

        return try await withCheckedThrowingContinuation { continuation in
            guard let persons = self.persons else {
                continuation.resume(throwing: MockDataMissingError())
                return
            }

            continuation.resume(returning: persons)
        }
    }
}

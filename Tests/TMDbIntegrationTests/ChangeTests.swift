//
//  ChangeTests.swift
//  
//
//  Created by Fernando Torcelly Garcia on 12/10/22.
//

@testable import TMDb
import XCTest

final class ChangeTests: XCTestCase {

    private var tmdb: TMDbAPI!

    override func setUpWithError() throws {
        super.setUp()
        tmdb = TMDbAPI(apiKey: "", urlSessionConfiguration: .integrationTest)
    }

    override func tearDown() {
        tmdb = nil
        TMDbURLProtocol.reset()
        super.tearDown()
    }

    func testMovies() async throws {
        let startDate = Date(timeIntervalSinceNow: 60 * 60 * 24)
        let endDate = Date()
        let page = 1
        print(endDate)
        TMDbURLProtocol.add("change-movie", for: ChangesEndpoint.movie(startDate: startDate, endDate: endDate, page: page))

        let movieList = try await tmdb.changes.movieChanges(startDate: startDate, endDate: endDate, page: page)

        XCTAssertTrue(!movieList.results.isEmpty)
    }

    func testTVShows() async throws {
        let startDate = Date(timeIntervalSinceNow: 60 * 60 * 24)
        let endDate = Date()
        let page = 1
        
        TMDbURLProtocol.add("change-tv", for: ChangesEndpoint.tvShow(startDate: startDate, endDate: endDate, page: page))

        let tvShowList = try await tmdb.changes.tvShowsChanges(startDate: startDate, endDate: endDate, page: page)

        XCTAssertTrue(!tvShowList.results.isEmpty)
    }

    func testPersons() async throws {
        let startDate = Date(timeIntervalSinceNow: 60 * 60 * 24)
        let endDate = Date()
        let page = 1
        
        TMDbURLProtocol.add("change-person", for: ChangesEndpoint.person(startDate: startDate, endDate: endDate, page: page))

        let personList = try await tmdb.changes.personChanges(startDate: startDate, endDate: endDate, page: page)

        XCTAssertTrue(!personList.results.isEmpty)
    }
 
}

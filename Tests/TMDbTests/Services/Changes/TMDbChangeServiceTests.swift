//
//  TMDbChangeServiceTests.swift
//  
//
//  Created by Fernando Torcelly Garcia on 13/10/22.
//

@testable import TMDb
import XCTest

final class TMDbChangeServiceTests: XCTestCase {

    var service: TMDbChangeService!
    var apiClient: MockAPIClient!

    override func setUp() {
        super.setUp()
        apiClient = MockAPIClient()
        service = TMDbChangeService(apiClient: apiClient)
    }

    override func tearDown() {
        apiClient = nil
        service = nil
        super.tearDown()
    }

    func testMovieChangesReturnsMovieChanges() async throws {
        let expectedResult = ChangePageableList.mock()
        apiClient.result = .success(expectedResult)

        let result = try await service.movieChanges(page: 1)

        XCTAssertEqual(result, expectedResult)
        XCTAssertEqual(apiClient.lastPath, CertificationsEndpoint.movie.path)
    }

    func testTVShowCertificationsReturnsTVShowCertifications() async throws {
        let expectedResult = ChangePageableList.mock()
        apiClient.result = .success(expectedResult)

        let result = try await service.tvShowsChanges(page: 1)

        XCTAssertEqual(result, expectedResult)
        XCTAssertEqual(apiClient.lastPath, CertificationsEndpoint.tvShow.path)
    }

}

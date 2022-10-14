//
//  ChangesEndpointTests.swift
//  
//
//  Created by Fernando Torcelly Garcia on 13/10/22.
//

@testable import TMDb
import XCTest

final class ChangesEndpointTests: XCTestCase {
// testTrendingPeopleEndpointWithTimeWindowDayReturnsURL
    func testMovieEndpointWithDatesAndPageReturnsURL() {
        let expectedURL = URL(string: "/movie/changes?start_date=2022-10-11&end_date=2022-10-12&page=1")!

        let startDate = DateFormatter.theMovieDatabase.date(from: "2022-10-11")
        let endDate   = DateFormatter.theMovieDatabase.date(from: "2022-10-12")
        let page      = 1
        
        let url = ChangesEndpoint.movie(startDate: startDate, endDate: endDate, page: page).path

        XCTAssertEqual(url, expectedURL)
    }
    
    func testMovieEndpointWithPageReturnsURL() {
        let expectedURL = URL(string: "/movie/changes?page=1")!

        let page      = 1
        let url = ChangesEndpoint.movie(page: page).path

        XCTAssertEqual(url, expectedURL)
    }

    func testTVShowEndpointWithDatesAndPageReturnsURL() {
        let expectedURL = URL(string: "/tv/changes?start_date=2022-10-11&end_date=2022-10-12&page=1")!

        let startDate = DateFormatter.theMovieDatabase.date(from: "2022-10-11")
        let endDate   = DateFormatter.theMovieDatabase.date(from: "2022-10-12")
        let page      = 1
        
        let url = ChangesEndpoint.tvShow(startDate: startDate, endDate: endDate, page: page).path

        XCTAssertEqual(url, expectedURL)
    }
    
    func testTVShowEndpointWithPageReturnsURL() {
        let expectedURL = URL(string: "/tv/changes?page=1")!

        let page      = 1
        
        let url = ChangesEndpoint.tvShow(page: page).path

        XCTAssertEqual(url, expectedURL)
    }

    func testPersonEndpointWithDatesAndPageReturnsURL() {
        let expectedURL = URL(string: "/person/changes?start_date=2022-10-11&end_date=2022-10-12&page=1")!

        let startDate = DateFormatter.theMovieDatabase.date(from: "2022-10-11")
        let endDate   = DateFormatter.theMovieDatabase.date(from: "2022-10-12")
        let page      = 1
        
        let url = ChangesEndpoint.person(startDate: startDate, endDate: endDate, page: page).path

        XCTAssertEqual(url, expectedURL)
    }
    
    func testPersonEndpointWithPageReturnsURL() {
        let expectedURL = URL(string: "/person/changes?page=1")!

        let page = 1
        
        let url = ChangesEndpoint.person(page: page).path

        XCTAssertEqual(url, expectedURL)
    }
    
}

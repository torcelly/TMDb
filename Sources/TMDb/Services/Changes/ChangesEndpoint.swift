//
//  ChangesEndpoint.swift
//  
//
//  Created by Fernando Torcelly Garcia on 12/10/22.
//

import Foundation

enum ChangesEndpoint {

    case movie(startDate: Date? = nil, endDate: Date? = nil, page: Int? = nil)
    case tvShow(startDate: Date? = nil, endDate: Date? = nil, page: Int? = nil)
    case person(startDate: Date? = nil, endDate: Date? = nil, page: Int? = nil)

}

extension ChangesEndpoint: Endpoint {

    private static let basePath = URL(string: "/")!

    var path: URL {
        switch self {
        case .movie(let startDate, let endDate, let page):
            return Self.basePath
                .appendingPathComponent("movie")
                .appendingPathComponent("changes")
                .appendingStartDate(startDate)
                .appendingEndDate(endDate)
                .appendingPage(page)

        case .tvShow(let startDate, let endDate, let page):
            return Self.basePath
                .appendingPathComponent("tv")
                .appendingPathComponent("changes")
                .appendingStartDate(startDate)
                .appendingEndDate(endDate)
                .appendingPage(page)
            
        case .person(let startDate, let endDate, let page):
            return Self.basePath
                .appendingPathComponent("person")
                .appendingPathComponent("changes")
                .appendingStartDate(startDate)
                .appendingEndDate(endDate)
                .appendingPage(page)
        }
    }

}

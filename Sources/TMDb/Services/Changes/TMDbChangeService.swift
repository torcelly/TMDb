//
//  TMDbChangeService.swift
//  
//
//  Created by Fernando Torcelly Garcia on 12/10/22.
//

import Foundation

final class TMDbChangeService: ChangeService {

    private let apiClient: APIClient

    init(apiClient: APIClient) {
        self.apiClient = apiClient
    }

    func movieChanges(startDate: Date?, endDate: Date?, page: Int?) async throws -> ChangePageableList {
        try await apiClient.get(endpoint: ChangesEndpoint.movie(startDate: startDate, endDate: endDate, page: page))
    }

    func tvShowsChanges(startDate: Date?, endDate: Date?, page: Int?) async throws -> ChangePageableList {
        try await apiClient.get(endpoint: ChangesEndpoint.tvShow(startDate: startDate, endDate: endDate, page: page))
    }

    func personChanges(startDate: Date?, endDate: Date?, page: Int?) async throws -> ChangePageableList {
        try await apiClient.get(endpoint: ChangesEndpoint.person(startDate: startDate, endDate: endDate, page: page))
    }
}

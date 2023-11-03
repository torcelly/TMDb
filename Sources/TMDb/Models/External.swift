//
//  External.swift
//
//
//  Created by Fernando Torcelly Garcia on 2/11/23.
//

import Foundation

/// Country.
public struct External: Identifiable, Decodable, Equatable, Hashable {

    /// TMDB id
    public var id: Int
    /// IMDB id
    public let imdb: String?
    /// Freebase mid
    public let freebaseMid: String?
    /// Freebase id
    public let freebaseId: String?
    /// TVDB id
    public let tvdb: String?
    /// TVRage id
    public let tvrage: Int?
    /// Wikidata id
    public let wikidata: String?
    /// Facebook id
    public let facebook: String?
    /// Instagram id
    public let instagram: String?
    /// Twitter id
    public let twitter: String?

    /// Creates a new `External`.
    ///
    /// - Parameters:
    ///    - id: TMDB id.
    ///    - imdb: IMDB id.
    ///    - freebaseMid: Freebase mid.
    public init(
        id: Int,
        imdb: String?,
        freebaseMid: String?,
        freebaseId: String?,
        tvdb: String?,
        tvrage: Int?,
        wikidata: String?,
        facebook: String?,
        instagram: String?,
        twitter: String?
    ) {
        self.id   = id
        self.imdb = imdb
        self.freebaseMid = freebaseMid
        self.freebaseId  = freebaseId
        self.tvdb      = tvdb
        self.tvrage    = tvrage
        self.wikidata  = wikidata
        self.facebook  = facebook
        self.instagram = instagram
        self.twitter   = twitter
    }

}

extension External {

    private enum CodingKeys: String, CodingKey {
        case id   = "id"
        case imdb = "imdb_id"
        case freebaseMid = "freebase_mid"
        case freebaseId  = "freebase_id"
        case tvdb      = "tvdb_id"
        case tvrage    = "tvrage_id"
        case wikidata  = "wikidata_id"
        case facebook  = "facebook_id"
        case instagram = "instagram_id"
        case twitter   = "twitter_id"
    }

}

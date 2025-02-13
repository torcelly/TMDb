@testable import TMDb
import XCTest

final class TVShowTests: XCTestCase {

    func testFirstAirDateWhenNilReturnsNil() {
        let someTVShow = TVShow(id: 1, name: "Some tv show name 1", firstAirDate: nil)

        XCTAssertNil(someTVShow.firstAirDate)
    }

    func testHomepageURLWhenNilReturnsNil() {
        let someTVShow = TVShow(id: 2, name: "Some tv show name 2", homepageURL: nil)

        XCTAssertNil(someTVShow.homepageURL)
    }

    func testHomepageURLWhenHasURLReturnsURL() {
        let expectedResult = URL(string: "https://some.domain.com")!
        let someTVShow = TVShow(id: 3, name: "Some tv show name 3", homepageURL: expectedResult)

        XCTAssertEqual(someTVShow.homepageURL, expectedResult)
    }

    func testDecodeReturnsTVShow() throws {
        let result = try JSONDecoder.theMovieDatabase.decode(TVShow.self, fromResource: "tv-show")

        XCTAssertEqual(result, tvShow)
    }

    func testSortNoDates() {
        let tvShowOne = TVShow(id: .randomID, name: .randomString)
        let tvShowTwo = TVShow(id: .randomID, name: .randomString)

        let result = tvShowOne < tvShowTwo

        XCTAssertFalse(result)
    }

    func testSortWithLHSDate() {
        let tvShowOne = TVShow(id: .randomID, name: .randomString,
                               firstAirDate: Date(timeIntervalSince1970: 1618840399))
        let tvShowTwo = TVShow(id: .randomID, name: .randomString)

        let result = tvShowOne < tvShowTwo

        XCTAssertTrue(result)
    }

    func testSortWithRHSDate() {
        let tvShowOne = TVShow(id: .randomID, name: .randomString)
        let tvShowTwo = TVShow(id: .randomID, name: .randomString,
                               firstAirDate: Date(timeIntervalSince1970: 1218840399))

        let result = tvShowOne < tvShowTwo

        XCTAssertFalse(result)
    }

    func testSortWithDates() {
        let tvShowOne = TVShow(id: .randomID, name: .randomString,
                               firstAirDate: Date(timeIntervalSince1970: 1618840399))
        let tvShowTwo = TVShow(id: .randomID, name: .randomString,
                               firstAirDate: Date(timeIntervalSince1970: 1218840399))

        let result = tvShowOne < tvShowTwo

        XCTAssertTrue(result)
    }

}

extension TVShowTests {

    // swiftlint:disable line_length
    private var tvShow: TVShow {
        .init(
            id: 1399,
            name: "Game of Thrones",
            originalName: "Game of Thrones",
            originalLanguage: "en",
            overview: "Seven noble families fight for control of the mythical land of Westeros. Friction between the houses leads to full-scale war. All while a very ancient evil awakens in the farthest north. Amidst the war, a neglected military order of misfits, the Night's Watch, is all that stands between the realms of men and icy horrors beyond.",
            episodeRunTime: [60],
            numberOfSeasons: 7,
            numberOfEpisodes: 67,
            seasons: [
                TVShowSeason(
                    id: 3624,
                    name: "Season 1",
                    seasonNumber: 1,
                    overview: "Trouble is brewing in the Seven Kingdoms of Westeros. For the driven inhabitants of this visionary world, control of Westeros' Iron Throne holds the lure of great power. But in a land where the seasons can last a lifetime, winter is coming...and beyond the Great Wall that protects them, an ancient evil has returned. In Season One, the story centers on three primary areas: the Stark and the Lannister families, whose designs on controlling the throne threaten a tenuous peace; the dragon princess Daenerys, heir to the former dynasty, who waits just over the Narrow Sea with her malevolent brother Viserys; and the Great Wall--a massive barrier of ice where a forgotten danger is stirring.",
                    airDate: DateFormatter.theMovieDatabase.date(from: "2011-04-17"),
                    posterPath: URL(string: "/zwaj4egrhnXOBIit1tyb4Sbt3KP.jpg"),
                    episodes: nil
                )
            ],
            genres: [
                Genre(id: 10765, name: "Sci-Fi & Fantasy"),
                Genre(id: 18, name: "Drama"),
                Genre(id: 10759, name: "Action & Adventure")
            ],
            firstAirDate: DateFormatter.theMovieDatabase.date(from: "2011-04-17"),
            originCountry: ["US"],
            posterPath: URL(string: "/gwPSoYUHAKmdyVywgLpKKA4BjRr.jpg"),
            backdropPath: URL(string: "/gX8SYlnL9ZznfZwEH4KJUePBFUM.jpg"),
            homepageURL: URL(string: "http://www.hbo.com/game-of-thrones"),
            inProduction: true,
            languages: ["es", "en", "de"],
            lastAirDate: DateFormatter.theMovieDatabase.date(from: "2017-08-27"),
            networks: [
                Network(
                    id: 49,
                    name: "HBO",
                    logoPath: URL(string: "/tuomPhY2UtuPTqqFnKMVHvSb724.png"),
                    originCountry: "US"
                )
            ],
            productionCompanies: [
                ProductionCompany(
                    id: 3268,
                    name: "HBO",
                    originCountry: "US",
                    logoPath: URL(string: "/tuomPhY2UtuPTqqFnKMVHvSb724.png")
                )
            ],
            status: "Returning Series",
            type: "Scripted",
            popularity: 53.516,
            voteAverage: 8.2,
            voteCount: 4682
        )
    }
    // swiftlint:enable line_length

}

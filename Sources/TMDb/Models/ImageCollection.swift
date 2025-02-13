import Foundation

/// A collection of poster and backdrop images for a movie or TV show.
public struct ImageCollection: Decodable, Equatable, Hashable {

    /// Movie or TV show identifier for these images.
    public let id: Int
    /// Poster images.
    public let posters: [ImageMetadata]
    /// Logo images.
    public let logos: [ImageMetadata]
    /// Backdrop images.
    public let backdrops: [ImageMetadata]

    /// Creates a new `ImageCollection`.
    ///
    /// - Parameters:
    ///    - id: Movie or TV show identifier for these images.
    ///    - posters: Poster images.
    ///    - backdrops: Backdrop images.
    public init(id: Int, posters: [ImageMetadata], logos: [ImageMetadata], backdrops: [ImageMetadata]) {
        self.id = id
        self.posters = posters
        self.logos = logos
        self.backdrops = backdrops
    }

}

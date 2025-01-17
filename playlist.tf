resource "spotify_playlist" "favourite" {
  name = "favourites"
  tracks = ["4ZDbBaMwzedRPdqpH7qsWX"]
}

data "spotify_search_track" "karthik" {
  artist = "karthik"
}
resource "spotify_playlist" "karthik_music" {
    name = "karthik"
    tracks = [data.spotify_search_track.karthik.tracks[7].id,
    data.spotify_search_track.karthik.tracks[8].id] 
}

# TO CREATE A SPOTIFY PLAYLIST USING TRACKS:
resource "spotify_playlist" "<PLAYLIST_NAME>" {
  name = "<PLAY_LIST_NAME>"
  tracks = ["PASTE_MUSIC_TRACK_ID"]
}


# TO CREATE SPOTIFY PLAYLIST USING DATA BLOCK:
data "spotify_search_track" "<ARTIST_NAME>" {
  artist = "<ARTIST_NAME>"
  # limit = 5
}
resource "spotify_playlist" "<PLAY_LIST_NAME>" {
    name = "<PLAY_LIST_NAME"
    tracks = [data.spotify_search_track.<ARTIST_NAME>.tracks[0].id,
    data.spotify_search_track.<ARTIST_NAME>.tracks[1].id] 
}

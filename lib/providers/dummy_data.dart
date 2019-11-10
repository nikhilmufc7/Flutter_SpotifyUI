import '../models/albumData.dart';
import 'package:flutter/material.dart';
import '../models/artistData.dart';
import '../models/searchData.dart';
import '../models/libraryData.dart';
import '../models/songList.dart';

var dummyAlbums = [
  AlbumData(
    id: 'c1',
    title: 'This is Jon Bellion',
    imageUrl: "https://i.scdn.co/image/cb406b760562e264ea5945c5d7352341232cf697",
  ),
  AlbumData(
    id: 'c2',
    title: 'On Repeat',
    imageUrl: "https://daily-mix.scdn.co/covers/on_repeat/PZN_On_Repeat_DEFAULT-en.jpg",
  ),

  AlbumData(
    id: 'c3',
    title: 'Rewind - The Sound of 2018',
    imageUrl: "https://pl.scdn.co/images/pl/default/a9f8cd2e5511ac57ad06bc1acec4a7bc145f0f54",
  ),

  AlbumData(
    id: 'c4',
    title: 'This is Twenty One Pilots',
    imageUrl: "https://pl.scdn.co/images/pl/default/62e6e7d73f621a460cfd0d37a3c20f327c7c2dc4",
  ),

  AlbumData(
    id: 'c5',
    title: 'This is Twenty One Pilots',
    imageUrl: "https://www.music-bazaar.com/album-images/vol32/1957/1957337/3836078-big/Today-s-Top-Hits-Spotify-20-05-2019-cover.jpg",
  ),

  AlbumData(
    id: 'c6',
    title: 'This is NF',
    imageUrl: "https://i.scdn.co/image/d0968650a052c15533f29e372a37ee0f2f0e55ff",
  ),

  AlbumData(
    id: 'c7',
    title: 'This is Shankar Ehsan Loy',
    imageUrl: "https://pl.scdn.co/images/pl/default/6ae00d67d6452510b82ef2b632cea46bb41c6a6e",
  ),

  AlbumData(
    id: 'c8',
    title: 'Best Of Camila Cabello',
    imageUrl: "https://www.billboard.com/files/styles/article_main_image/public/media/camila-cabello-london-june-2018-billboard-1548.jpg",
  ),
];


var dummyUserData = [
  AlbumData(
    id: 'c1',
    title: 'Daily Mix 1',
    imageUrl: "https://i.pinimg.com/474x/e7/6b/c9/e76bc9736fe6493a9eddbfb3ef6bc094.jpg",
  ),
  AlbumData(
    id: 'c2',
    title: 'Daily Mix 2',
    imageUrl: "https://i.redd.it/avxncpgy8do11.png",
  ),

  AlbumData(
    id: 'c3',
    title: 'Daily Mix 3',
    imageUrl: "https://ph-files.imgix.net/cbbf111b-fccf-48a7-8505-bedc7b5d5272?auto=format",
  ),

  AlbumData(
    id: 'c4',
    title: 'Daily Mix 4',
    imageUrl: "https://pbs.twimg.com/media/CtcVNESWIAEYGWI.jpg",
  ),

  AlbumData(
    id: 'c5',
    title: 'Daily Mix 5',
    imageUrl: "https://i.pinimg.com/474x/e7/6b/c9/e76bc9736fe6493a9eddbfb3ef6bc094.jpg",
  ),

  AlbumData(
    id: 'c6',
    title: 'Daily Mix 6',
    imageUrl: "https://pbs.twimg.com/media/CtcVNESWIAEYGWI.jpg",
  ),

  AlbumData(
    id: 'c7',
    title: 'Tastebreakers',
    imageUrl: "https://lineup-images.scdn.co/tastebreakers_DEFAULT-en.jpg",
  ),

  AlbumData(
    id: 'c8',
    title: 'Best Of Camila Cabello',
    imageUrl: "https://lineup-images.scdn.co/time-capsule_DEFAULT-en.jpg",
  ),
];



var dummyArtist = [
  ArtistData(
    id: 'a1',
    title: "Dua Lipa",
    imageUrl: "https://i.scdn.co/image/ab67616d0000b273b75e062b52a8bbee368b70b6"
  ),

  ArtistData(
      id: 'a2',
      title: "Tom Walker",
      imageUrl: "https://i.scdn.co/image/adeb41af699388e27233e4fb35c4564f6929f2a8"
  ),

  ArtistData(
      id: 'a3',
      title: "Kodaline",
      imageUrl: "https://i.scdn.co/image/55451df0b61a34de9cd2b57417421f462f9ac832"
  ),

  ArtistData(
      id: 'a4',
      title: "Finneas",
      imageUrl: "https://i.scdn.co/image/03f1a5cc03d7f305d3703c87831114d0291ace66"
  ),

  ArtistData(
      id: 'a5',
      title: "Billie Elish",
      imageUrl: "https://pl.scdn.co/images/pl/default/04964eccd1a2e3beb3ea2b455645caa2a101df6d"
  ),

  ArtistData(
      id: 'a6',
      title: "Ruth. B",
      imageUrl: "https://i.scdn.co/image/ab67616d0000b273ef283fbeb261d0a98131a73a"
  ),

  ArtistData(
      id: 'a7',
      title: "Damien Jurado",
      imageUrl: "https://i.scdn.co/image/d58951bcfdb1305ff1db1d875f8776989c100656"
  ),

  ArtistData(
      id: 'a4',
      title: "Stu Larsen",
      imageUrl: "https://images.sk-static.com/images/media/profile_images/artists/673517/huge_avatar"
  ),
];



var dummyAlbumData = [
  AlbumData(
    id: 'c1',
    title: 'This is Alessia Cara',
    imageUrl: "https://pl.scdn.co/images/pl/default/54595bbe90a4cf9735fd15bab98a8e4591307772",
  ),
  AlbumData(
    id: 'c2',
    title: 'This is Marshmello',
    imageUrl: "https://i.scdn.co/image/ab67706f000000021333364f5d4af194c49a69ed",
  ),

  AlbumData(
    id: 'c3',
    title: 'This is Alan Walker',
    imageUrl: "https://pl.scdn.co/images/pl/default/1800ddf6d052a056605a4ad0f801363f0fdddbb9",
  ),

  AlbumData(
    id: 'c4',
    title: 'This is Alan Walker',
    imageUrl: "https://i.scdn.co/image/960547a625bc2eb742bb3dd170cbc049d2e94cf9",
  ),

  AlbumData(
    id: 'c5',
    title: 'This is Anne-Marie',
    imageUrl: "https://images.genius.com/f20e38699c80349f817c8bd7f169373b.640x640x1.jpg",
  ),

  AlbumData(
    id: 'c6',
    title: 'This is Blackbear',
    imageUrl: "https://i.scdn.co/image/2434ccdde56b354c722efa02e25892d1bb41f076",
  ),

  AlbumData(
    id: 'c7',
    title: 'This is Imagine Dragons',
    imageUrl: "https://i.scdn.co/image/52e4a7e4406bba40ff644e0f006044c41448262f",
  ),

  AlbumData(
    id: 'c8',
    title: 'This is Kodaline',
    imageUrl: "https://thisis-images.scdn.co/37i9dQZF1DZ06evO2HkQXm-default.jpg",
  ),
];

var dummySearchTile = [
  SearchData(
    color: Colors.greenAccent,
    imageUrl: "https://i.pinimg.com/236x/a9/5e/30/a95e30dee9f3a2c7e41e8ceb07c0e704.jpg",
    title: "Pop",
  ),

  SearchData(
    color: Colors.amber,
    imageUrl: "https://pl.scdn.co/images/pl/default/24a6da1ddb3154e96ab94cd806ec7a5b1e15ea3d",
    title: "Hip-Hop",
  ),

  SearchData(
    color: Colors.indigo,
    imageUrl: "https://pl.scdn.co/images/pl/default/627d7ba29bd2f734fd98e5586338b576cd2956af",
      title: "Indie",
  ),

  SearchData(
    color: Colors.red,
    imageUrl: "https://i.scdn.co/image/ab67706f00000002bd95dafe0c7057ebd57f5aee",
    title: "Hip-Hop",
  ),


];


var dummySearchAllTile = [
  SearchData(
    color: Colors.pinkAccent,
    imageUrl: "https://shorefire.com/images/made/images/uploads/files/Singles_Cover_Mt-Joy_400_400_s_c1.jpg",
    title: "Radio",
  ),

  SearchData(
    color: Colors.orange,
    imageUrl: "https://techcrunch.com/wp-content/uploads/2016/09/gettyimages-562613667.jpg?w=730&crop=1",
    title: "Concerts",
  ),

  SearchData(
    color: Colors.deepOrangeAccent,
    imageUrl: "https://pl.scdn.co/images/pl/default/c3f23803cd161c15fdc3702135cc5b823ac51b42",
    title: "Bollywood",
  ),

  SearchData(
    color: Colors.lightGreen,
    imageUrl: "https://stararena.files.wordpress.com/2017/09/kpop-daebak-bts-love-yourself.jpg?w=646",
    title: "K-Pop",
  ),

  SearchData(
    color: Colors.amber,
    imageUrl: "https://www.capradio.org/media/9214709/0801DissectPod5P.jpg",
    title: "Podcasts",
  ),

  SearchData(
    color: Colors.lightBlue,
    imageUrl: "https://pbs.twimg.com/media/CtcVNESWIAEYGWI.jpg",
    title: "Made for you",
  ),

  SearchData(
    color: Colors.purple,
    imageUrl: "https://cdn.playlists.net/images/playlists/image/medium/f45cc73d2261a37dd2da0a5f1d783f0b.jpg",
    title: "Discover",
  ),

  SearchData(
    color: Colors.lime,
    imageUrl: "https://asset-cdn.campaignbrief.com/wp-content/uploads/sites/2/2019/10/08111436/Spotify3.jpg",
    title: "Diwali",
  ),

];

var dummyLibraryData =[
  LibraryData(
      imageUrl: "https://pl.scdn.co/images/pl/default/1800ddf6d052a056605a4ad0f801363f0fdddbb9",
      title: "My All time favorites",
      subTitle: "by Nikhil Singh"
  ),

  LibraryData(
      imageUrl: "https://i.scdn.co/image/55db20d7c49bdcf52162474265c66ca601054b1c",
      title: "Liked Songs",
      subTitle: "51 Songs"
  ),

  LibraryData(
      imageUrl: "https://i.scdn.co/image/c130cf4ab4e8a9b8046153102bccedae5ad6d8ed",
      title: "Sleep Songs",
      subTitle: "by Nikhil Singh"
  ),

  LibraryData(
      imageUrl: "https://pbs.twimg.com/media/D6tCJXjW0AAXgzb.jpg",
      title: "New Music Friday",
      subTitle: "Made for Nikhil"
  ),

  LibraryData(
      imageUrl: "https://i.scdn.co/image/26007fcd7781ea9222b23ab3654ba86f60dd6e18",
      title: "Best of Adele",
      subTitle: "by Spotify"
  ),

  LibraryData(
      imageUrl: "https://i.scdn.co/image/94fd5fbdb622c6320ce14eb1845fedd100cf2168",
      title: "Ariana & Chill",
      subTitle: "by Mrudula"
  ),

  LibraryData(
      imageUrl: "https://pl.scdn.co/images/pl/default/e7c069f4e4387500dffbb2f631b908fe43993db7",
      title: "Spanish & English",
      subTitle: "by Pablo"
  ),

  LibraryData(
      imageUrl: "https://i.scdn.co/image/1d3cb8c3f866c394ed06f4b538ae3c06168ac0c4",
      title: "Kodaline Melodies",
      subTitle: "by Roberto"
  ),
];


var dummySongsList = [
  SongList(
    title: "Memories",
    subTitle: "Maroon 5",
    albumName: "Memories"
  ),
];


class VideoModel {
  String id;
  String title;
  String description;
  String thumbnail;
  String videoUrl;
  int duration;

  VideoModel(
      {this.id,
      this.title,
      this.description,
      this.thumbnail,
      this.videoUrl,
      this.duration});
}

var videoList = [
  VideoModel(
      id: '1',
      title: 'Matematika SMA - PRINSIP KESEBANGUNAN ? | Bimbel Online',
      description:
          'Ini adalah video pendahuluan silahkan simak dan tonton videonya',
      thumbnail: 'https://i.ytimg.com/vi/Q-0rLOeg5xA/hqdefault.jpg',
      videoUrl: 'https://connexist.com/video/mov_bbb.mp4',
      duration: 612),
  VideoModel(
      id: '2',
      title: 'Matematika XII SMA - Jarak Titik ke Titik | bimbel online',
      description:
          'Ini adalah video isi dari materi ini silahkan simak dan tonton videonya',
      thumbnail: 'https://i.ytimg.com/vi/1kGhZqQjLDA/hqdefault.jpg',
      videoUrl: 'https://connexist.com/video/mov_bbb.mp4',
      duration: 835),
  VideoModel(
      id: '3',
      title: 'Geografi VII SMP - Kondisi Geografis Indonesia | bimbel online',
      description:
          'Ini adalah video penutup silahkan simak dan tonton videonya',
      thumbnail: 'https://i.ytimg.com/vi/1W-IIqZVGqg/hqdefault.jpg',
      videoUrl: 'https://connexist.com/video/mov_bbb.mp4',
      duration: 442),
  VideoModel(
      id: '4',
      title: 'Kimia XII SMA - Pendahuluan Sifat Koligatif',
      description: 'Ini adalah akhir video silahkan simak dan tonton videonya',
      thumbnail: 'https://i.ytimg.com/vi/tB50-4AnkRs/hqdefault.jpg',
      videoUrl: 'https://connexist.com/video/mov_bbb.mp4',
      duration: 590),
  VideoModel(
      id: '5',
      title: 'Biologi XII SMA - Pertumbuhan dan Perkembangan Tumbuhan',
      description: 'Ini adalah Ending video silahkan simak dan tonton videonya',
      thumbnail: 'https://i.ytimg.com/vi/YzmrHNL-Sis/hqdefault.jpg',
      videoUrl: 'https://connexist.com/video/mov_bbb.mp4',
      duration: 808),
];

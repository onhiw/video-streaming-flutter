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
      videoUrl:
          'https://r2---sn-npoe7nez.googlevideo.com/videoplayback?expire=1610026239&ei=n7j2X7a-BcyvWfmXi-AL&ip=101.109.144.132&id=o-AB409CExzR6i9J_TqSnGtmEJQQX3jouGMy3-q_UvR1RT&itag=18&source=youtube&requiressl=yes&vprv=1&mime=video%2Fmp4&ns=cIfQR6Gq_DyMCr5sKsPnKMkF&gir=yes&clen=21718658&ratebypass=yes&dur=612.495&lmt=1595902635932009&fvip=7&c=WEB&txp=5431432&n=8CocOcASo9OOtM0_&sparams=expire%2Cei%2Cip%2Cid%2Citag%2Csource%2Crequiressl%2Cvprv%2Cmime%2Cns%2Cgir%2Cclen%2Cratebypass%2Cdur%2Clmt&sig=AOq0QJ8wRgIhALohB_Klwj3LP3iX1-zV-G3mJ9OU7DF43ITGvzlFeD08AiEAkg9r3RrH8DuUaqTWfe39-lnElINVcLnNZy0R-b0e7ys%3D&rm=sn-uvu-2tme7k,sn-uvu-c33e67k&req_id=7da469ab9e20a3ee&redirect_counter=3&cm2rm=sn-30als7l&cms_redirect=yes&mh=-t&mip=180.252.168.145&mm=34&mn=sn-npoe7nez&ms=ltu&mt=1610004291&mv=u&mvi=2&pl=20&lsparams=mh,mip,mm,mn,ms,mv,mvi,pl&lsig=AG3C_xAwRgIhAKxsYxDQbsO1_05s1c0efy44WsJ_9H0ydx9TVISBfDjCAiEAxH_qkTvFXgydHWPgFPZGhWKJlYhPwY_pZ4-g3vymvcc%3D',
      duration: 612),
  VideoModel(
      id: '2',
      title: 'Matematika XII SMA - Jarak Titik ke Titik | bimbel online',
      description:
          'Ini adalah video isi dari materi ini silahkan simak dan tonton videonya',
      thumbnail: 'https://i.ytimg.com/vi/1kGhZqQjLDA/hqdefault.jpg',
      videoUrl:
          'https://r4---sn-npoeeney.googlevideo.com/videoplayback?expire=1610026459&ei=e7n2X-2lM4yrxwK0n77gCg&ip=1.0.163.126&id=o-AFyKNFY8IA67fiOB70wCQMevzSJfU87p0PKiG4DSGMLM&itag=18&source=youtube&requiressl=yes&vprv=1&mime=video%2Fmp4&ns=iZFZ23NJlfg-j2SFt_hbclMF&gir=yes&clen=30075380&ratebypass=yes&dur=835.198&lmt=1595295441068059&fvip=4&c=WEB&txp=5431432&n=XeaUnHOqd-NU3KId&sparams=expire%2Cei%2Cip%2Cid%2Citag%2Csource%2Crequiressl%2Cvprv%2Cmime%2Cns%2Cgir%2Cclen%2Cratebypass%2Cdur%2Clmt&sig=AOq0QJ8wRQIhAOhDZXyvBXBAeJb1YXrXe0rb2rap3qjSN7L3-Tqff3sEAiAQ2kIBGTr421gPnmLnKi0OOy17T6pv9shKu31qkUWhxQ%3D%3D&rm=sn-uvu-0gue7z,sn-uvu-c3367z&req_id=82949417a8b6a3ee&redirect_counter=3&cm2rm=sn-30als7z&cms_redirect=yes&mh=cr&mip=180.252.168.145&mm=34&mn=sn-npoeeney&ms=ltu&mt=1610004799&mv=u&mvi=4&pl=16&lsparams=mh,mip,mm,mn,ms,mv,mvi,pl&lsig=AG3C_xAwRQIhANCCHdx4ved60Sg_e9HoyGdpR0sM3G4kO48NQ_WK9g-rAiAIyiE2ghhSydMaXqEIZeHs85ZhPFRZbfk9h2WKbA99HQ%3D%3D',
      duration: 835),
  VideoModel(
      id: '3',
      title: 'Geografi VII SMP - Kondisi Geografis Indonesia | bimbel online',
      description:
          'Ini adalah video penutup silahkan simak dan tonton videonya',
      thumbnail: 'https://i.ytimg.com/vi/1W-IIqZVGqg/hqdefault.jpg',
      videoUrl:
          'https://r3---sn-npoe7ney.googlevideo.com/videoplayback?expire=1610026599&ei=Brr2X-uMOs6Rkgacqpv4DA&ip=45.82.245.34&id=o-AKMrUT7zVRIy3GpzAPuuVw94jaxM5n91RZ_Sn_Z-JVWK&itag=18&source=youtube&requiressl=yes&vprv=1&mime=video%2Fmp4&ns=6lJ8u37fdMTF0zCopr0gbukF&gir=yes&clen=20175782&ratebypass=yes&dur=442.595&lmt=1540991048511062&fvip=3&c=WEB&txp=5431432&n=e4dp5FtWQc-r50TT&sparams=expire%2Cei%2Cip%2Cid%2Citag%2Csource%2Crequiressl%2Cvprv%2Cmime%2Cns%2Cgir%2Cclen%2Cratebypass%2Cdur%2Clmt&sig=AOq0QJ8wRgIhANNKgJADSIKbwm0bjXbm6-5Ld8Z-tFhYoXgwQJplIjTwAiEA--tSLF-pJw1RNc3x14NRlQdx1VTlLaWHrwU7VP_5ncg%3D&redirect_counter=1&cm2rm=sn-hp5sy7s&req_id=811a289183a3ee&cms_redirect=yes&mh=rN&mip=180.252.168.145&mm=34&mn=sn-npoe7ney&ms=ltu&mt=1610004799&mv=u&mvi=3&pl=20&lsparams=mh,mip,mm,mn,ms,mv,mvi,pl&lsig=AG3C_xAwRQIgD9_vy2lfT2C6UCvQSpyiFHdPZPypIxLPWgYz4hmDXzMCIQDTw8fdqicHajTmz1L4Hvhk_G3lForhBT16OU-4iC9A0w%3D%3D',
      duration: 442),
  VideoModel(
      id: '4',
      title: 'Kimia XII SMA - Pendahuluan Sifat Koligatif',
      description: 'Ini adalah akhir video silahkan simak dan tonton videonya',
      thumbnail: 'https://i.ytimg.com/vi/tB50-4AnkRs/hqdefault.jpg',
      videoUrl:
          'https://r2---sn-npoeen7r.googlevideo.com/videoplayback?expire=1610026795&ei=y7r2X4bNK8nL1gL9pKj4Ag&ip=185.30.145.19&id=o-AM5S8BfI4lcWx6WpJxer3zNGWZ618B-w6jsPudX5l5aq&itag=18&source=youtube&requiressl=yes&vprv=1&mime=video%2Fmp4&ns=-2g95LKndTbGuQm5nvkebLYF&gir=yes&clen=26559208&ratebypass=yes&dur=590.924&lmt=1595210717379473&fvip=2&c=WEB&txp=5531422&n=JTaXBpjmvwqRpYxo&sparams=expire%2Cei%2Cip%2Cid%2Citag%2Csource%2Crequiressl%2Cvprv%2Cmime%2Cns%2Cgir%2Cclen%2Cratebypass%2Cdur%2Clmt&sig=AOq0QJ8wRAIgf0uCqxwuWw5V63ne1WMAfT1_xqEnq6AhG7N59vqjrlACIE36-JR9VTvgkz5_d2fxL0Gx1pMay6_VIfpwMvgCXZJ2&rm=sn-5cjvh-up5z7l&req_id=4a5e24b2e3fba3ee&redirect_counter=2&cm2rm=sn-nv4sz7s&cms_redirect=yes&mh=DX&mip=180.252.168.145&mm=34&mn=sn-npoeen7r&ms=ltu&mt=1610004748&mv=m&mvi=2&pl=20&lsparams=mh,mip,mm,mn,ms,mv,mvi,pl&lsig=AG3C_xAwRgIhAOrZKGlxnjK0P8yLgoDy8FgvtGmBIwg8COKqD4YPObncAiEAwcEOXtgp3WOJ0pxcBnRXISlZCKftaqsD9MXN2tIB9Uw%3D',
      duration: 590),
  VideoModel(
      id: '5',
      title: 'Biologi XII SMA - Pertumbuhan dan Perkembangan Tumbuhan',
      description: 'Ini adalah Ending video silahkan simak dan tonton videonya',
      thumbnail: 'https://i.ytimg.com/vi/YzmrHNL-Sis/hqdefault.jpg',
      videoUrl:
          'https://r3---sn-npoe7ney.googlevideo.com/videoplayback?expire=1610026872&ei=GLv2X_uCKcHl-gamq6LwBw&ip=110.169.137.205&id=o-ANdMJgEh0eP02vIes7iwJYFiiuBlY0AJ0OlOz8udeIhi&itag=18&source=youtube&requiressl=yes&vprv=1&mime=video%2Fmp4&ns=ow8p-vlAI-pEQBV1AuVV-XkF&gir=yes&clen=42938466&ratebypass=yes&dur=808.867&lmt=1594864663158166&fvip=3&c=WEB&txp=5531432&n=0g8CLHXTWuUWQTHV&sparams=expire%2Cei%2Cip%2Cid%2Citag%2Csource%2Crequiressl%2Cvprv%2Cmime%2Cns%2Cgir%2Cclen%2Cratebypass%2Cdur%2Clmt&sig=AOq0QJ8wRQIhAPFuObboybkRV0AeTfFRp7CPqC1HFqVrQmL8LsclBLx3AiAKFy7C75-XpdCtoeJsDPveGTIl37De-LExC4yQKy3jWw%3D%3D&rm=sn-5np5po4v-c33sk7s&req_id=dc6333bb2a26a3ee&redirect_counter=2&cm2rm=sn-30als7s&cms_redirect=yes&mh=kn&mip=180.252.168.145&mm=34&mn=sn-npoe7ney&ms=ltu&mt=1610004799&mv=u&mvi=3&pl=16&lsparams=mh,mip,mm,mn,ms,mv,mvi,pl&lsig=AG3C_xAwRAIgNMZYaId9nZ47LYZEYmkC_Zlest94XfbTGD0vncIumM8CICcXdmeMRvUT7LlUDOPpXury6u8SBRi45ZGLUlXzJQXs',
      duration: 808),
];

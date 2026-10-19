import 'package:flutter_semester_1/models/makanan_model.dart';
import 'package:get/get.dart';

class ListMakananController extends GetxController {
  var dataMakanan = <MakananModel>[
    MakananModel(
      namaMakanan: "Horog-Horog",
      harga: "5.000",
      rating: "⭐⭐⭐⭐",
      review: "Tekstur kenyal unik, nikmat disantap bareng sate, rasanya khas gurih",
      deskripsi: "Makanan tradisional khas Jepara berbahan dasar tepung aren berbutir kenyal gurih, biasa disantap dengan parutan kelapa serta pelengkap aneka sate atau kuah bakso.",
      gambarPath: "assets/images/horog.png",
    ),
    MakananModel(
      namaMakanan: "Sate Kikil",
      harga: "8.000",
      rating: "⭐⭐⭐⭐⭐",
      review: "Kenyal gurih bumbunya meresap mantap",
      deskripsi: "Tusukan kikil sapi kenyal yang dimasak ungkep rempah sedap, dibakar dan dilumuri siraman saus bumbu kacang gurih pedas manis yang kental menggoda selera.",
      gambarPath: "assets/images/satekikil.png",
    ),
    MakananModel(
      namaMakanan: "Sate Kambing",
      harga: "25.000",
      rating: "⭐⭐⭐⭐",
      review: "Daging kambing muda empuk dan tidak bau",
      deskripsi: "Potongan daging kambing muda bakar beroles kecap manis bumbu rempah ketumbar, bertekstur empuk lembut beraroma asap harum, dan sangat gurih di lidah.",
      gambarPath: "assets/images/satekambing.png",
    ),
    MakananModel(
      namaMakanan: "Sate Ayam",
      harga: "15.000",
      rating: "⭐⭐⭐⭐",
      review: "Daging empuk tebal, bumbu kacangnya legit nagih",
      deskripsi: "Tusukan daging ayam empuk yang dipanggang arang harum, dibalut saus kacang kental manis gurih, disajikan lengkap bersama irisan bawang merah serta lontong.",
      gambarPath: "assets/images/sateayam.png",
    ),
    MakananModel(
      namaMakanan: "Sate Padang",
      harga: "20.000",
      rating: "⭐⭐⭐⭐",
      review: "Kuah rempahnya medok pedas sedap",
      deskripsi: "Potongan daging dan lidah sapi bakar beraroma khas rempah kuat, disiram kuah kental kuning gurih pedas kaya kapulaga, serai, dan kunyit hangat menggugah selera.",
      gambarPath: "assets/images/satepadang.png",
    ),
    MakananModel(
      namaMakanan: "Sate Taichan",
      harga: "15.000",
      rating: "⭐⭐⭐⭐",
      review: "Pedas asam segar, gurihnya nampol banget",
      deskripsi: "Tusukan daging ayam fillet empuk yang dibakar polos tanpa kecap, disajikan bersama kucuran perasan jeruk nipis segar dan cocolan ulekan sambal cabai rawit gurih pedas menggigit.",
      gambarPath: "assets/images/satetaichan.png",
    ),
  ].obs;
}

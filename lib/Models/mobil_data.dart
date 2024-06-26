import 'dart:typed_data';

import 'package:file_picker/file_picker.dart';
import 'package:firebase_database/firebase_database.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:uuid/uuid.dart';

class Mobil {
  final String gambar;
  final String tahun;
  final PlatformFile? detailgambar;
  final String tipemobil;
  final String harga;
  final String nama;
  final String penumpang;
  final String bensin;
  final String cc;
  final String transmisi;
  final String seat;
  final String brand;

  get key => null;

  create() async {
    final DatabaseReference db =
        FirebaseDatabase.instance.ref().child('mobils');
    final String id = const Uuid().v4();

    // Create a storage reference from our app
    final Uint8List? imageFile = detailgambar?.bytes;
    late String fileName;
    final storageRef = FirebaseStorage.instance
        .ref()
        .child('mobils/$id.${detailgambar?.extension}');
    try {
      // Upload raw data.
      await storageRef.putData(imageFile!);
      await storageRef.getDownloadURL().then((value) => fileName = value);
    } on FirebaseException catch (e) {
      print(e);
    }

    await db.child(id).set({
      'tahun': tahun,
      'detailgambar': fileName,
      'tipemobil': tipemobil,
      'harga': harga,
      'nama': nama,
      'penumpang': penumpang,
      'bensin': bensin,
      'cc': cc,
      'transmisi': transmisi,
      'seat': seat,
      'brand': brand,
    });
  }

  Mobil({
    required this.gambar,
    required this.tahun,
    required this.tipemobil,
    required this.harga,
    required this.nama,
    required this.penumpang,
    required this.bensin,
    required this.cc,
    required this.transmisi,
    required this.seat,
    required this.brand,
    this.detailgambar,
  });

  factory Mobil.fromJson(Map<String, dynamic> json) {
    return Mobil(
      gambar: json['detailgambar'] as String,
      tahun: json['tahun'] as String,
      tipemobil: json['tipemobil'] as String,
      harga: json['harga'] as String,
      nama: json['nama'] as String,
      penumpang: json['penumpang'] as String,
      bensin: json['bensin'] as String,
      cc: json['cc'] as String,
      transmisi: json['transmisi'] as String,
      seat: json['seat'] as String,
      brand: json['brand'] as String,
    );
  }
}

List<Mobil> mobil = [
  // Mobil(
  //     gambar: 'asset/mobil/yaris.png',
  //     tahun: '2019',
  //     seat: '1-5 seat',
  //     brand: 'toyota',
  //     detailgambar: 'asset/home/katalog.png',
  //     tipemobil: 'Hatchback',
  //     harga: 'Rp.300.000',
  //     nama: 'All New Yaris',
  //     penumpang: '5 Max',
  //     bensin: '42 Liter',
  //     cc: '1496 cc',
  //     transmisi: 'Manual'),
  // Mobil(
  //     gambar: 'asset/mobil/landcruiser.png',
  //     tahun: '2019',
  //     seat: '1-8 seat',
  //     brand: 'toyota',
  //     detailgambar: 'asset/home/katalog1.png',
  //     tipemobil: 'SUV..........',
  //     harga: 'Rp.450.000',
  //     nama: 'Land Cruiser',
  //     penumpang: '8 Max',
  //     bensin: '96 Liter',
  //     cc: '4000 cc',
  //     transmisi: 'Automatic'),
  // Mobil(
  //     gambar: 'asset/mobil/avanza.png',
  //     tahun: '2010',
  //     seat: '1-8 seat',
  //     brand: 'toyota',
  //     detailgambar: 'asset/home/katalog1.png',
  //     tipemobil: 'MPV..........',
  //     harga: 'Rp.250.000',
  //     nama: 'Avanza',
  //     penumpang: '8 Max',
  //     bensin: '45 Liter',
  //     cc: '1496 cc',
  //     transmisi: 'Manual'),
  // Mobil(
  //     gambar: 'asset/mobil/wigo.png',
  //     tahun: '2013',
  //     seat: '1-5 seat',
  //     brand: 'toyota',
  //     detailgambar: 'asset/home/katalog1.png',
  //     tipemobil: 'Hatchback',
  //     harga: 'Rp.230.000',
  //     nama: 'Wigo',
  //     penumpang: '5 Max',
  //     bensin: '32 Liter',
  //     cc: '1000 cc',
  //     transmisi: 'Automatic'),
  // Mobil(
  //     gambar: 'asset/mobil/civic.png',
  //     tahun: '2017',
  //     seat: '1-5 seat',
  //     brand: 'Honda',
  //     detailgambar: 'asset/home/katalog1.png',
  //     tipemobil: 'Sedan.......',
  //     harga: 'Rp.500.000',
  //     nama: 'Civic',
  //     penumpang: '5 Max',
  //     bensin: '47 Liter',
  //     cc: '1498 cc',
  //     transmisi: 'Manual'),
  // Mobil(
  //     gambar: 'asset/mobil/hrv.png',
  //     tahun: '2019',
  //     seat: '1-5 seat',
  //     brand: 'Honda',
  //     detailgambar: 'asset/home/katalog1.png',
  //     tipemobil: 'SUV..........',
  //     harga: 'Rp.550.000',
  //     nama: 'HR-V',
  //     penumpang: '5 Max',
  //     bensin: '50 Liter',
  //     cc: '1799 cc',
  //     transmisi: 'Automatic'),
  // Mobil(
  //     gambar: 'asset/mobil/crv.png',
  //     tahun: '2018',
  //     seat: '1-5 seat',
  //     brand: 'Honda',
  //     detailgambar: 'asset/home/katalog1.png',
  //     tipemobil: 'SUV..........',
  //     harga: 'Rp.600.000',
  //     nama: 'CR-V',
  //     penumpang: '5 Max',
  //     bensin: '57 Liter',
  //     cc: '1498 cc',
  //     transmisi: 'Manual'),
  // Mobil(
  //     gambar: 'asset/mobil/tucson.png',
  //     tahun: '2013',
  //     seat: '1-5 seat',
  //     brand: 'Hyundai',
  //     detailgambar: 'asset/home/katalog1.png',
  //     tipemobil: 'SUV..........',
  //     harga: 'Rp.550.000',
  //     nama: 'Tucson',
  //     penumpang: '5 Max',
  //     bensin: '62 Liter',
  //     cc: '1998 cc',
  //     transmisi: 'Manual'),
  // Mobil(
  //     gambar: 'asset/mobil/sonata.png',
  //     tahun: '2011',
  //     seat: '1-5 seat',
  //     brand: 'Hyundai',
  //     detailgambar: 'asset/home/katalog1.png',
  //     tipemobil: 'Sedan.............',
  //     harga: 'Rp.550.000',
  //     nama: 'Sonata',
  //     penumpang: '5 Max',
  //     bensin: '70 Liter',
  //     cc: '2349 cc',
  //     transmisi: 'Manual'),
  // Mobil(
  //     gambar: 'asset/mobil/mazda3.png',
  //     tahun: '2013',
  //     seat: '1-5 seat',
  //     brand: 'Mazda',
  //     detailgambar: 'asset/home/katalog1.png',
  //     tipemobil: 'Sedan.......',
  //     harga: 'Rp.550.000',
  //     nama: 'Mazda3',
  //     penumpang: '5 Max',
  //     bensin: '51 Liter',
  //     cc: '1998 cc',
  //     transmisi: 'Automatic'),
  // Mobil(
  //     gambar: 'asset/mobil/mazda6.png',
  //     tahun: '2012',
  //     seat: '1-5 seat',
  //     brand: 'Mazda',
  //     detailgambar: 'asset/home/katalog1.png',
  //     tipemobil: 'Sedan.......',
  //     harga: 'Rp.450.000',
  //     nama: 'Mazda6',
  //     penumpang: '5 Max',
  //     bensin: '62 Liter',
  //     cc: '2488 cc',
  //     transmisi: 'Automatic'),
];

List<Mobil> rekomendasi = [
  // Mobil(
  //     gambar: 'asset/mobil/yaris.png',
  //     tahun: '2019',
  //     seat: '1-5 seat',
  //     brand: 'toyota',
  //     detailgambar: 'asset/home/katalog.png',
  //     tipemobil: 'Hatchback',
  //     harga: 'Rp.300.000',
  //     nama: 'All New Yaris',
  //     penumpang: '5 Max',
  //     bensin: '42 Liter',
  //     cc: '1496 cc',
  //     transmisi: 'Manual'),
  // Mobil(
  //     gambar: 'asset/mobil/landcruiser.png',
  //     tahun: '2019',
  //     seat: '1-8 seat',
  //     brand: 'toyota',
  //     detailgambar: 'asset/home/katalog1.png',
  //     tipemobil: 'SUV',
  //     harga: 'Rp.450.000',
  //     nama: 'Land Cruiser',
  //     penumpang: '8 Max',
  //     bensin: '96 Liter',
  //     cc: '4000 cc',
  //     transmisi: 'Automatic'),
  // Mobil(
  //     gambar: 'asset/mobil/avanza.png',
  //     tahun: '2010',
  //     seat: '1-8 seat',
  //     brand: 'toyota',
  //     detailgambar: 'asset/home/katalog1.png',
  //     tipemobil: 'MPV',
  //     harga: 'Rp.250.000',
  //     nama: 'Avanza',
  //     penumpang: '8 Max',
  //     bensin: '45 Liter',
  //     cc: '1496 cc',
  //     transmisi: 'Manual'),
  // Mobil(
  //     gambar: 'asset/mobil/wigo.png',
  //     tahun: '2013',
  //     seat: '1-5 seat',
  //     brand: 'toyota',
  //     detailgambar: 'asset/home/katalog1.png',
  //     tipemobil: 'Hatchback',
  //     harga: 'Rp.230.000',
  //     nama: 'Wigo',
  //     penumpang: '5 Max',
  //     bensin: '32 Liter',
  //     cc: '1000 cc',
  //     transmisi: 'Automatic'),
];

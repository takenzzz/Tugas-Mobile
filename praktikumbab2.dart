// Kelas ProdukDigital
class ProdukDigital {
  String namaProduk;
  double harga;
  String kategori;

  ProdukDigital(this.namaProduk, this.harga, this.kategori);

  void terapkanDiskon(double persen) {
    harga -= harga * (persen / 100);
    print('Harga setelah diskon untuk $namaProduk: \$${harga.toStringAsFixed(2)}');
  }
}

// Kelas abstrak Karyawan
abstract class Karyawan {
  void bekerja();
}

// Subclass KaryawanTetap
class KaryawanTetap extends Karyawan {
  @override
  void bekerja() {
    print('Karyawan Tetap sedang bekerja.');
  }
}

// Subclass KaryawanKontrak
class KaryawanKontrak extends Karyawan {
  @override
  void bekerja() {
    print('Karyawan Kontrak sedang bekerja.');
  }
}

// Kelas Karyawan dengan positional dan named arguments
class KaryawanDetail {
  String nama; // Positional argument
  int umur; // Named argument
  String peran; // Named argument

  KaryawanDetail(this.nama, {required this.umur, required this.peran});
}

// Mixin Kinerja untuk Produktivitas
mixin Kinerja {
  int produktivitas = 80;

  void tingkatkanProduktivitas() {
    if (produktivitas < 85) {
      produktivitas += 5;
      print('Produktivitas meningkat menjadi: $produktivitas');
    }
  }
}

// Karyawan dengan Kinerja
class KaryawanDenganKinerja extends Karyawan with Kinerja {
  @override
  void bekerja() {
    print('Karyawan dengan kinerja sedang bekerja.');
    tingkatkanProduktivitas();
  }
}

// Enum FaseProyek
enum FaseProyek { Perencanaan, Pengembangan, Evaluasi }

// Kelas Proyek
class Proyek {
  FaseProyek fase;

  Proyek(this.fase);

  void transisiFase(FaseProyek faseBaru) {
    if (fase == FaseProyek.Perencanaan && faseBaru == FaseProyek.Pengembangan) {
      fase = faseBaru;
      print('Transisi ke fase: $fase');
    } else if (fase == FaseProyek.Pengembangan && faseBaru == FaseProyek.Evaluasi) {
      fase = faseBaru;
      print('Transisi ke fase: $fase');
    } else {
      print('Transisi tidak valid dari fase: $fase ke fase: $faseBaru');
    }
  }
}

// Kelas Perusahaan
class Perusahaan {
  List<Karyawan> karyawanAktif = [];
  List<Karyawan> karyawanNonAktif = [];
  final int batasKaryawanAktif = 20;

  void tambahKaryawan(Karyawan karyawan) {
    if (karyawanAktif.length < batasKaryawanAktif) {
      karyawanAktif.add(karyawan);
      print('${karyawan.runtimeType} ditambahkan sebagai karyawan aktif.');
    } else {
      print('Batas karyawan aktif telah tercapai.');
    }
  }

  void resign(Karyawan karyawan) {
    if (karyawanAktif.contains(karyawan)) {
      karyawanAktif.remove(karyawan);
      karyawanNonAktif.add(karyawan);
      print('${karyawan.runtimeType} telah resign dan menjadi non-aktif.');
    }
  }
}

// Fungsi utama
void main() {
  // Contoh penggunaan ProdukDigital
  var produk = ProdukDigital('Router', 100.0, 'Network Automation');
  produk.terapkanDiskon(10);

  // Contoh penggunaan Karyawan
  var karyawanTetap = KaryawanTetap();
  karyawanTetap.bekerja();

  var karyawanKontrak = KaryawanKontrak();
  karyawanKontrak.bekerja();

  // Contoh penggunaan Karyawan dengan positional dan named arguments
  var karyawan1 = KaryawanDetail('Budi', umur: 30, peran: 'Developer');
  print('Nama: ${karyawan1.nama}, Umur: ${karyawan1.umur}, Peran: ${karyawan1.peran}');

  // Contoh penggunaan mixin Kinerja
  var karyawanDenganKinerja = KaryawanDenganKinerja();
  karyawanDenganKinerja.bekerja();

  // Contoh penggunaan FaseProyek
  var proyek = Proyek(FaseProyek.Perencanaan);
  proyek
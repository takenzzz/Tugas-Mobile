class Buku {
  // Fields
  String judul;
  String penulis;

  // Constructor menggunakan this keyword
  Buku(this.judul, this.penulis);

  // Method pertama
  void deskripsiBuku(String genre, int tahunTerbit, String penerbit) {
    print('Judul: $judul');
    print('Penulis: $penulis');
    print('Genre: $genre');
    print('Tahun Terbit: $tahunTerbit');
    print('Penerbit: $penerbit');
  }

  // Method kedua
  void informasiBuku(int jumlahHalaman, double harga, String bahasa) {
    print('Jumlah Halaman: $jumlahHalaman');
    print('Harga: \$${harga.toStringAsFixed(2)}');
    print('Bahasa: $bahasa');
  }
}

void main() {
  var buku1 = Buku('Pemrograman Dart', 'Takenzz');

  buku1.deskripsiBuku('Teknologi', 2023, 'MiftahulHakim');
  buku1.informasiBuku(50, 999.99, 'Bahasa Indonesia');
}

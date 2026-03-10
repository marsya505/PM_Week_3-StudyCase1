// Fungsi untuk menampilkan tabel perkalian berdasarkan input angka
void tampilkanTabelPerkalian(int angka) {
  if (angka <= 5) {
    // Format sederhana untuk angka kecil
    _formatSederhana(angka); // jika angka 5 ke bawah, gunakan format sederhana
  } else {
    // Format tabel untuk angka besar
    _formatTabel(angka); // jika di atas 5, gunakan format tabel yang lebih lengkap
  }
}

void _formatSederhana(int angka) {
  // fungsi dengan awalan underscore berarti private
  for (int i = 1; i <= 10; i++) {
    // perulangan for i dimulai dari 1, selama i <= 10, i bertambah 1
    print('$angka x $i = ${angka * i}'); // string interpolation menggunakan $ untuk memasukkan variabel ke dalam teks
  }
}

void _formatTabel(int angka) {
  print('Tabel perkalian $angka:');
  print('-------------------');

  for (int i = 1; i <= 10; i++) {
    int total = angka * i; // menyimpan hasil perkalian ke variabel total
    String hasil = '$angka x $i = $total'; // membuat template teks dasar
        // Tambahkan highlight untuk hasil yang genap (habis dibagi 2)
    if (total % 2 == 0) {
      // modulo mengecek sisa bagi, jika total dibagi 2 sisanya 0 maka genap
      print('$hasil (genap)'); // menambah keterangan genap
    } else {
      print(hasil); // cetak biasa jika ganjil
    }
  }
}
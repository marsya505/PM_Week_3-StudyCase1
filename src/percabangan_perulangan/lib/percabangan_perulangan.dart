void _formatTabel(int angka) {
  print('Tabel perkalian $angka:');
  print('-------------------');

  for (int i = 1; i <= 10; i++) {
    int total = angka * i; // menyimpan hasil perkalian ke variabel total
    String hasil = '$angka x $i = $total'; // membuat template teks dasar
  }
}
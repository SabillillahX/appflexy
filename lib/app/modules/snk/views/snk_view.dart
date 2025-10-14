import 'package:flutter/material.dart';
import 'package:apptiket/app/core/utils/auto_responsive.dart';

class SnkView extends StatelessWidget {
  const SnkView({super.key});

  @override
  Widget build(BuildContext context) {
    final res = AutoResponsive(context);

    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xff181681),
        elevation: 1,
        title: Text(
          'Syarat & Ketentuan',
          style: TextStyle(
            fontFamily: 'Inter',
            fontWeight: FontWeight.bold,
            color: Colors.white,
            fontSize: res.sp(18),
          ),
        ),
        centerTitle: true,
        leading: IconButton(
          icon: Icon(Icons.arrow_back, color: Colors.white, size: res.sp(22)),
          onPressed: () {
            Navigator.of(context).pop();
          },
        ),
      ),
      body: ListView(
        padding: EdgeInsets.all(res.wp(4)),
        children: [
          ListTile(
            leading:
                Icon(Icons.description, color: Colors.black, size: res.sp(20)),
            title: Text(
              'Kebijakan Privasi',
              style: TextStyle(
                fontFamily: 'Inter',
                fontSize: res.sp(16),
                fontWeight: FontWeight.bold,
              ),
            ),
            contentPadding: EdgeInsets.symmetric(
                horizontal: res.wp(4), vertical: res.hp(1)),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const DetailPage(
                    title: 'Kebijakan Privasi',
                    content:
                        '''Kami berkomitmen untuk melindungi privasi pengguna aplikasi Flexy. Kebijakan Privasi ini menjelaskan bagaimana kami mengumpulkan, menggunakan, dan melindungi informasi pribadi Anda.

1. INFORMASI YANG KAMI KUMPULKAN
Kami mengumpulkan informasi pribadi yang Anda berikan secara langsung, termasuk:
• Nama lengkap dan informasi kontak
• Alamat email dan nomor telepon
• Data transaksi dan riwayat pembelian tiket
• Informasi akun dan preferensi pengguna

2. PENGGUNAAN INFORMASI
Informasi yang dikumpulkan digunakan untuk:
• Mengelola akun pengguna dan memberikan layanan
• Memproses transaksi dan pembelian tiket
• Meningkatkan kualitas layanan dan pengalaman pengguna
• Mengirimkan notifikasi penting terkait layanan

3. PERLINDUNGAN DATA
Kami menerapkan standar keamanan tinggi untuk melindungi data pribadi Anda dengan teknologi enkripsi dan sistem keamanan berlapis.

4. PEMBAGIAN INFORMASI
Data pribadi Anda tidak akan dibagikan kepada pihak ketiga tanpa persetujuan, kecuali dalam kondisi:
• Diperlukan untuk memenuhi kewajiban hukum
• Diperlukan untuk operasional layanan pihak ketiga yang terintegrasi

5. HAK PENGGUNA
Anda berhak untuk mengakses, memperbarui, atau meminta penghapusan data pribadi dengan menghubungi kami di: support@flexy.com

Kebijakan ini dapat diperbarui sewaktu-waktu. Perubahan akan dinotifikasikan melalui aplikasi.''',
                  ),
                ),
              );
            },
          ),
          Divider(height: 1, color: Colors.grey.shade300),
          ListTile(
            leading:
                Icon(Icons.description, color: Colors.black, size: res.sp(20)),
            title: Text(
              'Syarat & Ketentuan Flexy',
              style: TextStyle(
                fontFamily: 'Inter',
                fontSize: res.sp(16),
                fontWeight: FontWeight.bold,
              ),
            ),
            contentPadding: EdgeInsets.symmetric(
                horizontal: res.wp(4), vertical: res.hp(1)),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const DetailPage(
                      title: 'Syarat & Ketentuan Flexy',
                      content:
                          '''SYARAT DAN KETENTUAN PENGGUNAAN APLIKASI FLEXY

Dengan mengunduh, menginstal, atau menggunakan aplikasi Flexy, Anda menyetujui untuk terikat dengan syarat dan ketentuan berikut:

1. KETENTUAN UMUM
• Pengguna harus berusia minimal 17 tahun atau memiliki persetujuan dari orang tua/wali
• Satu akun hanya dapat digunakan oleh satu orang
• Pengguna bertanggung jawab menjaga kerahasiaan informasi akun

2. PENGGUNAAN LAYANAN
• Aplikasi hanya boleh digunakan untuk tujuan yang sah dan sesuai dengan hukum yang berlaku
• Dilarang melakukan aktivitas yang dapat merugikan sistem atau pengguna lain
• Dilarang menggunakan aplikasi untuk kegiatan ilegal, penipuan, atau melanggar hak pihak lain

3. TRANSAKSI DAN PEMBAYARAN
• Semua transaksi bersifat final dan tidak dapat dibatalkan kecuali dalam kondisi tertentu
• Pengguna bertanggung jawab atas keakuratan informasi yang diberikan saat bertransaksi
• Flexy berhak memverifikasi identitas pengguna untuk keperluan keamanan

4. TANGGUNG JAWAB DAN BATASAN
• Kami tidak bertanggung jawab atas kerugian yang timbul akibat:
  - Kesalahan pengguna dalam menggunakan aplikasi
  - Gangguan teknis atau pemeliharaan sistem
  - Force majeure atau kondisi di luar kendali perusahaan

5. HAK KEKAYAAN INTELEKTUAL
• Seluruh konten aplikasi dilindungi oleh hak cipta dan kekayaan intelektual
• Dilarang menyalin, memodifikasi, atau mendistribusikan konten tanpa izin

6. PERUBAHAN LAYANAN
• Flexy berhak mengubah, menghentikan, atau menambah fitur layanan
• Perubahan syarat dan ketentuan akan dinotifikasikan melalui aplikasi
• Penggunaan berkelanjutan setelah perubahan dianggap sebagai persetujuan

7. PENUTUPAN AKUN
Flexy berhak menutup akun pengguna yang melanggar syarat dan ketentuan tanpa pemberitahuan sebelumnya.

Untuk pertanyaan lebih lanjut, hubungi: support@flexy.com

Syarat dan ketentuan ini berlaku sejak tanggal disetujui oleh pengguna.'''),
                ),
              );
            },
          ),
          Divider(height: 1, color: Colors.grey.shade300),
        ],
      ),
    );
  }
}

class DetailPage extends StatelessWidget {
  final String title;
  final String content;

  const DetailPage({super.key, required this.title, required this.content});

  @override
  Widget build(BuildContext context) {
    final res = AutoResponsive(context);

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 1,
        title: Text(
          title,
          style: TextStyle(
            fontFamily: 'Inter',
            fontWeight: FontWeight.bold,
            color: Colors.black,
            fontSize: res.sp(18),
          ),
        ),
        centerTitle: true,
        leading: IconButton(
          icon: Icon(Icons.arrow_back, color: Colors.black, size: res.sp(22)),
          onPressed: () {
            Navigator.of(context).pop();
          },
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(res.wp(4)),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                title,
                style: TextStyle(
                  fontSize: res.sp(20),
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                ),
              ),
              SizedBox(height: res.hp(2)),
              Text(
                content,
                style: TextStyle(
                  fontSize: res.sp(14),
                  height: 1.6,
                  color: Colors.black87,
                ),
                textAlign: TextAlign.justify,
              ),
            ],
          ),
        ),
      ),
    );
  }
}

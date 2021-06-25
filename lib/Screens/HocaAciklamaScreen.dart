import 'package:flutter/material.dart';

class AciklamaScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Profile Menü"),
        backgroundColor: Colors.black12,
      ),
      body: Column(
        children: [
          SizedBox(
            height: 150,
          ),
          Padding(
            padding: const EdgeInsets.all(15.0),
            child: Text(
                "Bu uygulama Dr. Öğretim Üyesi Ahmet Cevahir ÇINAR tarafından yürütülen 3301456 kodlu MOBİLPROGRAMLAMA dersi kapsamında 173301073 numaralı Muhammed OZDEMIR tarafından 06/22/2021 günü yapılmıştır."),
          ),
        ],
      ),
    );
  }
}

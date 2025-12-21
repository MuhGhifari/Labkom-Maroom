import 'package:flutter/material.dart';
import 'data_kontak.dart';
import 'update.dart';
import 'tambah.dart';

class KontakTelepon extends StatefulWidget {
  const KontakTelepon({super.key});

  @override
  State<KontakTelepon> createState() => _KontakTeleponState();
}

class _KontakTeleponState extends State<KontakTelepon> {
  @override  
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Kontak Telpon", style: TextStyle(color: Colors.white)),
        backgroundColor: Colors.lightBlue,
      ),
      body: ListView.builder(
        itemCount: kontak.length,
        itemBuilder: (context, index) {
          return Card(
            child: ListTile(
              leading: const Icon(Icons.person),
              title: Text("${kontak[index]['nama']}"),
              subtitle: Text("${kontak[index]['nomor']}"),
              trailing: PopupMenuButton(
                initialValue: null,
                onSelected: (pilihan) async {
                  if (pilihan == "Update") {
                    var editKontak = await Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (context) => Update(
                          nama:kontak[index]['nama'],
                          nomor:kontak[index]['nomor'],
                        ),
                      )
                    );
                    if (editKontak != null) {
                      setState(() {
                        kontak[index] = editKontak;
                      });
                    }
                  } else {
                    showDialog(
                      context: context, 
                      builder: (context) => AlertDialog(
                        title: const Text('Hapus kontak?'),
                        content: const Text('Yakin mau hapus?'),
                        actions: <Widget>[
                          TextButton(
                            onPressed: () => Navigator.pop(context), 
                            child: const Text('Cancel'),
                          ),
                          TextButton(
                            onPressed: () {
                              setState(() {
                                kontak.removeAt(index);
                              });
                              Navigator.pop(context);
                            }, 
                            child: const Text('Delete'),
                          ),
                        ]
                      ),
                    );
                  }
                },
                itemBuilder: (BuildContext context) {
                  return [
                    const PopupMenuItem(
                      value: "Update",
                      child: Text("Update")
                    ),
                    const PopupMenuItem(
                      value: "Delete",
                      child: Text("Delete", style: TextStyle(color: Colors.red),)
                    ),
                  ];
                },
              ),
            ),
          );
        }
      ),
      floatingActionButton: FloatingActionButton.extended(
        onPressed: () async {
          var newKontak = await Navigator.of(context).push(
            MaterialPageRoute(builder: (context) => const Tambah()),
          );
          if (newKontak != null) {
            setState(() {
              kontak.add(newKontak);
            });
          }
        }, 
        label: const Icon(Icons.add),
      ),
    );
  }
}
import 'package:flutter/material.dart';

class Update extends StatefulWidget {
  const Update({super.key, required this.nama, required this.nomor});
  final String? nama;
  final String? nomor;

  @override 
  State<Update> createState() => _UpdateState();
}

class _UpdateState extends State<Update> {
  final _formKey = GlobalKey<FormState>();
  String _nama = '';
  String _nomor = '';

  @override
  void initState() {
    _nama = widget.nama!;
    _nomor = widget.nomor!;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Update Kontak', style: TextStyle(color: Colors.white),),
        centerTitle: true,
        backgroundColor: Colors.lightBlue,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 40),
            child: Form(
              key: _formKey,
              child: Column(
                children: [
                  TextFormField(
                    initialValue: _nama,
                    decoration: const InputDecoration(labelText: "Nama", border: OutlineInputBorder(),),
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'Nama tidak boleh kosong.';
                      }
                      return null;
                    },
                    onSaved: (value) {
                      setState(() {
                        _nama = value!;
                      });
                    }
                  ),
                  const SizedBox(
                    height: 24,
                  ),
                  TextFormField(
                    initialValue: _nomor,
                    decoration: const InputDecoration(labelText: "Nomor Telepon", border: OutlineInputBorder(),),
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'Nomor tidak boleh kosong.';
                      }

                      if (value.length < 10) {
                        return 'Nomor telepon minimal 10 digit.';
                      }

                      if (value.length > 13) {
                        return 'Nomor telepon maksimal 13 digit.';
                      }

                      if (int.tryParse(value) == null) {
                        return 'Nomor telepon harus berupa angka.';
                      }

                      return null;
                    },
                    onSaved: (value) {
                      setState(() {
                        _nomor = value!;
                      });
                    }
                  ),
                  const SizedBox(height: 15),
                  ElevatedButton(
                    onPressed: () {
                      if (_formKey.currentState!.validate()) {
                        _formKey.currentState!.save();
                        ScaffoldMessenger.of(context).showSnackBar(
                          const SnackBar(content: Text("Kontak berhasil disimpan.")),
                        );
                        Navigator.pop(
                          context, {"nama": _nama, "nomor": _nomor}
                        );
                      }
                    },
                    child: const Text("Simpan"),
                  ), 
                ]
              )
            ),
          )
        ],
      )
    );
  }
}
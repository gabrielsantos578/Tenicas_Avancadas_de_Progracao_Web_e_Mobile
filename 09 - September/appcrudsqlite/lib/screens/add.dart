import 'package:flutter/material.dart';
import 'package:appcrudsqlite/data/dbRestaurante.dart';

class Add extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _Add();
  }
}

class _Add extends State<Add> {
  TextEditingController nome = TextEditingController();

  TextEditingController chef = TextEditingController();

  TextEditingController avaliacao = TextEditingController();

  TextEditingController dataFundacao = TextEditingController();

  TextEditingController endereco = TextEditingController();

  TextEditingController roll_no = TextEditingController();

  //test editing controllers for form

  MyDb mydb = MyDb(); //mydb new object from db.dart

  @override
  void initState() {
    mydb.open(); //initilization database

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Inserir Restaurante"),
        ),
        body: Container(
          padding: EdgeInsets.all(30),
          child: Column(
            children: [
              TextField(
                controller: nome,
                decoration: const InputDecoration(
                  hintText: "Nome do restaurante",
                ),
              ),
              TextField(
                controller: chef,
                decoration: const InputDecoration(
                  hintText: "Nome do chef",
                ),
              ),
              TextField(
                controller: avaliacao,
                decoration: const InputDecoration(
                  hintText: "Avaliação",
                ),
              ),
              TextField(
                controller: dataFundacao,
                decoration: const InputDecoration(
                  hintText: "Data fundação",
                ),
              ),
              TextField(
                controller: endereco,
                decoration: const InputDecoration(
                  hintText: "Endereço",
                ),
              ),
              TextField(
                controller: roll_no,
                decoration: const InputDecoration(
                  hintText: "Roll no",
                ),
              ),
              ElevatedButton(
                  onPressed: () {
                    mydb.db.rawInsert(
                        "INSERT INTO restaurante(nome, chef, avaliacao, dataFundacao, endereco, roll_no) VALUES (?, ?, ?, ?, ?, ?);",
                        [
                          nome.text,
                          chef.text,
                          avaliacao.text,
                          dataFundacao.text,
                          endereco.text,
                          roll_no.text
                        ]); //add student from form to database

                    ScaffoldMessenger.of(context).showSnackBar(
                        SnackBar(content: Text("Restaurante Cadastrado")));

                    nome.text = "";

                    chef.text = "";

                    avaliacao.text = "";

                    dataFundacao.text = "";

                    endereco.text = "";

                    roll_no.text = "";
                  },
                  child: Text("Salvar Restaurante")),
            ],
          ),
        ));
  }
}

import 'package:flutter/material.dart';
import 'package:appcrudsqlite/data/dbRestaurante.dart';

// ignore: must_be_immutable
class EditRestaurante extends StatefulWidget {
  int rollno;

  EditRestaurante({required this.rollno}); //constructor for class

  @override
  State<StatefulWidget> createState() {
    return _EditRestaurante();
  }
}

class _EditRestaurante extends State<EditRestaurante> {
  TextEditingController nome = TextEditingController();

  TextEditingController chef = TextEditingController();

  TextEditingController avaliacao = TextEditingController();

  TextEditingController dataFundacao = TextEditingController();

  TextEditingController endereco = TextEditingController();

  TextEditingController rollno = TextEditingController();

  MyDb mydb = new MyDb();

  @override
  void initState() {
    mydb.open();

    Future.delayed(Duration(milliseconds: 500), () async {
      var data = await mydb.getRestaurantes(
          widget.rollno); //widget.rollno is passed paramater to this class

      if (data != null) {
        nome.text = data["nome"];

        chef.text = data["chef"];

        avaliacao.text = data["avaliacao"].toString();

        dataFundacao.text = data["dataFundacao"];

        endereco.text = data["endereco"];

        rollno.text = data["roll_no"].toString();

        setState(() {});
      } else {
        print("Não encontrado dados com roll no: " + widget.rollno.toString());
      }
    });

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Editar Restaurantes"),
        ),
        body: Container(
          padding: EdgeInsets.all(30),
          child: Column(
            children: [
              TextField(
                controller: nome,
                decoration: InputDecoration(
                  hintText: "Nome",
                ),
              ),
              TextField(
                controller: chef,
                decoration: InputDecoration(
                  hintText: "Chefe",
                ),
              ),
              TextField(
                controller: avaliacao,
                decoration: InputDecoration(
                  hintText: "Avaliação",
                ),
              ),
              TextField(
                controller: dataFundacao,
                decoration: InputDecoration(
                  hintText: "Data Fundação",
                ),
              ),
              TextField(
                controller: endereco,
                decoration: InputDecoration(
                  hintText: "Endereço",
                ),
              ),
              TextField(
                controller: rollno,
                decoration: InputDecoration(
                  hintText: "Roll No.",
                ),
              ),
              ElevatedButton(
                  onPressed: () {
                    mydb.db.rawInsert(
                        "UPDATE restaurante SET nome = ?, chef = ?, avaliacao = ?, dataFundacao=?, endereco=?, roll_no = ? WHERE roll_no = ?",
                        [
                          nome.text,
                          chef.text,
                          avaliacao.text,
                          dataFundacao.text,
                          endereco.text,
                          rollno.text,
                          widget.rollno
                        ]);

                    //update table with roll no.

                    ScaffoldMessenger.of(context).showSnackBar(
                        SnackBar(content: Text("Restaurante Alterado!")));
                  },
                  child: Text("Alterar Restaurante")),
            ],
          ),
        ));
  }
}

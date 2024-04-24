import 'package:flutter/material.dart';

class EventosCalendario extends StatefulWidget {
  final String titulo;
  final String horario;
  final String chamada;
  final String descricao;
  final Color cor;
  final String local;

  const EventosCalendario({
    Key? key,
    required this.titulo,
    required this.horario,
    required this.chamada,
    required this.descricao,
    required this.cor,
    required this.local,
  }) : super(key: key);

  @override
  _EventosCalendarioState createState() => _EventosCalendarioState();
}

class _EventosCalendarioState extends State<EventosCalendario> {
  bool _favorited = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(
          child:
              Text('Chuva 💜 Flutter', style: TextStyle(color: Colors.white)),
        ),
        backgroundColor: Color.fromRGBO(69, 97, 137, 1),
      ),
      body: Padding(
        padding: const EdgeInsets.all(0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              width: double.infinity,
              height: 25,
              color: widget.cor,
              child: Text(
                ' ' + widget.chamada,
                style: TextStyle(
                  fontSize: 14,
                  color: Colors.white,
                ),
              ),
            ),
            Center(
              child: Text(
                widget.titulo,
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
                textAlign: TextAlign.center,
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 5, top: 8),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Icon(
                    Icons.access_time,
                    size: 18,
                    color: Colors.blue,
                  ),
                  SizedBox(width: 8),
                  Text(
                    widget.horario,
                    style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.normal,
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 5, top: 2),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Icon(
                    Icons.location_on,
                    size: 18,
                    color: Colors.blue,
                  ),
                  SizedBox(width: 8),
                  Text(
                    widget.local,
                    style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.normal,
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 16),
            Center(
              child: ElevatedButton.icon(
                  onPressed: () {
                    setState(() {
                      _favorited = !_favorited;
                    });
                  },
                  icon: _favorited
                      ? const Icon(
                          Icons.star,
                          color: Colors.white,
                        )
                      : const Icon(
                          Icons.star_outline,
                          color: Colors.white,
                        ),
                  label: Text(
                    _favorited
                        ? 'Remover da sua agenda'
                        : 'Adicionar à sua agenda',
                    style: TextStyle(color: Colors.white),
                  ),
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Color.fromRGBO(49, 109, 195, 1),
                    minimumSize: Size(400, 40),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8),
                    ),
                  )),
            ),
            SizedBox(height: 60),
            Padding(
              padding: const EdgeInsets.only(left: 10),
              child: Text(widget.descricao),
            ),
          ],
        ),
      ),
    );
  }
}

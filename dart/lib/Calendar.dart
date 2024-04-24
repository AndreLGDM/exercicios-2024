import 'package:flutter/material.dart';
import 'Eventos_calendario.dart';
import 'Activity.dart';

class Calendar extends StatefulWidget {
  const Calendar({super.key});

  @override
  State<Calendar> createState() => _CalendarState();
}

class _CalendarState extends State<Calendar> {
  DateTime _currentDate = DateTime(2023, 11, 26);
  bool _clicked = false;

  void _navigateToDetails(String title, String time, String call,
      String description, Color color, String locale) {
    Navigator.of(context).push(MaterialPageRoute(
      builder: (context) => EventosCalendario(
        titulo: title,
        horario: time,
        chamada: call,
        descricao: description,
        cor: color,
        local: locale,
      ),
    ));
  }

  void _changeDate(DateTime newDate) {
    setState(() {
      _currentDate = newDate;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 130,
        backgroundColor: Color.fromRGBO(69, 97, 137, 1),
        title: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text('Chuva 💜 Flutter', style: TextStyle(color: Colors.white)),
            Text('Programação',
                style: TextStyle(
                    color: Colors.white, fontWeight: FontWeight.w300)),
            SizedBox(height: 8),
            Container(
              padding: EdgeInsets.all(8),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(300),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    width: 50,
                    height: 32,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(30),
                      color: Color.fromRGBO(48, 109, 195, 1)!,
                    ),
                    child: Icon(Icons.calendar_month, color: Colors.black),
                  ),
                  Text('Exibindo todas atividades',
                      style: TextStyle(color: Colors.black, fontSize: 17)),
                  SizedBox(),
                ],
              ),
            )
          ],
        ),
      ),
      body: Column(
        children: [
          Container(
            color: Color.fromRGBO(48, 109, 195, 1)!,
            child: Row(
              children: [
                Container(
                  width: 50,
                  height: 50,
                  color: Colors.white,
                  child: Center(
                    child: Text(
                      ' NOV\n 2023',
                      style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                          fontSize: 16),
                    ),
                  ),
                ),
                for (final day in ['26', '27', '28', '29', '30'])
                  Container(
                    width: 50,
                    height: 50,
                    color: Color.fromRGBO(48, 109, 195, 1)!,
                    child: Center(
                        child:
                            Text(day, style: TextStyle(color: Colors.white))),
                  ),
              ],
            ),
          ),
          SizedBox(height: 5),
          GestureDetector(
            onTap: () => _navigateToDetails(
                'A Física dos Buracos Negros Supermassivos',
                'Domingo 07:00h - 08:00h',
                'Astrofísica e cosmologia',
                'A física dos buracos negros supermassivos explora fenômenos intensos e enigmáticos no universo. Esses objetos astronômicos, com massas a bilhões de vezes a massa do Sol, influenciam fortemente sua vizinhança cósmica, afetando a evolução das galáxias e desafiando nosso entendimento sobre gravidade e a natureza do espaço-tempo.',
                Colors.purple[300]!,
                'Maputo'),
            child: Container(
              width: 360,
              height: 92,
              child: ClipRRect(
                borderRadius: BorderRadius.circular(5),
                child: Container(
                  decoration: BoxDecoration(
                    color: Colors.white,
                    border: Border(
                      left: BorderSide(color: Colors.purple[300]!, width: 5),
                      bottom: BorderSide(color: Colors.grey, width: 2),
                    ),
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        '    Mesa redonda de 07:00 até 09:00',
                        style: TextStyle(
                            fontSize: 12,
                            color: Colors.black,
                            fontWeight: FontWeight.bold),
                      ),
                      Text('   A Física dos Buracos Negros\n   Supermassivos',
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 16,
                              fontWeight: FontWeight.bold)),
                      Text('   Sthepen William Hawking',
                          style: TextStyle(
                              color: Colors.grey,
                              fontSize: 15,
                              fontWeight: FontWeight.w500)),
                    ],
                  ),
                ),
              ),
            ),
          ),
          SizedBox(height: 4),
          Container(
            width: 360,
            height: 92,
            child: ClipRRect(
              borderRadius: BorderRadius.circular(5),
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  border: Border(
                    left: BorderSide(color: Colors.orange, width: 5),
                    bottom: BorderSide(color: Colors.grey, width: 2),
                  ),
                ),
                child: Stack(
                  children: [
                    Positioned(
                      top: 0,
                      right: 5,
                      child: Icon(Icons.bookmark,
                          color: Color.fromRGBO(124, 144, 172, 1)),
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          '\n    Palestra de 08:00 até 08:00',
                          style: TextStyle(
                              fontSize: 12,
                              color: Colors.black,
                              fontWeight: FontWeight.bold),
                        ),
                        Text(
                            '   Métodos Avançados na Busca por\n   Inteligência Extraterrestre',
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: 16,
                                fontWeight: FontWeight.w500)),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),
          SizedBox(height: 5),
          GestureDetector(
            onTap: () => _navigateToDetails(
                'Astrofísica Relativista: Explorando as Previsões de Einsten',
                'Domingo 08:00h - 09:00h',
                'Astrofísica e Cosmologia',
                'A Astrofísica Relativista dedica-se ao estudo dos fenômenos cósmicos onde a teoria da relatividade geral de Einstein é crucial para entender os processos físicos envolvidos. Esta teoria prevê a existência de buracos negros, ondas gravitacionais e a curvatura do espaço-tempo em presença de massa.\n\nOs astrofísicos exploram objetos como buracos negros e estrelas de nêutrons para testar as previsões da relatividade em ambientes extremos, tais como fortes campos gravitacionais. A observação de ondas gravitacionais, em particular,',
                Colors.purple[300]!,
                'Pretória'),
            child: Container(
              width: 360,
              height: 91,
              child: ClipRRect(
                borderRadius: BorderRadius.circular(5),
                child: Container(
                  decoration: BoxDecoration(
                    color: Colors.white,
                    border: Border(
                      left: BorderSide(color: Colors.purple[300]!, width: 5),
                      bottom: BorderSide(color: Colors.grey, width: 2),
                    ),
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        '   Apresentação de pôster de 08:00 as 09:00',
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 12,
                            fontWeight: FontWeight.w500),
                      ),
                      Text(
                          '   Astrofísica Relativista: Explorando as Previsões\n   de  Einsten',
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 15,
                              fontWeight: FontWeight.w500)),
                      Text('    Neil deGrasse Tyson, Stephen William Hawking',
                          style: TextStyle(
                              color: Colors.grey,
                              fontSize: 15,
                              fontWeight: FontWeight.w500)),
                    ],
                  ),
                ),
              ),
            ),
          ),
          SizedBox(height: 5),
          GestureDetector(
            onTap: () => _navigateToDetails(
                'Vida Além da Terra: Uma Perspectiva Astrobiológica',
                'Domingo 08:00h - 09:00h',
                'Astrobiologia e Vida Extraterrestre',
                'Vida nas Estrelas: Investigando a Existência e Adaptabilidade de Organismos em Expl...\n'
                    'Stephen William Hawking, Fabiano Sant Ana. \n\n\n'
                    'Explorando o Inexplorado: Buscando Sinais de Vida Além do Nosso Planeta Através da ... \n'
                    'Neil deGrasse Tyson, Fabiano SantAna',
                Colors.orange,
                'Gaborone'),
            child: Container(
              width: 360,
              height: 91,
              child: ClipRRect(
                borderRadius: BorderRadius.circular(5),
                child: Container(
                  decoration: BoxDecoration(
                    color: Colors.white,
                    border: Border(
                      left: BorderSide(color: Colors.orange, width: 5),
                      bottom: BorderSide(color: Colors.grey, width: 2),
                    ),
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('    Apresentação de pôster de 08:00 até 09:00',
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 12,
                              fontWeight: FontWeight.w500)),
                      Text(
                          '    Vida Além da Terra: Uma Perspectiva\n    Astrobiológica',
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 16,
                              fontWeight: FontWeight.w500)),
                    ],
                  ),
                ),
              ),
            ),
          ),
          SizedBox(height: 5),
          GestureDetector(
            onTap: () => _navigateToDetails(
                'Biossinais em Mundos Oceânicos: Europa e Encélado',
                'Domingo 09:00h - 10:00h',
                'Exoplanetas e Sistemas Planetários',
                '',
                Color.fromRGBO(199, 184, 132, 1),
                'Luanda'),
            child: Container(
              width: 360,
              height: 91,
              child: ClipRRect(
                borderRadius: BorderRadius.circular(5),
                child: Container(
                  decoration: BoxDecoration(
                    color: Colors.white,
                    border: Border(
                      left: BorderSide(
                          color: Color.fromRGBO(199, 184, 132, 1), width: 5),
                      bottom: BorderSide(color: Colors.grey, width: 2),
                    ),
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('   Palestra de 09:00 até 10:00',
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 12,
                              fontWeight: FontWeight.w500)),
                      Text(
                          '   Biossinais em Mundos Oceânicos: Europa e\n   Encélado',
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 15,
                              fontWeight: FontWeight.w500)),
                      Text("   Fabiano Sant'Ana",
                          style: TextStyle(
                              color: Colors.grey,
                              fontSize: 15,
                              fontWeight: FontWeight.w500)),
                    ],
                  ),
                ),
              ),
            ),
          ),
          SizedBox(height: 5),
          Container(
            width: 360,
            height: 91,
            child: ClipRRect(
              borderRadius: BorderRadius.circular(5),
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  border: Border(
                    left: BorderSide(color: Colors.yellow, width: 5),
                    bottom: BorderSide(color: Colors.grey, width: 2),
                  ),
                ),
                child: const Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('   Apresentação de pôster de 09:00 até 11:00',
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 12,
                              fontWeight: FontWeight.w500)),
                      Text(
                        '   Biossinaturas em Rochas Espaciais',
                        style: TextStyle(
                            color: Colors.black, fontWeight: FontWeight.w500),
                      ),
                    ]),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

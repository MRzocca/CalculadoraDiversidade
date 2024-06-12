import 'package:flutter/material.dart';

void main() {
  runApp(MyCalculador());
}

class MyCalculador extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Calculadora de Diversidade',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Calculador(),
    );
  }
}

class Calculador extends StatefulWidget {
  @override
  _CalculadorState createState() => _CalculadorState();
}

class _CalculadorState extends State<Calculador> {
  int _value1 = 0;
  int _value2 = 0;
  int _value3 = 0;
  int _value4 = 0;
  int _value5 = 0;
  int _value6 = 0;

  void _sum() {
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Calculador Diversidade'),
      ),
      body: Padding(
        padding: EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            TextField(
              keyboardType: TextInputType.number,
              decoration:
                  InputDecoration(labelText: 'Digite o total de pessoas'),
              onChanged: (value) {
                setState(() {
                  _value1 = int.tryParse(value) ?? 0;
                });
              },
            ),
            SizedBox(height: 20.0),
            TextField(
              keyboardType: TextInputType.number,
              decoration:
                  InputDecoration(labelText: 'Digite o número de homossexuais'),
              onChanged: (value) {
                setState(() {
                  _value2 = int.tryParse(value) ?? 0;
                });
              },
            ),
            TextField(
              keyboardType: TextInputType.number,
              decoration:
                  InputDecoration(labelText: 'Digite o número de bissexuais'),
              onChanged: (value) {
                setState(() {
                  _value3 = int.tryParse(value) ?? 0;
                });
              },
            ),
            TextField(
              keyboardType: TextInputType.number,
              decoration:
                  InputDecoration(labelText: 'Digtie o número de assexuais'),
              onChanged: (value) {
                setState(() {
                  _value4 = int.tryParse(value) ?? 0;
                });
              },
            ),
            TextField(
              keyboardType: TextInputType.number,
              decoration:
                  InputDecoration(labelText: 'Digite o  número de panssexuais'),
              onChanged: (value) {
                setState(() {
                  _value5 = int.tryParse(value) ?? 0;
                });
              },
            ),
            TextField(
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                  labelText: 'Digite o número de heterossexuais'),
              onChanged: (value) {
                setState(() {
                  _value6 = int.tryParse(value) ?? 0;
                });
              },
            ),
            Text(
              '\nCriado por: Murilo Zocca\n',
              style: TextStyle(
                  fontSize: 20.0,
                  fontWeight: FontWeight.bold,
                  color: Color.fromARGB(255, 172, 0, 0)),
              textAlign: TextAlign.center,
            ),
            Text(
              'número de Homossexual: ${(_value2 / _value1 * 100).toStringAsFixed(2)}%',
              style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold),
            ),
            Text(
              'número de Bissexual: ${(_value3 / _value1 * 100).toStringAsFixed(2)}%',
              style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold),
            ),
            Text(
              'número de Assexual: ${(_value4 / _value1 * 100).toStringAsFixed(2)}%',
              style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold),
            ),
            Text(
              'número de pansexual: ${(_value5 / _value1 * 100).toStringAsFixed(2)}%',
              style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold),
            ),
            Text(
              'número de heterossexual: ${(_value6 / _value1 * 100).toStringAsFixed(2)}%',
              style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold),
            ),
          ],
        ),
      ),
    );
  }
}

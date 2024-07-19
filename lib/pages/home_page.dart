import 'package:flutter/material.dart';
import 'package:mez_calc/shared/constants/custom_colors.dart';
import 'package:mez_calc/shared/constants/decoration_forms_homepage.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Calculadora de Mezanino",
          style: TextStyle(color: CustomColors().getGeneralColor()),
        ),
        backgroundColor: CustomColors().getAppBarMainColor(),
      ),
      body: Column(
        children: [
          Container(
            alignment: Alignment.center,
            width: 100,
            height: 100,
            color: Colors.blue,
          ),
          Form(
            key: _formKey,
            child: Padding(
              padding: const EdgeInsets.all(16),
              child: Column(
                children: [
                  TextFormField(
                    //keyboardType: TextInputType.number,
                    decoration: getFormsInputDecoration("Largura"),
                    validator: (String? value) {
                      if (value == null) {
                        return "O campo deve ser preenchido";
                      }
                      return null;
                    },
                  ),
                  SizedBox(
                    height: 8,
                  ),
                  TextFormField(
                    keyboardType: TextInputType.number,
                    decoration: getFormsInputDecoration("Comprimento"),
                  ),
                  SizedBox(
                    height: 8,
                  ),
                  TextFormField(
                    keyboardType: TextInputType.number,
                    decoration: getFormsInputDecoration("Altura"),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      ElevatedButton(
                        onPressed: () {
                          buttonCalculate();
                        },
                        child: Text('Calcular'),
                      ),
                      ElevatedButton(
                        onPressed: () {},
                        child: Text('Limpar'),
                      ),
                    ],
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  buttonCalculate() {
    if (_formKey.currentState!.validate()) {
      print("Form Válido");
    } else {
      print("Form Inválido");
    }
  }
}

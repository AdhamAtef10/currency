import 'package:currency/bloc/currency_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class FirstView extends StatefulWidget {
  const FirstView({Key? key}) : super(key: key);

  @override
  State<FirstView> createState() => _FirstViewState();
}
class _FirstViewState extends State<FirstView> {
  List<String> currencies = [
    'EGP',
    'USD',
    'AED',
    'EUR',
    'JPY',
    'GBP',
    'CAD',
    'TRY',
    'SAR',
    'AZN',
    'NGN',
    'PAB',
    'KMF',
    'HRK',
    'ETB',
    'XPF',
    'GHS',
    'GNF',
    'BRL'
  ];
  String? value1;
  String? value2;
  String? from;
  String? to;

  DropdownMenuItem<String> buildMenuItem(String item) => DropdownMenuItem(
        value: item,
        child: Text(
          item,
          style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
        ),
      );

  @override
  Widget build(BuildContext context) {
    var amountController = TextEditingController();
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return BlocConsumer<CurrencyCubit, CurrencyState>(
      listener: (context, state) {},
      builder: (context, state) {
        var currencyCubit = CurrencyCubit.get(context);
        return Padding(
          padding: const EdgeInsets.all(8.0),
          child: SafeArea(
            top: true,
            left: true,
            right: true,
            child: Scaffold(
              body:Container(

                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      const Padding(
                        padding: EdgeInsets.only(left: 29.0, top: 15, bottom: 90),
                        child: Align(
                          alignment: Alignment.topLeft,
                          child: Text(
                            'Currency\nConverter',
                            style: TextStyle(
                              fontSize: 30,
                              color: Colors.greenAccent,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ),
                      Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            const Align(
                              alignment: Alignment.topLeft,
                              child: Text(
                                '   From',
                                style: TextStyle(
                                  fontSize: 30,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.greenAccent,
                                ),
                              ),
                            ),
                            DropdownButtonHideUnderline(
                              child: Container(
                                width: width * 0.8,
                                decoration: BoxDecoration(
                                  color: Colors.blueGrey,
                                  borderRadius: BorderRadius.circular(20),
                                ),
                                child: DropdownButton<String>(
                                  value: value1,
                                  icon: const Icon(
                                    Icons.arrow_circle_down_rounded,
                                    color: Colors.greenAccent,
                                    size: 30,
                                  ),
                                  items: currencies.map(buildMenuItem).toList(),
                                  onChanged: (value) => setState(
                                          () {
                                    value1 = value;
                                  }),
                                ),
                              ),
                            ),
                          ]),
                      const SizedBox(
                        height: 50,
                      ),
                      const Align(
                        alignment: Alignment.topLeft,
                        child: Text(
                          '   To',
                          style: TextStyle(
                            fontSize: 30,
                            fontWeight: FontWeight.bold,
                            color: Colors.greenAccent,
                          ),
                        ),
                      ),
                      DropdownButtonHideUnderline(
                        child: Container(
                          width: width * 0.8,
                          decoration: BoxDecoration(
                            color: Colors.blueGrey,
                            borderRadius: BorderRadius.circular(20)
                          ),
                          child: DropdownButton<String>(
                            value: value2,
                              icon: const Icon(Icons.arrow_circle_down_rounded,
                              color: Colors.greenAccent,
                                size: 30,
                              ),
                              items: currencies.map(buildMenuItem).toList(),
                              onChanged: (value)=>setState(() {
                                value2=value;
                              }),
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 50,
                      ),
                      Padding(
                        padding: const EdgeInsets.fromLTRB(60,15,60,30),
                        child: Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: Colors.blueGrey
                          ),
                          child: TextFormField(
                            decoration: const InputDecoration(
                                border: OutlineInputBorder(
                                  borderSide: BorderSide(
                                    color: Colors.greenAccent,
                                  )
                                ),
                                hintText: 'Enter amount',
                                hintStyle: TextStyle(color: Colors.greenAccent)
                            ),
                            controller: amountController,
                            keyboardType: TextInputType.number,
                            validator: (value)
                            {
                              if(value==null||value.isEmpty)
                                {
                                  return 'please enter amount';
                                }
                              return null;
                            },
                            cursorColor: Colors.greenAccent,
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 30,
                      ),
                     ElevatedButton(
                       style: ElevatedButton.styleFrom(
                         shape: RoundedRectangleBorder(
                             borderRadius: BorderRadius.circular(30.0)
                         ),
                         primary: Colors.blueGrey,
                         onPrimary: Colors.greenAccent ,
                       ),
                         onPressed: ()
                         {
                          currencyCubit.convertcurrency(
                              value1!.toString(),
                              double.parse(amountController.text),
                              value2!.toString(),
                          );
                         },
                         child: const Text('Convert',
                         style: TextStyle(
                           fontSize: 35,
                           fontWeight: FontWeight.bold,
                         ),)
                     ),
                      const SizedBox(
                        height: 40,
                      ),
                      const Align(
                        alignment: Alignment.bottomLeft,
                        child: Text(
                          '   Result',
                          style: TextStyle(
                              color: Colors.greenAccent,
                              fontSize: 30,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                      Container(
                        height: height*0.06,
                        width: width*0.50,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Colors.blueGrey,
                        ),
                        child: Center(
                          child: Text(currencyCubit.currencyHub?.approxResult! == null
                              ?'0'
                              :currencyCubit.currencyHub!.approxResult!.toString(),
                            style: const TextStyle(
                              color: Colors.greenAccent,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        );
      },
    );
  }
}



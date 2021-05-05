import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'package:truco_praca/controllers/home_controller.dart';
import 'package:truco_praca/core/app_colors.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final controller = HomeController();

  final nomeController1 = TextEditingController();
  final nomeController2 = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.black,
      body: Column(
        children: [
          Expanded(
            flex: 1,
            child: Container(
              padding: EdgeInsets.all(20),
              height: 200,
              color: AppColors.black,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Truco da Praça',
                    style: TextStyle(
                        fontSize: 25,
                        color: AppColors.grey,
                        fontWeight: FontWeight.bold),
                  ),
                  IconButton(
                    icon: Icon(
                      Icons.refresh,
                      color: AppColors.grey,
                      size: 35,
                    ),
                    onPressed: controller.limparDados,
                  )
                ],
              ),
            ),
          ),
          Expanded(
            flex: 3,
            child: Container(
              height: MediaQuery.of(context).size.height,
              padding: EdgeInsets.only(left: 7, top: 30, right: 7),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(30),
                    topRight: Radius.circular(30),
                  ),
                  border: Border.fromBorderSide(
                      BorderSide(color: AppColors.white)),
                  color: AppColors.black),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Expanded(
                    child: Container(
                      padding: EdgeInsets.only(left: 2, top: 30, bottom: 30),
                      height: MediaQuery.of(context).size.height * 0.5,
                      decoration: BoxDecoration(
                          color: AppColors.black,
                          borderRadius: BorderRadius.circular(10)),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Column(
                            children: [
                              GestureDetector(
                                onTap: () {
                                  Get.defaultDialog(
                                      backgroundColor: AppColors.black,
                                      title: "Digite o nome",
                                      content: Container(
                                        child: TextFormField(
                                          autofocus: true,
                                          controller: nomeController1,
                                          decoration: InputDecoration(
                                              border: OutlineInputBorder()),
                                        ),
                                      ),
                                      actions: [
                                        Container(
                                          width: double.infinity,
                                          child: ElevatedButton(
                                              onPressed: () {
                                                controller.nome1.value =
                                                    nomeController1.text;
                                                nomeController1.clear();
                                                Get.back();
                                              },
                                              child: Text('Salvar')),
                                        )
                                      ]);
                                },
                                child: Obx(
                                  () => Text(
                                    '${controller.nome1.toUpperCase()}',
                                    style: TextStyle(
                                        color: AppColors.grey, fontSize: 25),
                                  ),
                                ),
                              ),
                              Obx(() {
                                return Text(
                                  '${controller.valor1}',
                                  style: TextStyle(fontSize: 80),
                                );
                              }),
                              Expanded(
                                child: Row(
                                  children: [
                                    FloatingActionButton(
                                        onPressed: controller.removerPontos1,
                                        child: Icon(Icons.remove,
                                            color: Colors.red)),
                                    SizedBox(
                                      width: 25,
                                    ),
                                    FloatingActionButton(
                                      onPressed: controller.adicionarPontos1,
                                      child: Icon(Icons.add),
                                    ),
                                  ],
                                ),
                              ),
                              Obx(() => Container(
                                    width: 100,
                                    child: ElevatedButton(
                                        onPressed: controller.valor1 >= 12 ||
                                                controller.valor1 >= 10
                                            ? null
                                            : controller.jogadaTrucada1,
                                        child: Text('TRUCO')),
                                  ))
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(width: 3),
                  Expanded(
                    child: Container(
                      padding: EdgeInsets.only(top: 30, bottom: 30),
                      height: MediaQuery.of(context).size.height * 0.5,
                      decoration: BoxDecoration(
                        color: Colors.black,
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Column(
                            children: [
                              GestureDetector(
                                onTap: () {
                                  Get.defaultDialog(
                                      title: "Digite o Nome",
                                      content: Container(
                                        child: TextFormField(
                                          autofocus: true,
                                          controller: nomeController2,
                                          decoration: InputDecoration(
                                              border: OutlineInputBorder()),
                                        ),
                                      ),
                                      actions: [
                                        Container(
                                          width: double.infinity,
                                          child: ElevatedButton(
                                              onPressed: () {
                                                controller.nome2.value =
                                                    nomeController2.text;
                                                nomeController2.clear();
                                                Get.back();
                                              },
                                              child: Text('Salvar')),
                                        )
                                      ]);
                                },
                                child: Obx(
                                  () => Text(
                                    '${controller.nome2.toUpperCase()}',
                                    style: TextStyle(
                                        color: Colors.grey, fontSize: 25),
                                  ),
                                ),
                              ),
                              Obx(
                                () => Text(
                                  '${controller.valor2}',
                                  style: TextStyle(fontSize: 80),
                                ),
                              ),
                              Expanded(
                                child: Row(
                                  children: [
                                    FloatingActionButton(
                                        onPressed: controller.removerPontos2,
                                        child: Icon(
                                          Icons.remove,
                                          color: Colors.red,
                                        )),
                                    SizedBox(
                                      width: 25,
                                    ),
                                    FloatingActionButton(
                                      onPressed: controller.adicionarPontos2,
                                      child: Icon(Icons.add),
                                    ),
                                  ],
                                ),
                              ),
                              Obx(() => Container(
                                    width: 100,
                                    child: ElevatedButton(
                                        onPressed: controller.valor2 >= 12 ||
                                                controller.valor2 >= 10
                                            ? null
                                            : controller.jogadaTrucada2,
                                        child: Text('TRUCO')),
                                  ))
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

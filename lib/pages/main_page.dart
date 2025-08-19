import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:app_controle_financeiro/core/theme/app_colors.dart';

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  String user = "Felipe";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(
                bottom: 50,
                top: 10,
                left: 10,
                right: 10,
              ),
              child: ListTile(
                leading: Icon(Icons.person),
                title: Text("Olá, $user"),
                subtitle: Text("Sejá Bem Vindo"),
                trailing: IconButton(
                  icon: Icon(Icons.expand_more),
                  onPressed: () {},
                ),
                minLeadingWidth: 40,
                tileColor: const Color.fromARGB(1, 46, 48, 52),
              ),
            ),
            SizedBox(
              width: 300,
              height: 300,
              child: PieChart(
                PieChartData(
                  sections: [
                    PieChartSectionData(
                      color: AppColors.corPerda,
                      value: 50,
                      radius: 80,
                    ),
                    PieChartSectionData(
                      color: AppColors.corGanho,
                      value: 50,
                      radius: 80,
                    ),
                  ],
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.all(20),
              padding: const EdgeInsets.all(20),
              child: Row(
                children: [
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("Entradas", style: TextStyle(color: Colors.grey)),
                        Text(
                          "R\$ 50",
                          style: TextStyle(
                            fontSize: 36,
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        SizedBox(height: 4),
                        LinearProgressIndicator(
                          value: 0.5,
                          minHeight: 8,
                          backgroundColor: Colors.grey[800],
                          color: AppColors.corGanho,
                          borderRadius: BorderRadius.circular(10),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(width: 30),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,

                      children: [
                        Text("Saídas", style: TextStyle(color: Colors.grey)),
                        Text(
                          "R\$ 50",
                          style: TextStyle(
                            fontSize: 36,
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        SizedBox(height: 4),
                        LinearProgressIndicator(
                          value: 0.5, // 60%
                          minHeight: 8,
                          backgroundColor: Colors.grey[800],
                          color: AppColors.corPerda,
                          borderRadius: BorderRadius.circular(10),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 30),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Histórico",
                    style: TextStyle(fontSize: 24, fontWeight: FontWeight.w400),
                  ),
                  TextButton(
                    child: Text(
                      "Ver Mais",
                      style: TextStyle(fontSize: 14, color: Colors.grey),
                    ),
                    onPressed: () {},
                  ),
                ],
              ),
            ),
            ListView()
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
          BottomNavigationBarItem(
            icon: Icon(Icons.attach_money),
            label: "Comprar",
          ),
          BottomNavigationBarItem(icon: Icon(Icons.money_off), label: "Vender"),
        ],
      ),
    );
  }
}

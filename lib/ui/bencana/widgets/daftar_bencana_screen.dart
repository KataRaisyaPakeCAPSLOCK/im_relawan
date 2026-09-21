import 'package:flutter/material.dart';
import 'package:im_relawan/domain/models/bencana_list.dart'
  hide dataBencanaList, BencanaList;
import 'package:im_relawan/domain/models/list_bencana_model.dart';

class DaftarBencanaScreen extends StatefulWidget {
  const DaftarBencanaScreen({super.key});

  @override
  State<DaftarBencanaScreen> createState() => _DaftarBencanaScreenState();
}

class _DaftarBencanaScreenState extends State<DaftarBencanaScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 252, 244, 244),
      appBar: AppBar(
        // scrolledUnderElevation: 0,
        backgroundColor: const Color.fromARGB(255, 252, 244, 244),
        title: Center(
          child: Text(
            'Daftar Bencana',
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
        ),
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.only(left: 8, right: 8, bottom: 8),
          child: Column(
            spacing: 10,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Row(
                spacing: 8,
                children: [
                  Expanded(
                    child: Container(
                      height: 55,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(8),
                        boxShadow: [
                          BoxShadow(
                            blurRadius: 1,
                            blurStyle: BlurStyle.normal,
                            offset: Offset(1, 1),
                            color: Colors.black.withAlpha(50),
                          ),
                        ],
                      ),
                      child: TextField(
                        decoration: InputDecoration(
                          hintText: 'Type name or address...',
                          prefixIcon: Icon(Icons.search),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(30),
                            borderSide: BorderSide.none,
                          ),
                        ),
                      ),
                    ),
                  ),
                  InkWell(
                    onTap: () {},
                    child: Container(
                      height: 55,
                      width: 55,
                      clipBehavior: Clip.antiAlias,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(4),
                        boxShadow: [
                          BoxShadow(
                            blurRadius: 1,
                            blurStyle: BlurStyle.normal,
                            offset: Offset(1, 1),
                            color: Colors.black.withAlpha(50),
                          ),
                        ],
                      ),
                      child: Icon(Icons.settings),
                    ),
                  ),
                ],
              ),
              Expanded(
                child: ListView.builder(
                  itemCount: dataBencanaList.length,
                  itemBuilder: (context, index) {
                    final dataBencana = dataBencanaList[index];
                    return DataBencanaCard(dataBencana: dataBencana);
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class DataBencanaCard extends StatelessWidget {
  const DataBencanaCard({super.key, required this.dataBencana});

  final BencanaList dataBencana;

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.white,
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: IntrinsicHeight(
          child: Row(
            spacing: 14,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Expanded(
                flex: 1,
                child: Container(
                  height: double.infinity,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8),
                    color: Color.fromARGB(225, 182, 29, 29),
                  ),
                  // height: double.infinity,
                  child: Icon(
                    Icons.local_fire_department,
                    color: Colors.white,
                    size: 45,
                  ),
                ),
              ),
              Expanded(
                flex: 3,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  spacing: 4,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          dataBencana.name,
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 20,
                          ),
                        ),
                        Icon(Icons.star, size: 20, color: Colors.amberAccent),
                      ],
                    ),
                    Divider(
                      color: Colors.grey.withAlpha(100),
                      thickness: 0.5,
                      height: 10,
                    ),
                    Text(
                      dataBencana.createdAt,
                      style: TextStyle(
                        fontWeight: FontWeight.w300,
                        fontSize: 14,
                      ),
                    ),
                    Text(
                      dataBencana.location,
                      style: TextStyle(
                        fontWeight: FontWeight.w500,
                        fontSize: 16,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

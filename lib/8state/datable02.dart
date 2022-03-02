import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("State"),
        leading: const Icon(Icons.menu),
        actions: const [Icon(Icons.settings)],
        elevation: 0.0,
        centerTitle: true,
      ),
      body: UserList(),
    );
  }
}

class User {
  String name;
  int age;
  bool selected;
  String ha;
  User(this.name, this.age, {this.selected = false, this.ha = "hahhaha"});
}

class UserList extends StatefulWidget {
  const UserList({Key? key}) : super(key: key);

  @override
  _UserListState createState() => _UserListState();
}

class _UserListState extends State<UserList> {
  List<User> data = [
    User("章三", 18),
    User("试试", 28),
    User("工厂", 8, selected: true),
    User("非常", 58)
  ];
  List<DataRow> _getUserRows() {
    List<DataRow> dataRows = [];
    for (int i = 0; i <= data.length - 1; i++) {
      dataRows.add(DataRow(
          selected: data[i].selected,
          onSelectChanged: (selected) {
            setState(() {
              data[i].selected = selected!;
            });
          },
          cells: [
            DataCell(Text("${data[i].name}")),
            DataCell(Text("${data[i].age}")),
            DataCell(Text("男")),
            DataCell(Text("-----")),
            DataCell(Text("-----"))
          ]));
    }
    return dataRows;
  }

  bool _sortAscending = true;
  @override
  Widget build(BuildContext context) {
    return Container(
      child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: DataTable(
          sortColumnIndex: 1,
          sortAscending: _sortAscending,
          columns: [
            DataColumn(label: Text("姓名")),
            DataColumn(
                label: Text("年龄"),
                numeric: true,
                onSort: (int columnIndex, bool asscending) {
                  setState(() {
                    _sortAscending = asscending;
                    if (asscending) {
                      data.sort((a, b) => a.age.compareTo(b.age));
                    } else {
                      data.sort((a, b) => b.age.compareTo(a.age));
                    }
                  });
                }),
            DataColumn(label: Text("性别")),
            DataColumn(label: Text("简介")),
            DataColumn(label: Text("简介")),
          ],
          // rows: [
          //   DataRow(cells: [
          //     DataCell(Text("章三")),
          //     DataCell(Text("18")),
          //     DataCell(Text("男")),
          //     DataCell(Text("一个人")),
          //   ]),
          //   DataRow(cells: [
          //     DataCell(Text("章三")),
          //     DataCell(Text("18")),
          //     DataCell(Text("男")),
          //     DataCell(Text("一个人")),
          //   ]),
          //   DataRow(cells: [
          //     DataCell(Text("章三")),
          //     DataCell(Text("18")),
          //     DataCell(Text("男")),
          //     DataCell(Text("一个人")),
          //   ])
          rows: _getUserRows(),
        ),
      ),
    );
  }
}

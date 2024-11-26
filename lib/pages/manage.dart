import 'package:flutter/material.dart';
import 'package:test3/model/item.dart';

class manage extends StatefulWidget {
  @override
  _ProductManagementPageState createState() => _ProductManagementPageState();
}

class _ProductManagementPageState extends State<manage> {
  List <Item> items = []; // قائمة المنتجات

  void addProduct(Item item) {
    setState(() {
      items.add(item);
    });
  }

  void editProduct(int index, Item newProduct) {
    setState(() {
      items[index] = newProduct;
    });
  }

  void deleteProduct(int index) {
    setState(() {
      items.removeAt(index);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('إدارة المنتجات'),
      ),
      body: Column(
        children: [
          Expanded(
            child: ListView.builder(
              itemCount: items.length,
              itemBuilder: (context, index) {
                return ListTile(
                  leading: Image.network(items[index].imgpath, width: 50, height: 50),
                  title: Text(items[index].Name),
                  subtitle: Text(items[index].location),
                  trailing: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      IconButton(
                        icon: Icon(Icons.edit),
                        onPressed: () {
                          showEditProductDialog(index);
                        },
                      ),
                      IconButton(
                        icon: Icon(Icons.delete),
                        onPressed: () {
                          deleteProduct(index);
                        },
                      ),
                    ],
                  ),
                );
              },
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: ElevatedButton(
              onPressed: () {
                showAddProductDialog();
              },
              child: Text('إضافة منتج'),
            ),
          ),
        ],
      ),
    );
  }

  // دالة لإظهار حوار إضافة منتج جديد
  void showAddProductDialog() {
    String name = '';
    String Location = '';
    String imageUrl = '';

    showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          title: Text('إضافة منتج جديد'),
          content: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              TextField(
                onChanged: (value) {
                  name = value;
                },
                decoration: InputDecoration(hintText: "اسم المنتج"),
              ),
              TextField(
                onChanged: (value) {
                  Location = value;
                },
                decoration: InputDecoration(hintText: "وصف المنتج"),
              ),
              TextField(
                onChanged: (value) {
                  imageUrl = value;
                },
                decoration: InputDecoration(hintText: "رابط الصورة"),
              ),
            ],
          ),
          actions: [
            TextButton(
              onPressed: () {
                if (name.isNotEmpty && Location.isNotEmpty && imageUrl.isNotEmpty) {
                  addProduct(Item(Name: name, location: Location, imgpath: imageUrl, price: 45.0));
                  Navigator.of(context).pop();
                }
              },
              child: Text('إضافة'),
            ),
            TextButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              child: Text('إلغاء'),
            ),
          ],
        );
      },
    );
  }

  // دالة لإظهار حوار تعديل المنتج
  void showEditProductDialog(int index) {
    String name = items[index].Name;
    // ignore: unused_local_variable
    String Location = items[index].location;
    String imageUrl = items[index].imgpath;
    // ignore: unused_local_variable
    double price = items[index].price;

    showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          title: Text('تعديل المنتج'),
          content: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              TextField(
                onChanged: (value) {
                  name = value;
                },
                decoration: InputDecoration(hintText: "اسم المنتج"),
                controller: TextEditingController(text: items[index].Name),
              ),
              TextField(
                onChanged: (value) {
                  Location = value;
                },
                decoration: InputDecoration(hintText: "وصف المنتج"),
                controller: TextEditingController(text: items[index].location),
              ),
              TextField(
                onChanged: (value) {
                  imageUrl = value;
                },
                decoration: InputDecoration(hintText: "رابط الصورة"),
                controller: TextEditingController(text: items[index].imgpath),
              ),
            ],
          ),
          actions: [
            TextButton(
              onPressed: () {
                if (name.isNotEmpty && Location.isNotEmpty && imageUrl.isNotEmpty) {
                  editProduct(index, Item(Name: name, location: Location, imgpath: imageUrl, price: 30.0));
                  Navigator.of(context).pop();
                }
              },
              child: Text('تعديل'),
            ),
            TextButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              child: Text('إلغاء'),
            ),
          ],
        );
      },
    );
  }
}



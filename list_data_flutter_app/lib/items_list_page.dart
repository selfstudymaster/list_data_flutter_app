import 'package:flutter/material.dart';

import 'item_details_page.dart';
import 'item_model.dart';

class ItemsListPage extends StatefulWidget {
  ItemsListPage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _ItemsListPageState createState() => _ItemsListPageState();
}

// _ItemsListPageState
class _ItemsListPageState extends State<ItemsListPage> {
// Hard-coded list of [ItemModel] to be displayed on our page.
  final List<ItemModel> _items = [
    ItemModel(0, Icons.account_balance, 'Balance', 'balance'),
    ItemModel(
        1, Icons.account_balance_wallet, 'Balance wallet', 'balance wallet'),
    ItemModel(2, Icons.alarm, 'Alarm', 'alarm'),
    ItemModel(3, Icons.my_location, 'My location', 'place where I am'),
    ItemModel(4, Icons.laptop, 'Laptop', 'laptop'),
    ItemModel(5, Icons.backup, 'Backup', 'buck up'),
    ItemModel(6, Icons.settings, 'Settings', 'setting'),
    ItemModel(7, Icons.call, 'Call', 'tap telephone call'),
    ItemModel(8, Icons.restore, 'Restore', 'restore'),
    ItemModel(9, Icons.camera_alt, 'Camera', 'open camera app'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(widget.title),
        ),
        body: ListView.builder(
          // Widget which creates [ItemWidget] in scrollable list.
          itemCount: _items.length, // Number of widget to be created.
          itemBuilder: (context,
                  itemIndex) => // Builder function for every item with index.
              ItemWidget(_items[itemIndex], () {
            _onItemTap(context, itemIndex);
          }),
        ));
  }

  // Method which uses BuildContext to push (open) new MaterialPageRoute (representation of the screen in Flutter navigation model) with ItemDetailsPage (StateFullWidget with UI for page) in builder.
  _onItemTap(BuildContext context, int itemIndex) {
    Navigator.of(context).push(MaterialPageRoute(
        builder: (context) => ItemDetailsPage(_items[itemIndex])));
  }
}

// StatelessWidget with UI for our ItemModel-s in ListView.
class ItemWidget extends StatelessWidget {
  const ItemWidget(this.model, this.onItemTap, {Key key}) : super(key: key);

  final ItemModel model;
  final Function onItemTap;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      // Enables taps for child and add ripple effect when child widget is long pressed.
      onTap: onItemTap,
      child: ListTile(
        // Useful standard widget for displaying something in ListView.
        leading: Hero(tag: model.id, child: Icon(model.icon)),
        title: Text(model.title),
      ),
    );
  }
}

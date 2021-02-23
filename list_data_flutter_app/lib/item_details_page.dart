import 'package:flutter/material.dart';

import 'item_model.dart';

/// Widget for displaying detailed info of [ItemModel]

// ItemDetailsPageクラスのStatefulWidget
class ItemDetailsPage extends StatefulWidget {
  final ItemModel model;

  const ItemDetailsPage(this.model, {Key key}) : super(key: key);

  @override
  _ItemDetailsPageState createState() => _ItemDetailsPageState();
}

// ItemDetailsPageState
class _ItemDetailsPageState extends State<ItemDetailsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        // item_model.dartで定義したtitle
        title: Text(widget.model.title),
      ),
      body: Center(
        child: Column(
          children: [
            const SizedBox(height: 16),
            Hero(
              // item_model.dartで定義したid
              tag: widget.model.id,
              child: Icon(
                // item_model.dartで定義したicon
                widget.model.icon,
                size: 100,
              ),
            ),
            const SizedBox(height: 16),
            Text(
              // item_model.dartで定義したdescription
              'Item description: ${widget.model.description}',
              style: TextStyle(fontSize: 18),
            )
          ],
        ),
      ),
    );
  }
}

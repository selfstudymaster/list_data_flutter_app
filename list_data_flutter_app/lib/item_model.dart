import 'package:flutter/material.dart';

/// Class that stores list item info:
/// [id] - unique identifier, number.
/// [icon] - icon to display in UI.
/// [title] - text title of the item.
/// [description] - text description of the item.
///

// ItemModelクラスを定義
class ItemModel {
  // コンストラクタ
  ItemModel(this.id, this.icon, this.title, this.description);

  // 変数
  final int id;
  final IconData icon;
  final String title;
  final String description;
}

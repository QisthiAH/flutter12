import 'dart:math';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter12/ui_screens/products/d.product_edit/_index.dart';
import 'package:states_rebuilder/states_rebuilder.dart';

import '../../../app/_index.dart';
import '../../../dt_domains/_models/_index.dart';
import '../../../xtras/_index.dart';

part 'a.product_detail.data.dart';
part 'b.product_detail.ctrl.dart';
part 'c.product_detail.view.dart';
part 'widgets/a.product_detail.appbar.dart';
part 'widgets/b.product_detail.fab.dart';
part 'widgets/c.product_detail.charlie.dart';
part 'widgets/d.product_detail.delta.dart';
part 'widgets/e.product_detail.echo.dart';

ProductDetailData get _dt => Data.productDetail.st;
ProductDetailCtrl get _ct => Ctrl.productDetail;
ProductEditCtrl get _ctFromEdit => Ctrl.productEdit;

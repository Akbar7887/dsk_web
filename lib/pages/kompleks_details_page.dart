import 'dart:collection';

import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import '../conrollers/Controller.dart';
import '../models/ImageDom.dart';
import '../models/uij.dart';

final Controller controller = Get.find();
List<ImageDom> _listProject = controller.listImageDom
    .where((p0) => p0.layout == true && p0.web == true)
    .toList();
List<ImageDom> _listHistory = controller.listImageDom
    .where((p0) => p0.layout == false && p0.web == true)
    .toList();
Map<String, String> _listCard = {
  'Основной':
      '${UiJ.url}kompleks/v1/download/house/${controller.kompleks!.mainimagepath}',
  'Проекты': (_listProject.length > 0
      ? '${UiJ.url}imagedata/v1/download/images/${_listProject[0].imagepath}'
      : ''),
  'Процесс сторительство': (_listHistory.length > 0
      ? '${UiJ.url}imagedata/v1/download/images/${_listHistory[0].imagepath}'
      : '')
};

CarouselController carouselController = CarouselController();
int _current = 0;

class KompleksDetailesPage extends StatelessWidget {
  const KompleksDetailesPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        Container(
          padding: EdgeInsets.only(
              left: MediaQuery.of(context).size.width > UiJ.widthSize ? 20 : 20,
              right:
                  MediaQuery.of(context).size.width > UiJ.widthSize ? 20 : 20),
          // width: 100,
          height: 50,
          alignment: Alignment.topLeft,
          child: InkWell(
              onTap: () {
                controller.changeindextab(2);
                controller.changeindexpage(1);
              },
              child: Row(
                children: [
                  Icon(Icons.keyboard_arrow_left),
                  Text(controller.kompleks!.title!,
                      style: TextStyle(
                          fontSize:
                              MediaQuery.of(context).size.width > UiJ.widthSize
                                  ? 30
                                  : 15,
                          fontWeight: FontWeight.bold,
                          fontFamily: UiJ.fontbold)),
                ],
              )),
        ),
        Container(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height,
            child: CarouselSlider(
                items: _listCard.entries.map((e) {
                  return InkWell(
                      onTap: () {
                        if (e.key == 'Основной') {
                          controller.changePageKompleks(1);
                          controller.changeindextab(2);
                          controller.changeindexpage(8);
                        } else if (e.key == 'Проекты') {
                          controller.changetitleKompleks('Проекты');
                          controller.changePageKompleks(1);
                          controller.changeindextab(2);
                          controller.changeindexpage(9);
                        } else if (e.key == 'Процесс сторительство') {
                          controller
                              .changetitleKompleks('Процесс сторительство');
                          controller.changePageKompleks(2);
                          controller.changeindextab(2);
                          controller.changeindexpage(9);
                        }
                      },
                      child: Container(
                          width: MediaQuery.of(context).size.width / 3,
                          child: Card(
                              child: Container(
                                  decoration: BoxDecoration(
                                      border:
                                          Border.all(color: UiJ.border_color)),
                                  padding: EdgeInsets.all(10),
                                  child: Column(
                                    children: [
                                      Container(
                                          child: Text(e.key,
                                              style: TextStyle(
                                                  fontSize:
                                                      MediaQuery.of(context)
                                                                  .size
                                                                  .width >
                                                              UiJ.widthSize
                                                          ? 30
                                                          : 15,
                                                  fontFamily: UiJ.fontbold))),
                                      Expanded(
                                          child: Image.network(e.value,
                                              errorBuilder: (context, exception,
                                                      stackTrace) =>
                                                  Icon(
                                                    Icons.business,
                                                    size: MediaQuery.of(context)
                                                            .size
                                                            .width /
                                                        4,
                                                    color: Colors.blue,
                                                  )))
                                    ],
                                  )))));
                }).toList(),
                options: CarouselOptions(
                    height: MediaQuery.of(context).size.height,
                    aspectRatio: 1,
                    viewportFraction: 0.4,
                    initialPage: _current,
                    enableInfiniteScroll: true,
                    autoPlay: false,
                    autoPlayCurve: Curves.fastOutSlowIn,
                    enlargeCenterPage: true,
                    onPageChanged: (int? value, page) {
                      _current = value!;

                    }))),
      ],
    );
  }
}

//
// },

import 'package:dsk_web/models/uij.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AboutCompany extends StatelessWidget {
  const AboutCompany({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: EdgeInsets.only(left: 30, right: 30),
        child: ListView(
          children: [
            Container(
                padding: EdgeInsets.only(left: 20, right: 20),
                alignment: Alignment.topLeft,
                child: Text(
                  "КТО МЫ?",
                  style: TextStyle(
                      color: Colors.amber,
                      fontSize: 80,
                      fontWeight: FontWeight.bold),
                )),
            SizedBox(
              height: 20,
            ),
            Container(
                padding: EdgeInsets.only(left: 20, right: 20),
                alignment: Alignment.center,
                child: RichText(
                    textAlign: TextAlign.start,
                    text: TextSpan(
                        text: "   Предприятие",
                        style: TextStyle(fontSize: 20),
                        children: [
                          TextSpan(
                              text: " " + UiJ.companyName,
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontFamily: UiJ.font,
                                  fontSize: 20)),
                          TextSpan(
                              text:
                                  "- лидер по высокотехнологичному индустриальному домостроению, которое начало свою деятельность 14 сентября 2018 года. ",
                              style: TextStyle(
                                  // fontWeight: FontWeight.bold,
                                  fontFamily: UiJ.font,
                                  fontSize: 20))
                        ]))),
            SizedBox(
              height: 20,
            ),
            Container(
              height: 40,
              alignment: Alignment.center,
              padding: EdgeInsets.only(left: 20, right: 20),
              decoration: BoxDecoration(
                  color: Colors.red,
                  borderRadius: BorderRadius.circular(10),
                  border: Border.all(color: Colors.red)),
              child: Text(
                "Предприятие осуществляет свою деятельность по трем направлениям:",
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 20,
                  fontFamily: UiJ.font,
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              child: Row(
                children: [
                  Expanded(
                      child: Column(children: [
                    Container(
                      padding: EdgeInsets.all(20),
                      // margin: EdgeInsets.all(20),
                      alignment: Alignment.center,
                      height: 100,
                      decoration: BoxDecoration(
                          color: Colors.yellow[300],
                          borderRadius: BorderRadius.circular(10),
                          border: Border.all(color: Colors.yellow)),
                      child: Text(
                        "Производство сборных железобетонных изделий.",
                        style: TextStyle(fontSize: 18, fontFamily: UiJ.font),
                        textAlign: TextAlign.center,
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Container(
                      height: MediaQuery.of(context).size.height / 2,
                      child: Image.asset("../../assets/images/img_1.png"),
                    )
                  ])),
                  SizedBox(
                    width: 20,
                  ),
                  Expanded(
                    child: Column(children: [
                      Container(
                        padding: EdgeInsets.all(20),
                        // margin: EdgeInsets.all(20),
                        alignment: Alignment.center,
                        height: 100,
                        decoration: BoxDecoration(
                            color: Colors.yellow[300],
                            borderRadius: BorderRadius.circular(10),
                            border: Border.all(color: Colors.yellow)),
                        child: Text(
                          "Строительство сборно монолитных, высокотехнологичных индустриальных домов.",
                          textAlign: TextAlign.center,
                          style: TextStyle(fontSize: 18, fontFamily: UiJ.font),
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Container(
                        // width: 200,
                        height: MediaQuery.of(context).size.height / 2,
                        child: Image.asset("../../assets/images/img.png"),
                      )
                    ]),
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  Expanded(
                      child: Column(
                    children: [
                      Container(
                        padding: EdgeInsets.all(20),
                        // margin: EdgeInsets.all(20),
                        alignment: Alignment.center,
                        height: 100,
                        decoration: BoxDecoration(
                            color: Colors.yellow[300],
                            borderRadius: BorderRadius.circular(10),
                            border: Border.all(color: Colors.yellow)),
                        child: Text(
                          "Учебно-практический комбинат, проводящий обучение и повышение квалификации по строительным и производственным специальностям.",
                          textAlign: TextAlign.center,
                          style: TextStyle(fontSize: 18, fontFamily: UiJ.font),
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Container(
                        // width: 200,
                        height: MediaQuery.of(context).size.height / 2,
                        child: Image.asset("../../assets/images/img_2.png"),
                      )
                    ],
                  ))
                ],
              ),
            ),
            Divider(),
            Container(
              padding: EdgeInsets.only(left: 20, right: 20, top: 20),
              // decoration: BoxDecoration(
              //     color: Colors.red,
              //     borderRadius: BorderRadius.circular(10),
              //     border: Border.all(color: Colors.red)),
              child: Text(
                "На сегодняшний день, Предприятие ООО «DSK BINOKOR» является одним из ведущих строй подрядчиков Узбекистана и производит различные массивные железобетонные изделия для сборного строительства, с использованием новейшего немецкого оборудования.",
                style: TextStyle(
                    fontSize: 20,
                    color: Colors.red,
                    fontWeight: FontWeight.bold,
                    fontFamily: UiJ.font),
                textAlign: TextAlign.center,
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              height: MediaQuery.of(context).size.height / 3,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                      width: MediaQuery.of(context).size.width / 5,
                      height: MediaQuery.of(context).size.height / 3,
                      child: Image.asset("../../assets/images/img_3.png")),
                  SizedBox(
                    width: 20,
                  ),
                  Container(
                      width: MediaQuery.of(context).size.width / 5,
                      height: MediaQuery.of(context).size.height / 3,
                      child: Image.asset("../../assets/images/img_4.png")),
                  SizedBox(
                    width: 20,
                  ),
                  Container(
                      width: MediaQuery.of(context).size.width / 5,
                      height: MediaQuery.of(context).size.height / 3,
                      child: Image.asset("../../assets/images/img_5.png")),
                  SizedBox(
                    width: 20,
                  ),
                  Container(
                      width: MediaQuery.of(context).size.width / 5,
                      height: MediaQuery.of(context).size.height / 3,
                      child: Image.asset("../../assets/images/production.png"))
                ],
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Divider(),
            Container(
              alignment: Alignment.center,
              child: Text(
                "Производственный процесс на заводе «DSK BINOKOR» подразумевает строгое следование новейшим технологиям изготовления железобетонных изделий.",
                textAlign: TextAlign.justify,
                style: TextStyle(
                    fontSize: 20,
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                    fontFamily: UiJ.font),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Container(
                height: MediaQuery.of(context).size.height / 3,
                child: Row(
                  children: [
                    Expanded(
                        flex: 3,
                        child: Container(
                            alignment: Alignment.center,
                            height: MediaQuery.of(context).size.height / 3,
                            padding: EdgeInsets.all(20),
                            decoration: BoxDecoration(
                                color: Colors.yellow[300],
                                borderRadius: BorderRadius.circular(10)),
                            child: Text(
                              "Все наши изделия проходят обязательный контроль качества на всех этапах производства, что позволяет избежать возможного брака. Гарантия контроля качества подтверждается наличием сертификатов и соответствием уставленным стандартам. Чтобы избежать возможного брака при поставке на объект (трещин или сколов), все изделия проходят обязательный контроль качества при поступлении на склад и перед отправкой заказчику. ",
                              textAlign: TextAlign.center,
                              style:
                                  TextStyle(fontSize: 20, fontFamily: UiJ.font),
                            ))),
                    Expanded(
                        child: Image.asset(
                      "../../assets/images/img_6.png",
                      height: MediaQuery.of(context).size.height / 2.5,
                    ))
                  ],
                )),
            SizedBox(
              height: 20,
            ),
            Container(
                height: MediaQuery.of(context).size.height / 2.5,
                child: Row(
                  children: [
                    Expanded(
                        child: Image.asset(
                      "../../assets/images/img_7.png",
                      height: MediaQuery.of(context).size.height / 2.5,
                    )),
                    Expanded(
                        flex: 3,
                        child: Container(
                            alignment: Alignment.center,
                            height: MediaQuery.of(context).size.height / 2.5,
                            padding: EdgeInsets.all(20),
                            decoration: BoxDecoration(
                                color: Colors.yellow[300],
                                borderRadius: BorderRadius.circular(10)),
                            child: Text(
                              "Мы располагаем собственной транспортной системой на территории завода, а также подъездными железнодорожными путями. На заводе регулярно проводятся работы по модернизации и улучшению условий труда. Непрерывно инвестируя и расширяя производственные линии, мы обладаем высоким конкурентным преимуществом благодаря широкому ассортименту продукции, качеству и новейшим технологиям в производстве плит перекрытий и трехслойных панельных стен, которые являются основными элементами сборного строительства.",
                              textAlign: TextAlign.center,
                              style:
                                  TextStyle(fontSize: 20, fontFamily: UiJ.font),
                            ))),
                  ],
                )),
            SizedBox(
              height: 20,
            ),
            Container(
                height: MediaQuery.of(context).size.height / 2.5,
                child: Row(
                  children: [
                    Expanded(
                        flex: 3,
                        child: Container(
                            alignment: Alignment.center,
                            height: MediaQuery.of(context).size.height / 2.5,
                            padding: EdgeInsets.all(20),
                            decoration: BoxDecoration(
                                color: Colors.yellow[300],
                                borderRadius: BorderRadius.circular(10)),
                            child: Text(
                              "Новейшее оборудование, а также использование современных технологий позволяют достичь высокого качества производимой продукции и обеспечить срок службы железобетонных изделий от 50 лет. За время своего существования, мы успели зарекомендовать себя как производитель и поставщик высококачественной ЖБИ-продукции на рынке Узбекистана.",
                              textAlign: TextAlign.center,
                              style:
                                  TextStyle(fontSize: 20, fontFamily: UiJ.font),
                            ))),
                    Expanded(
                        child: Image.asset(
                      "../../assets/images/img_8.png",
                      height: MediaQuery.of(context).size.height / 2.5,
                    )),
                  ],
                )),
            SizedBox(
              height: 20,
            ),
            Divider(),
            SizedBox(
              height: 20,
            ),
            Container(
                width: MediaQuery.of(context).size.width / 5,
                child: Container(
                    alignment: Alignment.center,
                    padding: EdgeInsets.all(5),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        border: Border.all(color: Colors.amber)),
                    child: Container(
                      alignment: Alignment.center,
                      padding: EdgeInsets.all(20),
                      decoration: BoxDecoration(
                          color: Colors.amber,
                          borderRadius: BorderRadius.circular(10)),
                      child: Text(
                        "Миссия и ценности Предприятия",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                            fontFamily: UiJ.font),
                      ),
                    ))),
            SizedBox(
              height: 20,
            ),
            Container(
              child: Text(
                "Многие люди ходят на работу, потому что так надо – надо зарабатывать деньги, надо где-то проводить время, надо – по привычке, и совершенно не задумываются о том, действительно ли им интересна их работа, и приносит ли их работа какую-то пользу.   Между тем, очень важно знать «как» и для «чего» работает Предприятие, какими принципами оно руководствуется, чтобы понимать – какие люди добиваются успеха на Предприятии, как принято решать рабочие вопросы и какие полезные уроки сотрудник может извлечь для себя. ",
                style: TextStyle(
                    fontFamily: UiJ.font,
                    fontSize: 20,
                    fontWeight: FontWeight.normal),
                textAlign: TextAlign.center,
                textDirection: TextDirection.ltr,
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              child: Text(
                "Для этого и существует корпоративная культура Предприятия.",
                style: TextStyle(
                    fontFamily: UiJ.font,
                    fontSize: 20,
                    fontWeight: FontWeight.bold),
                textAlign: TextAlign.center,
                textDirection: TextDirection.ltr,
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                      child: Column(
                    children: [
                      Container(
                        width: MediaQuery.of(context).size.width / 3,
                        padding: EdgeInsets.all(20),
                        alignment: Alignment.center,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: Colors.red),
                        child: Text(
                          "НАША МИССИЯ:",
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Colors.white,
                              fontFamily: UiJ.font),
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Container(
                        width: MediaQuery.of(context).size.width / 2.5,
                        padding: EdgeInsets.all(20),
                        alignment: Alignment.center,
                        height: 200,
                        child: Text(
                          "Мы строим современные и качественные дома, создаем комфортабельные условия для жизни и продуктивной деятельности, внедряя лучший мировой опыт в строительстве и производстве. Мы вносим значительный вклад в развитие нашей страны.",
                          style: TextStyle(
                              fontFamily: UiJ.font,
                              fontSize: 18,
                              fontWeight: FontWeight.bold),
                          textAlign: TextAlign.justify,
                        ),
                        decoration: BoxDecoration(
                            border: Border.all(color: Colors.red)),
                      )
                    ],
                  )),
                  SizedBox(
                    width: 30,
                  ),
                  Container(
                      child: Column(
                    children: [
                      Container(
                        width: MediaQuery.of(context).size.width / 3,
                        alignment: Alignment.center,
                        padding: EdgeInsets.all(20),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: Colors.red),
                        child: Text(
                          "НАША ЦЕЛЬ:",
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Colors.white,
                              fontFamily: UiJ.font),
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Container(
                        padding: EdgeInsets.all(20),
                        width: MediaQuery.of(context).size.width / 2.5,
                        alignment: Alignment.center,
                        height: 200,
                        child: Text(
                          "Сохранение и укрепление статуса Предприятия, как лидера высокотехнологичного индустриального домостроения. Устойчивое развитие, основанное на системных преимуществах строительных объектов и заслуженной репутации надежного застройщика. ",
                          style: TextStyle(
                              fontFamily: UiJ.font,
                              fontSize: 18,
                              fontWeight: FontWeight.bold),
                          textAlign: TextAlign.justify,
                        ),
                        decoration: BoxDecoration(
                            border: Border.all(color: Colors.red)),
                      )
                    ],
                  )),
                ],
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              width: MediaQuery.of(context).size.width / 3,
              alignment: Alignment.center,
              padding: EdgeInsets.all(20),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10), color: Colors.red),
              child: Text(
                "МЫ СТРЕМИМСЯ ОСУЩЕСТВИТЬ НАШУ МИССИЮ:",
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                    fontFamily: UiJ.font),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              padding: EdgeInsets.only(left: 200, right: 200),
                child: Container(
                  // width: MediaQuery.of(context).size.width / 2.5,
                  padding: EdgeInsets.all(20),
                  alignment: Alignment.center,
                  height: 150,
                  child: Text(
                    " Став высококлассными специалистами, постоянно повышая скорость, качество и надежность нашей работы; Гарантируя соблюдение интересов наших партнеров, заказчиков и инвесторов; Обеспечивая наших сотрудников комфортными и безопасными условиями труда с возможностью самореализации для достижения личных и профессиональных целей. ",
                    style: TextStyle(
                        fontFamily: UiJ.font,
                        fontSize: 18,
                        fontWeight: FontWeight.bold),
                    textAlign: TextAlign.justify,
                  ),
                  decoration:
                      BoxDecoration(border: Border.all(color: Colors.red)),
                )),

          ],
        ));
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_catalog/models/catalog.dart';
import 'package:flutter_catalog/widgets/themes.dart';
import 'package:velocity_x/velocity_x.dart';

class HomeDetailsPage extends StatelessWidget {
  final Item catalog;

  const HomeDetailsPage({Key key, this.catalog})
      : assert(catalog != null),
        super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
      backgroundColor: MyTheme.creamColor,
      bottomNavigationBar: Container(
        color: Colors.white,
        child: ButtonBar(
          alignment: MainAxisAlignment.spaceBetween,
          buttonPadding: Vx.mOnly(right: 8),
          children: [
            "\$${catalog.price}".text.xl2.red800.make(),
            ElevatedButton(
              onPressed: () {},
              child: "Add to cart".text.xl2.make(),
              style: ButtonStyle(
                backgroundColor:
                    MaterialStateProperty.all(MyTheme.darkBluishColor),
                shape: MaterialStateProperty.all(StadiumBorder()),
              ),
            ).wh(150, 50),
          ],
        ).px16(),
      ),
      body: SafeArea(
        bottom: false,
        child: Column(
          children: [
            Hero(
                    tag: Key(catalog.id.toString()),
                    child: Image.network(catalog.image))
                .h32(context),
            Expanded(
              child: VxArc(
                height: 30.0,
                edge: VxEdge.TOP,
                arcType: VxArcType.CONVEY,
                child: SingleChildScrollView(
                  child: Container(
                    color: Colors.white,
                    width: context.screenWidth,
                    height: 0.8 * context.screenHeight,
                    child: Column(
                      children: [
                        catalog.name.text.xl4.bold.make(),
                        catalog.desc.text.xl
                            .textStyle(context.captionStyle)
                            .make(),
                        10.heightBox,
                        "Amet et et diam et dolor clita sit, clita dolores kasd vero sea, ipsum et dolore sit ipsum duo amet tempor diam et, vero justo et consetetur dolor dolore, erat."
                            .text
                            .textStyle(context.captionStyle)
                            .make()
                            .p16(),
                      ],
                    ).py64(),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

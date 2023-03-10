import 'package:booktickets/utils/app_layout.dart';
import 'package:booktickets/utils/app_styles.dart';
import 'package:booktickets/widgets/thick_container.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class TicketView extends StatelessWidget {
  final Map<String, dynamic> ticket;
  final bool? isColor;
  const TicketView({super.key, required this.ticket, this.isColor});

  @override
  Widget build(BuildContext context) {
    final size = AppLayout.getSize(context);
    return SizedBox(
      width: size.width * 0.85,
      height: AppLayout.getHeight(200),
      child: Container(
        margin: EdgeInsets.only(right: AppLayout.getHeight(16)),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            /* 
            Shows the blue part of the card 
            */
            Container(
              decoration: BoxDecoration(
                color: isColor == null ? const Color(0xFF526799) : Colors.white,
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(AppLayout.getHeight(21)),
                    topRight: Radius.circular(AppLayout.getHeight(21))),
              ),
              padding: EdgeInsets.all(AppLayout.getHeight(16)),
              child: Column(
                children: [
                  Row(
                    children: [
                      Text(
                        ticket['from']['code'],
                        style: Styles.headLineStyle3.copyWith(color: isColor == null ? Colors.white : Colors.black),
                      ),
                      const Spacer(),
                      const ThickContainer(),
                      Expanded(
                        child: Stack(
                          children: [
                            SizedBox(
                              height: 24,
                              child: LayoutBuilder(
                                builder: (BuildContext context, BoxConstraints constraints) {
                                  return Flex(
                                    direction: Axis.horizontal,
                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    mainAxisSize: MainAxisSize.max,
                                    children: List.generate(
                                      (constraints.constrainWidth() / 6).floor(),
                                      (index) => SizedBox(
                                        width: 3,
                                        height: 1,
                                        child: DecoratedBox(
                                          decoration:
                                              BoxDecoration(color: isColor == null ? Colors.white : Colors.black),
                                        ),
                                      ),
                                    ),
                                  );
                                },
                              ),
                            ),
                            Center(
                              child: Transform.rotate(
                                angle: 1.5,
                                child: Icon(
                                  Icons.local_airport_rounded,
                                  color: isColor == null ? Colors.white : Colors.black,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      const ThickContainer(),
                      const Spacer(),
                      Text(
                        ticket['to']['code'],
                        style: Styles.headLineStyle3.copyWith(color: isColor == null ? Colors.white : Colors.black),
                      ),
                    ],
                  ),
                  Gap(AppLayout.getHeight(10)),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      SizedBox(
                        width: AppLayout.getHeight(100),
                        child: Text(
                          ticket['from']['name'],
                          style: Styles.headLineStyle4.copyWith(color: isColor == null ? Colors.white : Colors.black),
                        ),
                      ),
                      Text(
                        ticket['flying_time'],
                        style: Styles.headLineStyle3.copyWith(color: isColor == null ? Colors.white : Colors.black),
                      ),
                      SizedBox(
                        width: AppLayout.getHeight(100),
                        child: Text(
                          ticket['to']['name'],
                          textAlign: TextAlign.end,
                          style: Styles.headLineStyle4.copyWith(color: isColor == null ? Colors.white : Colors.black),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            /*
          Shows the orange part of the card
           */
            Container(
              color: Styles.orangeColor,
              child: Row(
                children: [
                  SizedBox(
                    height: 20,
                    width: 10,
                    child: DecoratedBox(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.only(
                          topRight: Radius.circular(AppLayout.getHeight(10)),
                          bottomRight: Radius.circular(AppLayout.getHeight(10)),
                        ),
                        color: isColor == null ? Colors.white : Colors.black,
                      ),
                    ),
                  ),
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.all(12.0),
                      child: LayoutBuilder(
                        builder: (BuildContext context, BoxConstraints constraints) {
                          return Flex(
                            direction: Axis.horizontal,
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            mainAxisSize: MainAxisSize.max,
                            children: List.generate(
                              (constraints.constrainWidth() / 15).floor(),
                              (index) => SizedBox(
                                width: 5,
                                height: 1,
                                child: DecoratedBox(
                                  decoration: BoxDecoration(
                                    color: isColor == null ? Colors.white : Colors.black,
                                  ),
                                ),
                              ),
                            ),
                          );
                        },
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 20,
                    width: AppLayout.getHeight(10),
                    child: DecoratedBox(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(AppLayout.getHeight(10)),
                          bottomLeft: Radius.circular(AppLayout.getHeight(10)),
                        ),
                        color: isColor == null ? Colors.white : Colors.black,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              decoration: BoxDecoration(
                color: isColor == null ? Styles.orangeColor : Colors.white,
                borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(AppLayout.getHeight(21)),
                    bottomRight: Radius.circular(AppLayout.getHeight(21))),
              ),
              padding: EdgeInsets.only(
                  left: AppLayout.getHeight(16),
                  top: AppLayout.getHeight(10),
                  right: AppLayout.getHeight(16),
                  bottom: AppLayout.getHeight(16)),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            ticket['date'],
                            style: Styles.headLineStyle3.copyWith(
                              color: isColor == null ? Colors.white : Colors.black,
                            ),
                          ),
                          const Gap(5),
                          Text(
                            "Date",
                            style: Styles.headLineStyle4.copyWith(
                              color: isColor == null ? Colors.white : Colors.black,
                            ),
                          )
                        ],
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Text(
                            ticket['departure_time'],
                            style: Styles.headLineStyle3.copyWith(
                              color: isColor == null ? Colors.white : Colors.black,
                            ),
                          ),
                          const Gap(5),
                          Text(
                            "Departure Time",
                            style: Styles.headLineStyle4.copyWith(
                              color: isColor == null ? Colors.white : Colors.black,
                            ),
                          )
                        ],
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          Text(
                            ticket['number'].toString(),
                            style: Styles.headLineStyle3.copyWith(
                              color: isColor == null ? Colors.white : Colors.black,
                            ),
                          ),
                          const Gap(5),
                          Text(
                            "Number",
                            style: Styles.headLineStyle4.copyWith(
                              color: isColor == null ? Colors.white : Colors.black,
                            ),
                          )
                        ],
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

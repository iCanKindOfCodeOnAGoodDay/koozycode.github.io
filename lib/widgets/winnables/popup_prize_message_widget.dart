import 'package:flappy_taco/providers/premium_content_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class PopUpPrizeMessageWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10.0), color: Colors.white12),
          child: Padding(
            padding: const EdgeInsets.all(2.0),
            child: Text(
              'congrats! You won a ${context.watch<PremiumContentProvider>().lastWonPrizeTypeForTheCongratsMessage}! 🎉',
              style: TextStyle(color: Colors.white, fontSize: 20.0),
            ),
          ),
        ),
        SizedBox(
          height: 10.0,
        ),
        SizedBox(
          height: 180.0,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            GestureDetector(
              onTap: () {
                context
                    .read<PremiumContentProvider>()
                    .closeChestAndHideLastPrize();
              },
              child: Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(100.0),
                    color: Colors.white12),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Icon(
                    Icons.cancel_outlined,
                    color: Colors.white54,
                    size: 100.0,
                  ),
                ),
              ),
            ),
          ],
        ),
        SizedBox(
          height: 170.0,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Column(
              children: [
                GestureDetector(
                  onTap: () {
                    context.read<PremiumContentProvider>().equipLastWonPrize();
                  },
                  child: Container(
                    width: 75.0,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10.0),
                        color: Colors.purple),
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        'equip',
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 20.0,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 10.0,
                ),
                Container(
                  width: 75.0,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10.0),
                      color: Colors.yellow),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      'trade',
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 20.0,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ],
    );
  }
}

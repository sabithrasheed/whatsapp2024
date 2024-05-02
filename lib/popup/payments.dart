import 'package:flutter/material.dart';

import 'package:whatsapp_application/const.dart';

class PaymentWidget extends StatelessWidget {
  const PaymentWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(
            'Payments',
            style: TextStyle(fontSize: 25),
          ),
        ),
        body: Column(
          children: [
            Divider(
              color: Colors.grey.shade100,
              thickness: 2,
            ),
            Container(
              width: 120,
              height: 110,
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage(
                          'assets/WhatsApp Image 2024-04-25 at 10.41.11_dbb5322c.jpg'))),
            ),
            SizedBox(
              height: 14,
            ),
            Text(
              'Scan any UPI QR code with your Whatsapp Camera.',
              style: TextStyle(color: Colors.black54, fontSize: 15),
            ),
            SizedBox(
              height: 14,
            ),
            SizedBox(
              width: 350,
              child: ElevatedButton(
                  onPressed: () {},
                  child: Center(
                    child: Text(
                      'Get started',
                      style: TextStyle(color: Colors.green.shade700),
                    ),
                  )),
            ),
            Divider(
              color: Colors.grey.shade100,
              thickness: 2,
            ),
            Card(
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 12),
                    child: ListTile(
                      leading: CircleAvatar(
                        backgroundColor: Colors.green.shade800,
                        radius: 12,
                        child: Icon(
                          Icons.currency_rupee_sharp,
                          size: 18,
                          color: whitecolor,
                        ),
                      ),
                      title: Text(
                        'Send payment',
                      ),
                    ),
                  ),
                  ListTile(
                    leading: IconButton(
                        onPressed: () {},
                        icon: Icon(
                          Icons.qr_code,
                          color: Colors.green.shade800,
                        )),
                    title: Text(
                      'Scan payment QR code',
                    ),
                  ),
                ],
              ),
            ),
            Divider(
              color: Colors.grey.shade100,
              thickness: 2,
            ),
          ],
        ));
  }
}

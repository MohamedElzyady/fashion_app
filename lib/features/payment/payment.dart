import 'package:fashion_app/features/compants/custom_buttom.dart';
import 'package:fashion_app/features/payment/widgets/appbar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_credit_card/flutter_credit_card.dart';

class Payment extends StatefulWidget {
  const Payment({super.key});

  @override
  State<Payment> createState() => _PaymentState();
}

class _PaymentState extends State<Payment> {
  String cardNumber = '';
  String expiryDate = '';
  String cardName = '';
  String cvvCode = '';
  bool isShow = false;
  final _key = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => FocusScope.of(context).unfocus(),
      child: Scaffold(
        appBar: AppbarPayment(),

        // backgroundColor: Colors.white,
        body: Column(
          children: [
            CreditCardWidget(
              cardNumber: cardNumber,
              expiryDate: expiryDate,
              cardHolderName: cardName,
              cvvCode: cvvCode,
              showBackView: isShow,
              onCreditCardWidgetChange: (v) {},
              cardBgColor: Color(0xff2E6FF3),
              obscureCardCvv: true,
              isHolderNameVisible: true,
            ),
            CreditCardForm(
              cardNumber: cardNumber,
              expiryDate: expiryDate,
              cardHolderName: cardName,
              cvvCode: cvvCode,
              onCreditCardModelChange: onCreditCardModelChange,
              formKey: _key,
              obscureCvv: true,
            ),
            SizedBox(height: 220),
            CustomButtom(
              title: "app card".toUpperCase(),
              svgIs: true,
              onTap: () {
                if (_key.currentState!.validate()) {
                  final data = {
                    'number': cardNumber,
                    'name': cardName,
                    'date': expiryDate,
                    'cvv': cvvCode,
                  };
                  Navigator.pop(context, data);
                }
              },
            ),
          ],
        ),
      ),
    );
  }

  void onCreditCardModelChange(CreditCardModel data) {
    setState(() {
      cardNumber = data.cardNumber;
      cardName = data.cardHolderName;
      cvvCode = data.cvvCode;
      expiryDate = data.expiryDate;
      isShow = data.isCvvFocused;
    });
  }
}

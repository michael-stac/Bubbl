import 'package:bubbl/utilities/custom_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_text_form_field/flutter_text_form_field.dart';

import '../../../services/shared/page_service.dart';
import '../../../utilities/appcolors.dart';
import '../../../utilities/custom_tab.dart';
import '../../../utilities/genaral.dart';

class WalletScreen extends StatefulWidget {
  const WalletScreen({Key? key}) : super(key: key);

  @override
  State<WalletScreen> createState() => _WalletScreenState();
}

class _WalletScreenState extends State<WalletScreen> {

  final TextEditingController _email = TextEditingController();
  final TextEditingController _accountName = TextEditingController();
  final TextEditingController _accountNumber = TextEditingController();

  String? bankController;

  @override
  void initState() {
    super.initState();
    bankController = getFlwBanks.first; // Use the first value as the default
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.primaryColor,
      body:  Column(
        children: [
          Stack(
            children: [
              Container(
                width: MediaQuery.of(context).size.width,
                color: AppColor.primaryColor,
                padding: const EdgeInsets.symmetric(vertical: 50, horizontal: 20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Text(
                          "\$2589.90",
                          style: TextStyle(
                              fontFamily: 'Inter',
                              color:AppColor.white,
                              fontSize: 30,
                              fontWeight: FontWeight.w700),
                        ),

                        const CircleAvatar(
                          radius: 25,
                          backgroundImage: NetworkImage(
                              "https://steamcdn-a.akamaihd.net/steamcommunity/public/images/avatars/22/22a4f44d8c8f1451f0eaa765e80b698bab8dd826_full.jpg"),
                        )
                      ],
                    ),
                    Text(
                      "Available Balance",
                      style: TextStyle(
                          fontWeight: FontWeight.w600,
                          fontFamily: 'Inter',
                          fontSize: 16,
                          color: Colors.blue[100]),
                    ),
                    PageService.textSpacexL,
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        InAppTabButton(text: 'Send',icon: Icon(
                          Icons.date_range,
                          color: Colors.blue[900],
                          size: 30,
                        ), onTap: (){
                          WithdrawModal(context);
                        },),
                        InAppTabButton(text: 'Withdraw',icon: Icon(
                          Icons.public,
                          color: Colors.blue[900],
                          size: 30,
                        ), onTap: (){
                          WithdrawModal(context);
                        },),
                        InAppTabButton(text: 'Deposit',icon:Icon(
                          Icons.trending_down,
                          color: Colors.blue[900],
                          size: 30,
                        ), onTap: (){
                          depositModal(context);
                        },),

                      ],
                    )
                  ],
                ),
              ),
            ],
          ),
          Expanded(
            child: Container(
              height: MediaQuery.of(context).size.height,
              decoration: BoxDecoration(
                  color: AppColor.white,
                  borderRadius: const BorderRadius.only(topLeft: Radius.circular(30), topRight: Radius.circular(30))
              ),
              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Container(
                      padding: const EdgeInsets.symmetric(horizontal: 18, vertical: 15),
                      child: const Text("Recent Transactions", style: TextStyle(fontWeight: FontWeight.w900, fontSize: 20, color: Colors.black),),
                    ),
                    const SizedBox(height: 24,),

                    //Container for buttons
                    Container(
                      padding: const EdgeInsets.symmetric(horizontal: 22),
                      child: Row(
                        children: <Widget>[
                          Container(
                            decoration: const BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.all(Radius.circular(20)),
                                boxShadow: [BoxShadow(color: Colors.grey, blurRadius: 10.0, spreadRadius: 4.5)]
                            ),
                            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                            child: Text("All", style: PageService.labelStyle,),
                          ),
                          const SizedBox(width: 16,),
                          Container(
                            decoration: const BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.all(Radius.circular(20)),
                                boxShadow: [BoxShadow(color: Colors.grey, blurRadius: 10.0, spreadRadius: 4.5)]
                            ),
                            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                            child: Row(
                              children: <Widget>[
                                const CircleAvatar(
                                  radius: 8,
                                  backgroundColor: Colors.green,
                                ),
                                const SizedBox(
                                  width: 8,
                                ),
                                Text("Income", style: PageService.labelStyle,),
                              ],
                            ),
                          ),

                          const SizedBox(width: 16,),
                          Container(
                            decoration: const BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.all(Radius.circular(20)),
                                boxShadow: [BoxShadow(color: Colors.grey, blurRadius: 10.0, spreadRadius: 4.5)]
                            ),
                            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                            child: Row(
                              children: <Widget>[
                                const CircleAvatar(
                                  radius: 8,
                                  backgroundColor: Colors.orange,
                                ),
                                const SizedBox(
                                  width: 8,
                                ),
                                Text("Expenses", style: PageService.labelStyle,),
                              ],
                            ),
                          )
                        ],
                      ),
                    ),

                    PageService.textSpaceL,
                    //Container Listview for expenses and incomes
                    Container(
                      padding: const EdgeInsets.symmetric(horizontal: 32),
                      child: Text("TODAY", style: TextStyle(fontSize: 15, fontWeight: FontWeight.w700, color: Colors.grey[500]),),
                    ),
                    SizedBox(
                      height: MediaQuery.of(context).size.height,
                      child: ListView.builder(

                        itemBuilder: (context, index){
                          return Container(
                            margin: const EdgeInsets.symmetric(horizontal: 32, vertical: 12),
                            padding: const EdgeInsets.all(16),
                            decoration: const BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.all(Radius.circular(20))
                            ),
                            child: Row(
                              children: <Widget>[
                                Container(
                                  decoration: BoxDecoration(
                                      color: Colors.grey[100],
                                      borderRadius: const BorderRadius.all(Radius.circular(18))
                                  ),
                                  padding: const EdgeInsets.all(12),
                                  child: Icon(Icons.date_range, color: Colors.lightBlue[900],),
                                ),

                                const SizedBox(width: 16,),
                                Expanded(
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: <Widget>[
                                      Text("Payment", style: TextStyle(fontSize: 16,fontWeight: FontWeight.bold,color: AppColor.primaryColor,  fontFamily: 'Inter',)),
                                      Text("Payment from Saad", style: PageService.textEditStyle),
                                    ],
                                  ),
                                ),

                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.end,
                                  children: <Widget>[
                                    const Text("+\$500.5", style: TextStyle(fontSize: 15, fontWeight: FontWeight.w700, color: Colors.lightGreen),),
                                    Text("26 Jan", style: PageService.labelStyle),
                                  ],
                                ),
                              ],
                            ),
                          );
                        },

                        itemCount: 14,
                        padding: const EdgeInsets.all(0),

                      ),
                    ),
                    
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
  void WithdrawModal(BuildContext) {
    showModalBottomSheet(
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(10),
          topRight: Radius.circular(10),
        ),
      ),
      context: context,
      builder: (context) => Container(
        padding: const EdgeInsets.symmetric(horizontal: 14, vertical: 10),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisSize: MainAxisSize.min,
            children: [
              SizedBox(
                child: Column(
                  children: [
                    Container(
                      alignment: Alignment.centerLeft,
                      margin: const EdgeInsets.only(bottom: 10, top: 30),
                      child: Text(
                        "Amount",
                        style: TextStyle(
                            fontWeight: FontWeight.w600,
                            color: AppColor.black,
                            fontFamily: 'Inter',
                            fontSize: 16),
                      ),
                    ),
                    CustomTextField(
                      _email,
                      hint: "",
                      keyboardType: TextInputType.number,
                      password: false,
                      backgroundColor: AppColor.whiteSmokeColor2,
                      border: Border.all(
                          color: const Color(0xffF5F5F5), width: 0),
                    ),
                    Container(
                      alignment: Alignment.centerLeft,
                      margin: const EdgeInsets.only(bottom: 10, top: 10),
                      child: Text(
                        "Account Name",
                        style: TextStyle(
                            fontWeight: FontWeight.w600,
                            color: AppColor.black,
                            fontFamily: 'Inter',
                            fontSize: 16),
                      ),
                    ),
                    CustomTextField(
                      _accountName,
                      hint: '',
                      password: false,
                      backgroundColor: const Color(0xffF5F5F5),
                      border: Border.all(
                          color: const Color(0xffF5F5F5), width: 0),
                    ),
                    Container(
                      alignment: Alignment.centerLeft,
                      margin: const EdgeInsets.only(bottom: 10, top: 10),
                      child: Text(
                        "Account Number",
                        style: TextStyle(
                            fontWeight: FontWeight.w600,
                            color: AppColor.black,
                            fontFamily: 'Inter',
                            fontSize: 16),
                      ),
                    ),
                    CustomTextField(
                      _accountNumber,
                      hint: '',
                      keyboardType: TextInputType.number,
                      password: false,
                      backgroundColor: const Color(0xffF5F5F5),
                      border: Border.all(
                          color: const Color(0xffF5F5F5), width: 0),
                    ),
                    Container(
                      alignment: Alignment.centerLeft,
                      margin: const EdgeInsets.only(bottom: 10, top: 30),
                      child: Text(
                        "Bank",
                        style: TextStyle(
                            fontWeight: FontWeight.w600,
                            color: AppColor.black,
                            fontFamily: 'Inter',
                            fontSize: 16),
                      ),
                    ),
                    Container(
                      height: 50,
                      padding: const EdgeInsets.only(left: 10.0, right: 10.0),
                      decoration: BoxDecoration(
                        color: const Color(0xffF5F5F5),
                        borderRadius: BorderRadius.circular(10),
                        border: Border.all(color: const Color(0xffF5F5F5), width: 0),
                      ),
                      child: DropdownButton<String>(
                        value: bankController,
                        underline: const Text(""),
                        isExpanded: true,
                        icon: const Icon(Icons.keyboard_arrow_down, color: Color(0xff9BA59F)),
                        items: getFlwBanks.map<DropdownMenuItem<String>>((String value) {
                          return DropdownMenuItem<String>(
                            value: value,
                            child: Text(
                              value,
                              style: const TextStyle(fontSize: 17),
                            ),
                          );
                        }).toList(),
                        onChanged: (String? newValue) {
                          setState(() {
                            bankController = newValue;
                          });
                        },
                      ),
                    ),
                    PageService.textSpacexxL,
                    customButton(context, onTap: (){}, text: 'Proceed', textColor: AppColor.white, bgColor: AppColor.primaryColor)
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
  void depositModal(BuildContext) {
    showModalBottomSheet(
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(10),
          topRight: Radius.circular(10),
        ),
      ),
      context: context,
      builder: (context) => Container(
        padding: const EdgeInsets.symmetric(horizontal: 14, vertical: 10),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisSize: MainAxisSize.min,
            children: [
              SizedBox(
                child: Column(
                  children: [
                    Container(
                      alignment: Alignment.centerLeft,
                      margin: const EdgeInsets.only(bottom: 10, top: 30),
                      child: Text(
                        " Enter Amount",
                        style: TextStyle(
                            fontWeight: FontWeight.w600,
                            color: AppColor.black,
                            fontFamily: 'Inter',
                            fontSize: 16),
                      ),
                    ),
                    CustomTextField(
                      _email,
                      hint: "",
                      keyboardType: TextInputType.number,
                      password: false,
                      backgroundColor: AppColor.whiteSmokeColor2,
                      border: Border.all(
                          color: const Color(0xffF5F5F5), width: 0),
                    ),
                    PageService.textSpacexxL,
                    customButton(context, onTap: (){},
                        text: 'Proceed', textColor: AppColor.white, bgColor: AppColor.primaryColor)
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

}

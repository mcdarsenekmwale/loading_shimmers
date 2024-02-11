import 'package:flutter/material.dart';
import 'package:loading_shimmers/widgets/app_button.dart';

class TopAppBar extends StatelessWidget {
  const TopAppBar({super.key});

  @override
  Widget build(BuildContext context) {

    final size = MediaQuery.of(context).size;

    return  Container(
      width: size.width,
      padding: const EdgeInsets.all(10.0),
      decoration:  BoxDecoration(
          border: Border(
              bottom: BorderSide(
                  color:Colors.red.shade500.withOpacity(0.2)
              )
          )
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              AppButton(
                  icon: 'dashboard',
                  color: Colors.redAccent,
                  onTap: (){}
              ),
              const SizedBox(
                width: 6.0,
              ),
              Text(
                'DBoard',
                style: TextStyle(
                    fontSize: 18.0,
                    color: Colors.grey.shade100,
                    fontWeight: FontWeight.w600,
                    fontFamily: 'Poppins'
                ),
              ),
            ],
          ),

          Row(
            children: [
              AppButton(
                  icon: 'qr-code_1',
                  onTap: (){}
              ),
              GestureDetector(
                behavior: HitTestBehavior.deferToChild,
                onTap: (){},
                child: Padding(
                  padding: const EdgeInsets.symmetric(
                      horizontal: 5.0
                  ),
                  child: Icon(
                      Icons.notifications_none,
                      color: Colors.white.withOpacity(0.7)
                  ),
                ),
              ),
              AppButton(
                  icon: 'levels',
                  onTap: (){}
              ),
            ],
          )
        ],
      ),
    );
  }
}

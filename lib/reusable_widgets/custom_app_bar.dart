import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class CustomAppBar extends StatelessWidget {
  
  final IconData leftIcon;
  final IconData rightIcon;
  final Function? leftCallBack;
  const CustomAppBar(this.leftIcon,this.rightIcon, {super.key, this.leftCallBack});
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(
        top: MediaQuery.of(context).padding.top,
        left: 25,
        right: 25,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          GestureDetector(
            onTap: leftCallBack != null ? () => leftCallBack!() : null,
            child: _buildIcon(leftIcon),
          ),
          _buildIcon(rightIcon),
        ],
      ),
    );
  }
  Widget _buildIcon(IconData icon) {
    return Container(
       padding: const EdgeInsets.all(8),
            decoration: const BoxDecoration(
              shape: BoxShape.circle,
              color: Colors.white24,
            ),
            child: Icon(icon),
    );
  }
}
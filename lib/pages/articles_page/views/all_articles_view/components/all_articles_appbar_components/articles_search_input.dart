import 'package:flutter/material.dart';

class ArticlesSearchInput extends StatelessWidget {
  final void Function()? onTap;
  const ArticlesSearchInput({Key? key, required this.onTap}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    double w = MediaQuery.sizeOf(context).width;
    return Container(
      width: w * 0.9,
      decoration: BoxDecoration(
        boxShadow: const [
          BoxShadow(color: Colors.grey, blurRadius: 10, offset: Offset(1, 4))
        ],
        borderRadius: BorderRadius.circular(50),
        color: Colors.white,
      ),
      padding: const EdgeInsets.symmetric(horizontal: 10),
      margin: const EdgeInsets.only(top: 10),
      child: Row(
        children: [
          const Padding(
            padding: EdgeInsets.all(10),
            child: Icon(
              Icons.search,
              size: 15,
              color: Color(0xffADADAD),
            ),
          ),
          const Expanded(
            child: TextField(
              textAlign: TextAlign.center,
              decoration: InputDecoration(
                  border: InputBorder.none,
                  hintText: 'search...',
                  hintStyle: TextStyle(
                    color: Color(0xffADADAD),
                    fontSize: 12,
                  )),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(10),
            child: InkWell(
              onTap: onTap,
              child: const Icon(
                Icons.close,
                size: 15,
                color: Color(0xffADADAD),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

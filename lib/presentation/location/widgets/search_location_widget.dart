import 'package:flutter/material.dart';

class SearchLocationWidget extends StatelessWidget {
  const SearchLocationWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 30),
      child: TextFormField(
        decoration: const InputDecoration(
          hintText: 'Input your destination',
          suffixIcon: Icon(Icons.search),
        ),
        autocorrect: false,
        textInputAction: TextInputAction.search,
        onChanged: (value) {},
        validator: (_) {
          return '';
        },
      ),
    );
  }
}

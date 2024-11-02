import 'package:bookly_app/features/search/presentation/manager/search_cubit/search_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class CustomSearchFormField extends StatefulWidget {
  const CustomSearchFormField({super.key});

  @override
  State<CustomSearchFormField> createState() => _CustomSearchFormFieldState();
}

class _CustomSearchFormFieldState extends State<CustomSearchFormField> {
  String bookName = "";
  @override
  Widget build(BuildContext context) {
    return TextField(
      decoration: InputDecoration(
        suffixIcon: IconButton(
          onPressed: () {
            context.read<SearchCubit>().search(bookName);
          },
          icon: const Icon(
            FontAwesomeIcons.magnifyingGlass,
          ),
        ),
        hintText: "Search",
        enabledBorder: customOutlineInputBorder(),
        focusedBorder: customOutlineInputBorder(),
      ),
      onChanged: (value) {
        bookName = value;
      },
    );
  }

  OutlineInputBorder customOutlineInputBorder() {
    return OutlineInputBorder(
      borderRadius: BorderRadius.circular(16),
      borderSide: const BorderSide(
        color: Colors.white,
      ),
    );
  }
}

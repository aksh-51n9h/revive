import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:revive/app/cubit/revive_app_cubit.dart';
import 'package:revive/lib.dart';
import 'package:revive/pages/authentication_form_page/cubit/authentication_form_page_cubit.dart';
import 'package:revive/widgets/spacing.dart';

class SearchAppBar extends StatelessWidget implements PreferredSizeWidget {
  const SearchAppBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ReviveAppCubit, ReviveAppState>(
      builder: (context, state) {
        return Container(
          margin: EdgeInsets.only(
              top: preferredSize.height * 0.7, left: 12, right: 12),
          child: Row(
            mainAxisSize: MainAxisSize.max,
            children: [
              Material(
                borderRadius: BorderRadius.circular(preferredSize.height * 0.5),
                elevation: 1,
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius:
                        BorderRadius.circular(preferredSize.height * 0.5),
                    color: state.appTheme.colorScheme.primary,
                  ),
                  child: IconButton(
                    onPressed: () {
                      Scaffold.of(context).openDrawer();
                    },
                    icon: const Icon(
                      Icons.menu,
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
              const Spacing(horizontal: 8),
              Expanded(
                child: Material(
                  elevation: 1,
                  borderRadius:
                      BorderRadius.circular(preferredSize.height * 0.5),
                  child: Container(
                    padding: const EdgeInsets.all(16),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius:
                          BorderRadius.circular(preferredSize.height * 0.5),
                    ),
                    child: InkWell(
                      child: const Padding(
                        padding: EdgeInsets.only(left: 8),
                        child: Text(tapToSearchText),
                      ),
                      onTap: () {
                        showSearch(
                          context: context,
                          delegate: LocationSearchDelegate(),
                        );
                      },
                    ),
                  ),
                ),
              ),
            ],
          ),
        );
      },
    );
  }

  @override
  Size get preferredSize => AppBar().preferredSize;
}

class LocationSearchDelegate extends SearchDelegate {
  LocationSearchDelegate()
      : super(
          searchFieldLabel: searchHintLabelText,
        );

  @override
  List<Widget>? buildActions(BuildContext context) {
    return null;
  }

  @override
  Widget? buildLeading(BuildContext context) {
    return IconButton(
      onPressed: () {
        close(context, null);
      },
      icon: const Icon(Icons.close),
    );
  }

  @override
  Widget buildResults(BuildContext context) {
    return Container();
  }

  @override
  Widget buildSuggestions(BuildContext context) {
    return ListView.builder(
      itemBuilder: (ctx, index) {
        return ListTile(
          title: Text("Item $index"),
        );
      },
      itemCount: 8,
    );
  }
}

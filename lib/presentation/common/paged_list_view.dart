import 'package:flutter/widgets.dart';
import 'package:kt_dart/collection.dart';

class PagedListView<T> extends StatefulWidget {
  final ScrollController _scrollController = ScrollController();
  final KtList<T> data;
  final VoidCallback loadMoreItemsCallback;
  final Widget Function(BuildContext, T, int) itemBuilder;
  final Widget Function(BuildContext, int) separatorBuilder;

  PagedListView({
    Key key,
    @required this.data,
    @required this.itemBuilder,
    this.separatorBuilder,
    @required this.loadMoreItemsCallback,
  }) : super(key: key) {
    _scrollController.addListener(() {
      final position = _scrollController.position;
      if (position.maxScrollExtent == position.pixels) {
        loadMoreItemsCallback();
      }
    });
  }

  @override
  _PagedListViewState createState() => _PagedListViewState();
}

class _PagedListViewState extends State<PagedListView> {
  @override
  Widget build(BuildContext context) {
    final data = widget.data;
    return ListView.separated(
      controller: widget._scrollController,
      itemCount: data.size,
      itemBuilder: (context, index) =>
          widget.itemBuilder(context, data[index], index),
      separatorBuilder: (context, index) =>
          widget.separatorBuilder?.call(context, index) ?? Container(),
    );
  }
}

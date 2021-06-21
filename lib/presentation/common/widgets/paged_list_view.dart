import 'package:flutter/widgets.dart';
import 'package:kt_dart/collection.dart';
import 'package:tictactoe/presentation/common/widgets/loading_indicator.dart';

class PagedListView<T> extends StatefulWidget {
  final ScrollController _scrollController = ScrollController();
  final KtList<T> data;
  final bool hasReachedEnd;
  final VoidCallback loadMoreItemsCallback;
  final ScrollPhysics? physics;
  final Widget Function(BuildContext, T, int) itemBuilder;
  final Widget Function(BuildContext, int)? separatorBuilder;

  PagedListView({
    Key? key,
    required this.data,
    required this.hasReachedEnd,
    required this.itemBuilder,
    this.physics,
    this.separatorBuilder,
    required this.loadMoreItemsCallback,
  }) : super(key: key) {
    _scrollController.addListener(() {
      final position = _scrollController.position;
      if (position.maxScrollExtent == position.pixels) {
        loadMoreItemsCallback();
      }
    });
  }

  @override
  _PagedListViewState createState() => _PagedListViewState<T>();
}

class _PagedListViewState<T> extends State<PagedListView<T>> {
  @override
  Widget build(BuildContext context) {
    final data = widget.data;
    return ListView.separated(
      controller: widget._scrollController,
      physics: widget.physics,
      itemCount: calculateListItemCount(),
      itemBuilder: (context, index) {
        if (index >= data.size) {
          return const Center(
            child: LoadingIndicator(),
          );
        } else {
          return widget.itemBuilder(context, data[index], index);
        }
      },
      separatorBuilder: (context, index) =>
          widget.separatorBuilder?.call(context, index) ?? Container(),
    );
  }

  int calculateListItemCount() {
    if (widget.hasReachedEnd) {
      return widget.data.size;
    } else {
      // + 1 for the loading indicator
      return widget.data.size + 1;
    }
  }
}

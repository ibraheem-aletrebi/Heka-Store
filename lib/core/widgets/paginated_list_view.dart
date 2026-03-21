
import 'package:flutter/material.dart';

class PaginatedListView<T> extends StatefulWidget {
  final List<T> items;
  final Widget Function(BuildContext context, T item, int index) itemBuilder;
  final Widget? loadingWidget;
  final Widget? loadMoreWidget;
  final Widget? emptyWidget;
  final Widget? errorWidget;
  final VoidCallback? onLoadMore;
  final VoidCallback? onRefresh;
  final bool isLoading;
  final bool isLoadingMore;
  final bool hasNextPage;
  final bool isHorizontal;
  final ScrollController? scrollController;
  final EdgeInsetsGeometry? padding;
  final double? itemExtent;
  final Widget? separator;
  final double loadMoreThreshold;

  const PaginatedListView({
    super.key,
    required this.items,
    required this.itemBuilder,
    this.loadingWidget,
    this.loadMoreWidget,
    this.emptyWidget,
    this.errorWidget,
    this.onLoadMore,
    this.onRefresh,
    this.isLoading = false,
    this.isLoadingMore = false,
    this.hasNextPage = false,
    this.isHorizontal = false,
    this.scrollController,
    this.padding,
    this.itemExtent,
    this.separator,
    this.loadMoreThreshold = 200,
  });

  @override
  State<PaginatedListView<T>> createState() => _PaginatedListViewState<T>();
}

class _PaginatedListViewState<T> extends State<PaginatedListView<T>> {
  late final ScrollController _scrollController;
  bool _ownController = false;

  @override
  void initState() {
    super.initState();
    if (widget.scrollController == null) {
      _scrollController = ScrollController();
      _ownController = true;
    } else {
      _scrollController = widget.scrollController!;
    }
    _scrollController.addListener(_onScroll);
  }

  void _onScroll() {
    if (!_scrollController.hasClients) return;
    final maxScroll = _scrollController.position.maxScrollExtent;
    final currentScroll = _scrollController.offset;
    final threshold = maxScroll - widget.loadMoreThreshold;

    if (currentScroll >= threshold &&
        widget.hasNextPage &&
        !widget.isLoadingMore) {
      widget.onLoadMore?.call();
    }
  }

  @override
  void dispose() {
    _scrollController.removeListener(_onScroll);
    if (_ownController) _scrollController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    // ─── Loading ──────────────────────────────────────
    if (widget.isLoading) {
      return widget.loadingWidget ?? _DefaultLoadingWidget(
        isHorizontal: widget.isHorizontal,
      );
    }

    // ─── Empty ────────────────────────────────────────
    if (widget.items.isEmpty) {
      return widget.emptyWidget ?? const _DefaultEmptyWidget();
    }

    final listView = widget.isHorizontal
        ? _buildHorizontalList()
        : _buildVerticalList();

    // ─── Refresh ──────────────────────────────────────
    if (widget.onRefresh != null && !widget.isHorizontal) {
      return RefreshIndicator(
        onRefresh: () async => widget.onRefresh?.call(),
        child: listView,
      );
    }

    return listView;
  }

  // ─── Vertical ─────────────────────────────────────────────────────────────

  Widget _buildVerticalList() {
    return ListView.separated(
      controller: _scrollController,
      padding: widget.padding,
      itemCount: widget.items.length + (widget.isLoadingMore ? 1 : 0),
      separatorBuilder: (_, __) =>
          widget.separator ?? const SizedBox.shrink(),
      itemBuilder: (context, index) {
        if (index == widget.items.length) {
          return widget.loadMoreWidget ?? const _DefaultLoadMoreWidget();
        }
        return widget.itemBuilder(context, widget.items[index], index);
      },
    );
  }

  // ─── Horizontal ───────────────────────────────────────────────────────────

  Widget _buildHorizontalList() {
    return SizedBox(
      height: widget.itemExtent,
      child: ListView.separated(
        controller: _scrollController,
        scrollDirection: Axis.horizontal,
        padding: widget.padding,
        itemCount: widget.items.length + (widget.isLoadingMore ? 1 : 0),
        separatorBuilder: (_, __) =>
            widget.separator ?? const SizedBox.shrink(),
        itemBuilder: (context, index) {
          if (index == widget.items.length) {
            return widget.loadMoreWidget ?? const _DefaultLoadMoreWidget();
          }
          return widget.itemBuilder(context, widget.items[index], index);
        },
      ),
    );
  }
}

// ─── Default Widgets ──────────────────────────────────────────────────────────

class _DefaultLoadingWidget extends StatelessWidget {
  final bool isHorizontal;
  const _DefaultLoadingWidget({this.isHorizontal = false});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: CircularProgressIndicator(
        color: Theme.of(context).colorScheme.primary,
        strokeWidth: 2,
      ),
    );
  }
}

class _DefaultLoadMoreWidget extends StatelessWidget {
  const _DefaultLoadMoreWidget();

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16),
      child: Center(
        child: CircularProgressIndicator(
          color: Theme.of(context).colorScheme.primary,
          strokeWidth: 2,
        ),
      ),
    );
  }
}

class _DefaultEmptyWidget extends StatelessWidget {
  const _DefaultEmptyWidget();

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Text('No items found'),
    );
  }
}
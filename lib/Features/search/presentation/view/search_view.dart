
import 'package:flutter/material.dart';

class SearchView extends StatefulWidget {
  const SearchView({super.key});

  @override
  State<SearchView> createState() => _SearchViewState();
}

class _SearchViewState extends State<SearchView>
    with SingleTickerProviderStateMixin {
  final _ctrl = TextEditingController();
  final _focus = FocusNode();
  String _query = '';

  late final AnimationController _animCtrl;
  late final Animation<double> _fadeAnim;

  final List<String> _recent = [
    'Regular fit polo shirt',
    'Black hoodie oversized',
    'Slim fit chinos',
    'Linen summer shirt',
    'White sneakers casual',
  ];

  final List<_TrendItem> _trending = [
    _TrendItem(rank: 1, label: 'Oversized t-shirts', badge: '🔥 Hot'),
    _TrendItem(rank: 2, label: 'Cargo pants', badge: '📈 Rising'),
    _TrendItem(rank: 3, label: 'Knit sweaters', badge: '❄️ Season'),
    _TrendItem(rank: 4, label: 'Leather jackets', badge: '🔥 Hot'),
    _TrendItem(rank: 5, label: 'Jogger sets', badge: '📈 Rising'),
    _TrendItem(rank: 6, label: 'Denim shorts'),
    _TrendItem(rank: 7, label: 'Graphic tees'),
    _TrendItem(rank: 8, label: 'Bomber jackets', badge: '📈 Rising'),
  ];

  final List<_Category> _categories = [
    _Category(label: 'All', icon: Icons.apps_rounded, selected: true),
    _Category(label: 'T-Shirts', icon: Icons.dry_cleaning_outlined),
    _Category(label: 'Hoodies', icon: Icons.sailing_outlined),
    _Category(label: 'Pants', icon: Icons.straighten_outlined),
    _Category(label: 'Jackets', icon: Icons.layers_outlined),
    _Category(label: 'Shoes', icon: Icons.roller_skating_outlined),
  ];

  @override
  void initState() {
    super.initState();
    _animCtrl = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 260),
    );
    _fadeAnim = CurvedAnimation(parent: _animCtrl, curve: Curves.easeOut);
    _animCtrl.forward();
    WidgetsBinding.instance.addPostFrameCallback((_) => _focus.requestFocus());
    _ctrl.addListener(() => setState(() => _query = _ctrl.text));
  }

  @override
  void dispose() {
    _ctrl.dispose();
    _focus.dispose();
    _animCtrl.dispose();
    super.dispose();
  }

  void _submit(String val) {
    final v = val.trim();
    if (v.isEmpty) return;
    setState(() {
      _recent.removeWhere((r) => r.toLowerCase() == v.toLowerCase());
      _recent.insert(0, v);
      if (_recent.length > 8) _recent.removeLast();
    });
    _focus.unfocus();
  }

  void _fill(String text) {
    _ctrl.value = TextEditingValue(
      text: text,
      selection: TextSelection.collapsed(offset: text.length),
    );
    _focus.requestFocus();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF7F8FC),
      body: FadeTransition(
        opacity: _fadeAnim,
        child: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              _TopBar(
                ctrl: _ctrl,
                focus: _focus,
                query: _query,
                onBack: () => Navigator.pop(context),
                onSubmit: _submit,
                onClear: () => setState(() {
                  _ctrl.clear();
                  _query = '';
                  _focus.requestFocus();
                }),
              ),

              Expanded(
                child: AnimatedSwitcher(
                  duration: const Duration(milliseconds: 200),
                  child: _query.isEmpty
                      ? _IdleBody(
                          key: const ValueKey('idle'),
                          recent: _recent,
                          trending: _trending,
                          categories: _categories,
                          onRecentTap: _fill,
                          onRemoveRecent: (i) =>
                              setState(() => _recent.removeAt(i)),
                          onClearRecent: () => setState(() => _recent.clear()),
                          onTrendingTap: _fill,
                          onCategoryTap: _fill,
                        )
                      : _SuggestBody(
                          key: const ValueKey('suggest'),
                          query: _query,
                          trending: _trending,
                          onSelect: _submit,
                        ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}


class _TopBar extends StatelessWidget {
  final TextEditingController ctrl;
  final FocusNode focus;
  final String query;
  final VoidCallback onBack;
  final ValueChanged<String> onSubmit;
  final VoidCallback onClear;

  const _TopBar({
    required this.ctrl,
    required this.focus,
    required this.query,
    required this.onBack,
    required this.onSubmit,
    required this.onClear,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      padding: const EdgeInsets.fromLTRB(16, 12, 16, 12),
      child: Row(
        children: [
          GestureDetector(
            onTap: onBack,
            child: Container(
              width: 40,
              height: 40,
              decoration: BoxDecoration(
                color: const Color(0xFFF3F4F8),
                borderRadius: BorderRadius.circular(12),
              ),
              child: const Icon(
                Icons.arrow_back_ios_new_rounded,
                color: Color(0xFF111827),
                size: 16,
              ),
            ),
          ),

          const SizedBox(width: 12),

          Expanded(
            child: Hero(
              tag: 'search_bar',
              child: Material(
                color: Colors.transparent,
                child: Container(
                  height: 46,
                  decoration: BoxDecoration(
                    color: const Color(0xFFF3F4F8),
                    borderRadius: BorderRadius.circular(14),
                    border: Border.all(color: const Color(0xFFEEEFF4)),
                  ),
                  child: TextField(
                    controller: ctrl,
                    focusNode: focus,
                    onSubmitted: onSubmit,
                    textInputAction: TextInputAction.search,
                    style: const TextStyle(
                      fontSize: 14,
                      color: Color(0xFF111827),
                      fontWeight: FontWeight.w500,
                    ),
                    decoration: InputDecoration(
                      hintText: 'Search products, brands…',
                      hintStyle: const TextStyle(
                        color: Color(0xFFB0B4C1),
                        fontSize: 14,
                      ),
                      prefixIcon: const Icon(
                        Icons.search_rounded,
                        color: Color(0xFFB0B4C1),
                        size: 20,
                      ),
                      suffixIcon: query.isNotEmpty
                          ? GestureDetector(
                              onTap: onClear,
                              child: const Icon(
                                Icons.cancel_rounded,
                                color: Color(0xFFB0B4C1),
                                size: 18,
                              ),
                            )
                          : null,
                      border: InputBorder.none,
                      contentPadding: const EdgeInsets.symmetric(vertical: 13),
                    ),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class _IdleBody extends StatelessWidget {
  final List<String> recent;
  final List<_TrendItem> trending;
  final List<_Category> categories;
  final ValueChanged<String> onRecentTap;
  final ValueChanged<int> onRemoveRecent;
  final VoidCallback onClearRecent;
  final ValueChanged<String> onTrendingTap;
  final ValueChanged<String> onCategoryTap;

  const _IdleBody({
    super.key,
    required this.recent,
    required this.trending,
    required this.categories,
    required this.onRecentTap,
    required this.onRemoveRecent,
    required this.onClearRecent,
    required this.onTrendingTap,
    required this.onCategoryTap,
  });

  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: const EdgeInsets.only(bottom: 40),
      children: [
        const SizedBox(height: 20),
        _Label(title: 'Browse Categories'),
        const SizedBox(height: 10),
        SizedBox(
          height: 72,
          child: ListView.separated(
            scrollDirection: Axis.horizontal,
            padding: const EdgeInsets.symmetric(horizontal: 20),
            itemCount: categories.length,
            separatorBuilder: (_, __) => const SizedBox(width: 10),
            itemBuilder: (_, i) {
              final cat = categories[i];
              return GestureDetector(
                onTap: () => onCategoryTap(cat.label == 'All' ? '' : cat.label),
                child: AnimatedContainer(
                  duration: const Duration(milliseconds: 200),
                  width: 66,
                  decoration: BoxDecoration(
                    color: cat.selected
                        ? const Color(0xFFFF6B35)
                        : Colors.white,
                    borderRadius: BorderRadius.circular(14),
                    border: Border.all(
                      color: cat.selected
                          ? const Color(0xFFFF6B35)
                          : const Color(0xFFEEEFF4),
                    ),
                    boxShadow: cat.selected
                        ? [
                            BoxShadow(
                              color: const Color(0xFFFF6B35).withOpacity(0.25),
                              blurRadius: 10,
                              offset: const Offset(0, 4),
                            ),
                          ]
                        : null,
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(
                        cat.icon,
                        color: cat.selected
                            ? Colors.white
                            : const Color(0xFF9CA3AF),
                        size: 22,
                      ),
                      const SizedBox(height: 5),
                      Text(
                        cat.label,
                        style: TextStyle(
                          color: cat.selected
                              ? Colors.white
                              : const Color(0xFF6B7280),
                          fontSize: 11,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ],
                  ),
                ),
              );
            },
          ),
        ),

        if (recent.isNotEmpty) ...[
          const SizedBox(height: 24),
          _Label(
            title: 'Recent Searches',
            trailing: GestureDetector(
              onTap: onClearRecent,
              child: const Text(
                'Clear all',
                style: TextStyle(
                  color: Color(0xFFFF6B35),
                  fontSize: 13,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
          ),
          const SizedBox(height: 10),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Wrap(
              spacing: 8,
              runSpacing: 8,
              children: List.generate(recent.length, (i) {
                return GestureDetector(
                  onTap: () => onRecentTap(recent[i]),
                  child: Container(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 12,
                      vertical: 8,
                    ),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(20),
                      border: Border.all(color: const Color(0xFFEEEFF4)),
                    ),
                    child: Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        const Icon(
                          Icons.history_rounded,
                          color: Color(0xFFB0B4C1),
                          size: 14,
                        ),
                        const SizedBox(width: 6),
                        Text(
                          recent[i],
                          style: const TextStyle(
                            color: Color(0xFF374151),
                            fontSize: 13,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                        const SizedBox(width: 6),
                        GestureDetector(
                          onTap: () => onRemoveRecent(i),
                          child: const Icon(
                            Icons.close_rounded,
                            color: Color(0xFFB0B4C1),
                            size: 13,
                          ),
                        ),
                      ],
                    ),
                  ),
                );
              }),
            ),
          ),
        ],

        const SizedBox(height: 24),
        _Label(title: 'Trending Now'),
        const SizedBox(height: 10),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Container(
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(16),
              border: Border.all(color: const Color(0xFFEEEFF4)),
              boxShadow: [
                BoxShadow(
                  color: Colors.black.withOpacity(0.03),
                  blurRadius: 10,
                  offset: const Offset(0, 4),
                ),
              ],
            ),
            child: Column(
              children: List.generate(trending.length, (i) {
                final t = trending[i];
                final isLast = i == trending.length - 1;
                return GestureDetector(
                  onTap: () => onTrendingTap(t.label),
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.symmetric(
                          horizontal: 16,
                          vertical: 13,
                        ),
                        child: Row(
                          children: [
                            SizedBox(
                              width: 26,
                              child: Text(
                                '${t.rank}',
                                style: TextStyle(
                                  color: t.rank <= 3
                                      ? const Color(0xFFFF6B35)
                                      : const Color(0xFF9CA3AF),
                                  fontSize: 14,
                                  fontWeight: t.rank <= 3
                                      ? FontWeight.w800
                                      : FontWeight.w600,
                                ),
                              ),
                            ),
                            const SizedBox(width: 10),
                            Expanded(
                              child: Text(
                                t.label,
                                style: const TextStyle(
                                  color: Color(0xFF111827),
                                  fontSize: 14,
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                            ),
                            if (t.badge != null) ...[
                              Container(
                                padding: const EdgeInsets.symmetric(
                                  horizontal: 8,
                                  vertical: 3,
                                ),
                                decoration: BoxDecoration(
                                  color: const Color(0xFFFFF0EB),
                                  borderRadius: BorderRadius.circular(20),
                                ),
                                child: Text(
                                  t.badge!,
                                  style: const TextStyle(
                                    fontSize: 10,
                                    fontWeight: FontWeight.w700,
                                    color: Color(0xFFFF6B35),
                                  ),
                                ),
                              ),
                              const SizedBox(width: 6),
                            ],
                            const Icon(
                              Icons.north_west_rounded,
                              color: Color(0xFFD1D5DB),
                              size: 15,
                            ),
                          ],
                        ),
                      ),
                      if (!isLast)
                        const Divider(
                          height: 1,
                          indent: 52,
                          endIndent: 16,
                          color: Color(0xFFF3F4F6),
                        ),
                    ],
                  ),
                );
              }),
            ),
          ),
        ),
      ],
    );
  }
}
class _SuggestBody extends StatelessWidget {
  final String query;
  final List<_TrendItem> trending;
  final ValueChanged<String> onSelect;

  const _SuggestBody({
    super.key,
    required this.query,
    required this.trending,
    required this.onSelect,
  });

  List<String> get _suggestions {
    final pool = [
      ...trending.map((t) => t.label),
      'Regular fit $query',
      'Slim fit $query',
      'Oversized $query',
      '$query sale',
      '$query new arrivals',
      'Best $query',
    ];
    return pool
        .where((s) => s.toLowerCase().contains(query.toLowerCase()))
        .take(7)
        .toList();
  }

  @override
  Widget build(BuildContext context) {
    final list = _suggestions;

    return ListView(
      padding: const EdgeInsets.fromLTRB(20, 16, 20, 40),
      children: [
        // Exact search
        _SuggestTile(
          icon: Icons.search_rounded,
          iconColor: const Color(0xFFFF6B35),
          iconBg: const Color(0xFFFFF0EB),
          label: 'Search for  "$query"',
          bold: true,
          onTap: () => onSelect(query),
        ),

        if (list.isNotEmpty) ...[
          const SizedBox(height: 10),
          Container(
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(16),
              border: Border.all(color: const Color(0xFFEEEFF4)),
            ),
            child: Column(
              children: List.generate(list.length, (i) {
                return _SuggestTile(
                  icon: Icons.trending_up_rounded,
                  iconColor: const Color(0xFF9CA3AF),
                  iconBg: const Color(0xFFF3F4F8),
                  label: list[i],
                  isLast: i == list.length - 1,
                  onTap: () => onSelect(list[i]),
                  highlightWord: query,
                );
              }),
            ),
          ),
        ],
      ],
    );
  }
}

class _SuggestTile extends StatelessWidget {
  final IconData icon;
  final Color iconColor;
  final Color iconBg;
  final String label;
  final bool bold;
  final bool isLast;
  final VoidCallback onTap;
  final String? highlightWord;

  const _SuggestTile({
    required this.icon,
    required this.iconColor,
    required this.iconBg,
    required this.label,
    required this.onTap,
    this.bold = false,
    this.isLast = false,
    this.highlightWord,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 14, vertical: 13),
            child: Row(
              children: [
                Container(
                  width: 34,
                  height: 34,
                  decoration: BoxDecoration(
                    color: iconBg,
                    borderRadius: BorderRadius.circular(9),
                  ),
                  child: Icon(icon, color: iconColor, size: 17),
                ),
                const SizedBox(width: 12),
                Expanded(
                  child: highlightWord != null
                      ? _HighlightText(text: label, highlight: highlightWord!)
                      : Text(
                          label,
                          style: TextStyle(
                            color: const Color(0xFF111827),
                            fontSize: 14,
                            fontWeight: bold
                                ? FontWeight.w700
                                : FontWeight.w500,
                          ),
                        ),
                ),
                const Icon(
                  Icons.north_west_rounded,
                  color: Color(0xFFD1D5DB),
                  size: 15,
                ),
              ],
            ),
          ),
          if (!isLast)
            const Divider(
              height: 1,
              indent: 60,
              endIndent: 14,
              color: Color(0xFFF3F4F6),
            ),
        ],
      ),
    );
  }
}


class _HighlightText extends StatelessWidget {
  final String text;
  final String highlight;

  const _HighlightText({required this.text, required this.highlight});

  @override
  Widget build(BuildContext context) {
    final lower = text.toLowerCase();
    final lowerHL = highlight.toLowerCase();
    final idx = lower.indexOf(lowerHL);

    if (idx == -1) {
      return Text(
        text,
        style: const TextStyle(
          color: Color(0xFF111827),
          fontSize: 14,
          fontWeight: FontWeight.w500,
        ),
      );
    }

    return RichText(
      text: TextSpan(
        children: [
          if (idx > 0)
            TextSpan(
              text: text.substring(0, idx),
              style: const TextStyle(
                color: Color(0xFF9CA3AF),
                fontSize: 14,
                fontWeight: FontWeight.w500,
              ),
            ),
          TextSpan(
            text: text.substring(idx, idx + highlight.length),
            style: const TextStyle(
              color: Color(0xFF111827),
              fontSize: 14,
              fontWeight: FontWeight.w700,
            ),
          ),
          if (idx + highlight.length < text.length)
            TextSpan(
              text: text.substring(idx + highlight.length),
              style: const TextStyle(
                color: Color(0xFF9CA3AF),
                fontSize: 14,
                fontWeight: FontWeight.w500,
              ),
            ),
        ],
      ),
    );
  }
}


class _Label extends StatelessWidget {
  final String title;
  final Widget? trailing;

  const _Label({required this.title, this.trailing});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Row(
        children: [
          Text(
            title,
            style: const TextStyle(
              color: Color(0xFF111827),
              fontSize: 15,
              fontWeight: FontWeight.w800,
              letterSpacing: -0.2,
            ),
          ),
          const Spacer(),
          if (trailing != null) trailing!,
        ],
      ),
    );
  }
}

class _TrendItem {
  final int rank;
  final String label;
  final String? badge;
  const _TrendItem({required this.rank, required this.label, this.badge});
}

class _Category {
  final String label;
  final IconData icon;
  final bool selected;
  const _Category({
    required this.label,
    required this.icon,
    this.selected = false,
  });
}

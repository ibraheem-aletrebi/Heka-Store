// features/search/domain/entities/search_filter.dart

class SearchFilter {
  final String? searchTerm;
  final int? categoryId;
  final double? minPrice;
  final double? maxPrice;
  final bool? isEgyptianMade;
  final int pageNumber;
  final int pageSize;

  const SearchFilter({
    this.searchTerm,
    this.categoryId,
    this.minPrice,
    this.maxPrice,
    this.isEgyptianMade,
    this.pageNumber = 1,
    this.pageSize = 20,
  });

  SearchFilter copyWith({
    String? searchTerm,
    int? categoryId,
    double? minPrice,
    double? maxPrice,
    bool? isEgyptianMade,
    int? pageNumber,
    int? pageSize,
    bool clearCategory = false,
    bool clearEgyptianMade = false,
  }) {
    return SearchFilter(
      searchTerm: searchTerm ?? this.searchTerm,
      categoryId: clearCategory ? null : (categoryId ?? this.categoryId),
      minPrice: minPrice ?? this.minPrice,
      maxPrice: maxPrice ?? this.maxPrice,
      isEgyptianMade:
          clearEgyptianMade ? null : (isEgyptianMade ?? this.isEgyptianMade),
      pageNumber: pageNumber ?? this.pageNumber,
      pageSize: pageSize ?? this.pageSize,
    );
  }

  Map<String, dynamic> toQueryParams() {
    final params = <String, dynamic>{
      'PageNumber': pageNumber,
      'PageSize': pageSize,
    };
    if (searchTerm != null && searchTerm!.isNotEmpty) {
      params['SearchTerm'] = searchTerm;
    }
    if (categoryId != null) params['CategoryId'] = categoryId;
    if (minPrice != null) params['MinPrice'] = minPrice;
    if (maxPrice != null) params['MaxPrice'] = maxPrice;
    if (isEgyptianMade != null) params['IsEgyptianMade'] = isEgyptianMade;
    return params;
  }

  bool get hasActiveFilters =>
      categoryId != null ||
      minPrice != null ||
      maxPrice != null ||
      isEgyptianMade != null;

  SearchFilter resetFilters() => SearchFilter(
        searchTerm: searchTerm,
        pageNumber: 1,
        pageSize: pageSize,
      );
}
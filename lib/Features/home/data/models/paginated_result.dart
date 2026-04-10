class PaginatedResult<T> {
  final List<T> items;
  final int totalCount;
  final int pageNumber;
  final int pageSize;
  final int totalPages;
  final bool hasPreviousPage;
  final bool hasNextPage;

  const PaginatedResult({
    required this.items,
    required this.totalCount,
    required this.pageNumber,
    required this.pageSize,
    required this.totalPages,
    required this.hasPreviousPage,
    required this.hasNextPage,
  });

  factory PaginatedResult.fromJson(
    Map<String, dynamic> json,
    T Function(Map<String, dynamic>) fromJsonT,
  ) {
    return PaginatedResult<T>(
      items: (json['items'] as List)
          .map((e) => fromJsonT(e as Map<String, dynamic>))
          .toList(),
      totalCount:      json['totalCount'] as int,
      pageNumber:      json['pageNumber'] as int,
      pageSize:        json['pageSize'] as int,
      totalPages:      json['totalPages'] as int,
      hasPreviousPage: json['hasPreviousPage'] as bool,
      hasNextPage:     json['hasNextPage'] as bool,
    );
  }
}
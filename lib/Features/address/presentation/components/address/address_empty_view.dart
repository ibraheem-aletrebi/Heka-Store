import 'package:flutter/material.dart';
import 'package:heka_store/core/extensions/color_extension.dart';

class AddressEmptyView extends StatelessWidget {
  final bool isSearch;
  final VoidCallback onAdd;
  const AddressEmptyView({
    super.key,
    required this.isSearch,
    required this.onAdd,
  });

  @override
  Widget build(BuildContext context) {
    final colors = context.myColors;
    return Center(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 40),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // ─── Bug fix: background = primarySoft, icon = primary ───
            Container(
              width: 88,
              height: 88,
              decoration: BoxDecoration(
                color: colors.primary.withValues(alpha: 0.12),
                borderRadius: BorderRadius.circular(24),
              ),
              child: Icon(
                isSearch
                    ? Icons.search_off_rounded
                    : Icons.location_off_rounded,
                color: colors.primary,
                size: 40,
              ),
            ),
            const SizedBox(height: 20),
            Text(
              isSearch ? 'No results found' : 'No addresses yet',
              style: TextStyle(
                color: colors.textPrimary,
                fontSize: 18,
                fontWeight: FontWeight.w800,
              ),
            ),
            const SizedBox(height: 8),
            Text(
              isSearch
                  ? 'Try a different name, street or city.'
                  : 'Add your first delivery address\nto get started.',
              textAlign: TextAlign.center,
              style: TextStyle(
                color: colors.textSecondary,
                fontSize: 14,
                height: 1.5,
              ),
            ),
            if (!isSearch) ...[
              const SizedBox(height: 28),
              GestureDetector(
                onTap: onAdd,
                child: Container(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 28,
                    vertical: 14,
                  ),
                  decoration: BoxDecoration(
                    color: colors.primary,
                    borderRadius: BorderRadius.circular(14),
                  ),
                  child: const Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Icon(Icons.add_rounded, color: Colors.white, size: 20),
                      SizedBox(width: 8),
                      Text(
                        'Add Address',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 15,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ],
        ),
      ),
    );
  }
}
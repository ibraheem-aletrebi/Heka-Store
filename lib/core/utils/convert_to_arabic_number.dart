String convertToArabicNumber(num number) {
  const arabicNumbers = ['٠', '١', '٢', '٣', '٤', '٥', '٦', '٧', '٨', '٩'];
  return number
      .toString()
      .split('')
      .map((e) => int.tryParse(e) != null ? arabicNumbers[int.parse(e)] : e)
      .join();
}

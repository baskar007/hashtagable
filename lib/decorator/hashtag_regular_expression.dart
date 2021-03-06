const _Symbols = '·・ー_';

const _Numbers = '0-9０-９';

const _EnglishLetters = 'a-zA-Zａ-ｚＡ-Ｚ';

const _JapaneseLetters = 'ぁ-んァ-ン一-龠';

const _SpanishLetters = 'áàãâéêíóôõúüçÁÀÃÂÉÊÍÓÔÕÚÜÇ';

const _ArabicLetters = '\u0621-\u064A';

const _ThaiLetters = '\u0E00-\u0E7F';

const _HashTagContentLetters = _Symbols +
    _Numbers +
    _EnglishLetters +
    _JapaneseLetters +
    _SpanishLetters +
    _ArabicLetters +
    _ThaiLetters;

/// Regular expression to extract hashtag from text
///
/// Supports English, Japanese, Spanish, Arabic, and Thai
final hashTagRegExp = RegExp(
  "(?!\\n)(?:^|\\s)(#([$_HashTagContentLetters]+))",
  multiLine: true,
);

//   (?!\\n)(?:^|\\s)((##|#|@)([·・ー_0-9０-９a-zA-Zａ-zＡ-Ｚ])
final doubleHashTagRegExp = RegExp(
  "(?!\\n)(?:^|\\s)((##|#|@)([$_HashTagContentLetters]+))",
  multiLine: true,
);

/// Regular expression when you select decorateAtSign
final hashTagAtSignRegExp = RegExp(
  "(?!\\n)(?:^|\\s)([#@]([$_HashTagContentLetters]+))",
  multiLine: true,
);

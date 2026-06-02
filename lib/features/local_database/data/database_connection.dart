import 'dart:io';

import 'package:drift/drift.dart';
import 'package:drift/native.dart';
import 'package:path/path.dart' as path;
import 'package:path_provider/path_provider.dart';

LazyDatabase openEncryptedConnection({
  required Future<String> Function() loadPassphrase,
  String fileName = 'anti_gravity.sqlite',
}) {
  return LazyDatabase(() async {
    final directory = await getApplicationDocumentsDirectory();
    final file = File(path.join(directory.path, fileName));
    final passphrase = await loadPassphrase();
    final escapedPassphrase = passphrase.replaceAll("'", "''");

    return NativeDatabase.createInBackground(
      file,
      setup: (database) {
        database.execute("PRAGMA key = '$escapedPassphrase';");
        database.execute('PRAGMA foreign_keys = ON;');
        database.execute('PRAGMA journal_mode = WAL;');
      },
    );
  });
}

import 'package:clean_repo_objectbox/clean_objectbox_exporter.dart';

import 'bool_key_value_usecase.dart';

class BoolKeyValueUseCaseImpl extends SingleKeyValueUseCaseImpl<String, bool>
    implements BoolKeyValueUseCase {
  static const String KEY = "BOOL_KEY";
  static const bool DEFAULT_VALUE = false;

  BoolKeyValueUseCaseImpl()
      : super(
          key: KEY,
          defaultValue: DEFAULT_VALUE,
          repo: KeyValueRepoModule.buildKeyValueRepo(
            converter: BoolKeyValueConverter.converter,
            key: KEY,
          ),
        );

  @override
  bool changeValue() {
    return update(!read());
  }
}

class BoolKeyValueConverter implements SingleKeyValueConverter<String, bool> {
  static final BoolKeyValueConverter converter = BoolKeyValueConverter._();

  BoolKeyValueConverter._();

  @override
  String keyToString(String key) {
    return key;
  }

  @override
  bool stringToValue(String value) {
    return value.toLowerCase() == 'true' ? true : false;
  }

  @override
  String valueToString(bool value) {
    return value ? 'true' : 'false';
  }
}

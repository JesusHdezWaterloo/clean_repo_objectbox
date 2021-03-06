import 'package:clean_core/clean_core.dart';
import 'package:clean_repo_objectbox/src/repo/objectbox/key_value_repo/key_value_exporter.dart';

class KeyValueRepoImpl extends DefaultCRUDRepo<KeyValueDomain, KeyValueEntity,
    KeyValueRepoExternal> implements KeyValueRepo {
  KeyValueRepoImpl(KeyValueRepoExternal repo)
      : super(
          externalRepo: repo,
          converter: KeyValueConverter.converter,
        );
}

class KeyValueConverter
    extends GeneralConverter<KeyValueDomain, KeyValueEntity> {
  static final KeyValueConverter converter = KeyValueConverter._();

  KeyValueConverter._();

  @override
  KeyValueDomain toDomain(KeyValueEntity entity) {
    return KeyValueDomain(
      id: entity.id,
      key: entity.key,
      value: entity.value,
    );
  }

  @override
  KeyValueEntity toEntity(KeyValueDomain domain) {
    return KeyValueEntity(
      domain.key,
      domain.value,
      id: domain.id,
    );
  }
}

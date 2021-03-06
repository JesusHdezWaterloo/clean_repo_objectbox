import 'package:clean_core/clean_core.dart';
import 'package:clean_repo_objectbox/src/repo/objectbox/key_value_repo/app/key_value_app_exporter.dart';

class KeyValueUseCaseImpl
    extends DefaultCRUDUseCase<KeyValueDomain, KeyValueRepo>
    implements KeyValueUseCase {
  KeyValueUseCaseImpl(KeyValueRepo repo) : super(repo: repo);
}

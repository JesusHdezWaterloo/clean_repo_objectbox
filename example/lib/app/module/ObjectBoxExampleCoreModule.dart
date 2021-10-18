import '../usecase_def/ObjectBoxExampleUseCaseExporter.dart';
import '../usecase_impl/ObjectBoxExampleUseCaseImplExporter.dart';
import '../../repo/module/ObjectBoxExampleRepoModule.dart';

class ObjectBoxCoreModule {
  static late final ParentUseCase PARENT_USECASE;

  //static late final ChildUseCase CHILD_USECASE;

  static Future<bool> init() async {
    bool initialized = await ObjectBoxExampleRepoModule.init().then((value) {
          PARENT_USECASE =
              ParentUseCaseImpl(ObjectBoxExampleRepoModule.PARENT_REPO);
          /*CHILD_USECASE =
              ChildUseCaseImpl(ObjectBoxExampleRepoModule.CHILD_REPO);*/
        }) !=
        null;
    return initialized;
  }

  static void dispose() {
    ObjectBoxExampleRepoModule.dispose();
  }
}

import '../../../../utils.dart';

String setupDialogHeader(String? locatorName) => '''
void setupDialogUi() {
  var dialogService = ${locatorName ?? 'locator'}<DialogService>();

  final builders = {
  
''';

String dialogRegisterContent(String dialogClassName) => '''
  DialogType.${toLowerCamelCase(dialogClassName)}: (context, DialogRequest request, void Function(DialogResponse) completer) =>
        ${dialogClassName}(request: request,completer: completer),
''';

const dialogRegisterTrailing = '''
  };

  dialogService.registerCustomDialogBuilders(builders);
}
''';

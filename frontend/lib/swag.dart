import 'package:openapi_generator_annotations/openapi_generator_annotations.dart';

@Openapi(
    debugLogging: true,
    overwriteExistingFiles: true,
    alwaysRun: true,
    inputSpecFile: '../backend/swagger.json',
    generatorName: Generator.dio,
    outputDirectory: './openapi/generated')

/*
  https://pub.dev/packages/openapi_generator
  OpenAPI generator is weird, and it needs the file to be edited or it won't
  update to the latest swagger doc. The following line is a random hash to act
  as the file edit, and should be automated via the generate-swagger.ps1 file. 
*/
// HASH: Ulu3mQUUIA5vmhD3CEM9rrhnn3cejtb2
// ignore: deprecated_member_use
class SwaggerGenerator extends OpenapiGeneratorConfig {}

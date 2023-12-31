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
// HASH: XiddddsI5x2UFWODSB2xcMzyYX4TzXWg
// ignore: deprecated_member_use
class SwaggerGenerator extends OpenapiGeneratorConfig {}

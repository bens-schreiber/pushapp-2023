import 'package:openapi_generator_annotations/openapi_generator_annotations.dart';

@Openapi(
    overwriteExistingFiles: true,
    alwaysRun: true,
    inputSpecFile: '../backend/swagger.json',
    generatorName: Generator.dio,
    outputDirectory: 'lib/openapi/generated')

/* 
  OpenAPI generator is weird, and it needs the file to be edited or it won't
  update to the latest swagger doc. The following line is a random hash to act
  as the file edit, and should be automated via the generate-swagger.ps1 file. 

  https://pub.dev/packages/openapi_generator
*/

// HASH: H8wyKVzJocCl7Lgq5BAh0jiSd5HTtBi8
class Example extends OpenapiGeneratorConfig {}

import 'package:openapi_generator_annotations/openapi_generator_annotations.dart';

@Openapi(
    overwriteExistingFiles: true,
    alwaysRun: true,
    inputSpecFile: '../backend/swagger.json',
    generatorName: Generator.dart,
    outputDirectory: 'lib/openapi/generated')

/* 
  OpenAPI generator is weird, and it needs the file to be edited or it won't
  update to the latest swagger doc. The following line is a random hash to act
  as the file edit, and should be automated via the generate-swagger.ps1 file. 

  https://pub.dev/packages/openapi_generator
*/

// HASH: j17Fs6smpxj9ZLs5S7tGmJePrm3B20pK
class Example extends OpenapiGeneratorConfig {}

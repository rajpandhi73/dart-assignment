import 'package:path/path.dart' as p;

void main()
{
  String filePath = '/home/user/documents/project/report.pdf';

  String directory = p.dirname(filePath);
  String filename = p.basenameWithoutExtension(filePath);
  String extension = p.extension(filePath);

  print('File Path: $filePath');
  print('Directory: $directory');
  print('Filename: $filename');
  print('Extension: $extension');
}
import 'dart:io';

void main()
{
  print("Enter the file name (with path if not in the current directory):");
  String? fileName = stdin.readLineSync();

  if (fileName == null || fileName.isEmpty)
  {
    print("File name cannot be empty. Please try again.");
    return;
  }

  try
  {
    File file = File(fileName);

    String contents = file.readAsStringSync();

    print("\nFile Contents:\n");
    print(contents);
  }
  catch (e)
  {
    if (e is FileSystemException)
    {
      print("Error: The file '$fileName' was not found or cannot be read.");
    }
    else
    {
      print("An unexpected error occurred: $e");
    }
  }
}

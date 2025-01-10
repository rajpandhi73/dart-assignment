import 'dart:io';

void main()
{
  Map<String, String> addressBook = {};

  while (true)
  {
    print("\nAddress Book Menu:");
    print("1. Add Entry");
    print("2. Update Entry");
    print("3. Remove Entry");
    print("4. View Address Book");
    print("5. Exit");
    print("Choose an option (1-5):");

    String? choice = stdin.readLineSync();

    switch (choice)
    {
      case '1':
        print("Enter name:");
        String? name = stdin.readLineSync();
        if (name == null || name.trim().isEmpty)
        {
          print("Invalid name.");
          break;
        }

        print("Enter phone number:");
        String? phone = stdin.readLineSync();
        if (phone == null || phone.trim().isEmpty)
        {
          print("Invalid phone number.");
          break;
        }

        if (addressBook.containsKey(name))
        {
          print("Name already exists in the address book. Use Update to modify.");
        }
        else
        {
          addressBook[name] = phone;
          print("Entry added successfully.");
        }
        break;

      case '2':
        print("Enter the name to update:");
        String? name = stdin.readLineSync();
        if (name == null || name.trim().isEmpty || !addressBook.containsKey(name))
        {
          print("Name not found in the address book.");
          break;
        }

        print("Enter new phone number:");
        String? newPhone = stdin.readLineSync();
        if (newPhone == null || newPhone.trim().isEmpty)
        {
          print("Invalid phone number.");
          break;
        }

        addressBook[name] = newPhone;
        print("Entry updated successfully.");
        break;

      case '3':
        print("Enter the name to remove:");
        String? name = stdin.readLineSync();
        if (name == null || name.trim().isEmpty || !addressBook.containsKey(name))
        {
          print("Name not found in the address book.");
          break;
        }

        addressBook.remove(name);
        print("Entry removed successfully.");
        break;

      case '4':
        if (addressBook.isEmpty)
        {
          print("The address book is empty.");
        }
        else
        {
          print("\nAddress Book:");
          addressBook.forEach((name, phone)
          {
            print("$name: $phone");
          });
        }
        break;

      case '5':
        print("Exiting the address book. Goodbye!");
        return;

      default:
        print("Invalid choice. Please select an option from 1 to 5.");
        break;
    }
  }
}

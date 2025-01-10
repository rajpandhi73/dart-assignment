//Create a function that checks if a string is a palindrome (reads the same backward as
// forward).



bool isPalindrome(String str)
{
  String reversed = str.split('').reversed.join('');
  return str == reversed;
}

void main()
{
  print(isPalindrome('madam'));
  print(isPalindrome('hello'));
}

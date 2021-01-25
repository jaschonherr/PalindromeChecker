public void setup() {
  String lines[] = loadStrings("palindromes.txt");
  System.out.println("there are " + lines.length + " lines");
  for (int i=0; i < lines.length; i++) {
    if(palindrome(cleanWord(lines[i]))== true) {
      System.out.println(lines[i] + " IS a palindrome.");
    } else {
      System.out.println(lines[i] + " is NOT a palindrome.");
    } 
  }
}
public boolean palindrome(String word) {
  if(word.equals(reverse(word))) {
    return true;
  } else {
    return false;
  }
}
public String reverse(String str) {
    String sNew = new String();
    for(int i = str.length(); i > 0; i--) {
      sNew += str.substring(i-1, i);
    }
    return sNew;
}
public String cleanWord(String sWord) {
  String cleaned = "";
  for(int i = 0; i < sWord.length(); i++) {
    if(Character.isLetter(sWord.charAt(i))) {
      cleaned += sWord.charAt(i);
    }
  }
  return cleaned.toLowerCase();
}

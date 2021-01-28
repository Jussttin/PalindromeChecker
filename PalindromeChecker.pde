public String sNew = new String();
public String noSpace = new String();
public void setup()
{
  String lines[] = loadStrings("palindromes.txt");
  System.out.println("there are " + lines.length + " lines");
  for (int i=0; i < lines.length; i++) 
  {
    if(palindrome(lines[i])==true)
    {
      System.out.println(lines[i] + " IS a palindrome.");
    }
    else
    {
      System.out.println(lines[i] + " is NOT a palindrome.");
    }
  }
}
public boolean palindrome(String word)
{
  reverse(word);
  if(sNew.equals(noSpace) == true){
    return true;
  }
  return false;
}
public String reverse(String str)
{
  sNew = "";
  noSpace = "";
  //removes the spaces
  for(int i = 0; i < str.length(); i++){
    if(str.charAt(i) != ' ' && str.charAt(i) != ',' && str.charAt(i) != '!' && str.charAt(i) != '.' && str.charAt(i) != '\''){
      noSpace = noSpace + str.substring(i,i+1);
    }
  }
  noSpace = noSpace.toLowerCase();
  //System.out.println(noSpace);
  //reverses the word
  for(int i = noSpace.length(); i > 0; i--){
    sNew = sNew + noSpace.substring(i-1,i);
  }
    return sNew.toLowerCase();
}

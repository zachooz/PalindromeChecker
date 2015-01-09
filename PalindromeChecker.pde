public void setup(){
  String lines[] = loadStrings("palindromes.txt");
  println("there are " + lines.length + " lines");
  for (int i=0; i < lines.length; i++) {
    if(palindrome(lines[i])==true){
      println(lines[i] + " IS a palidrome.");
    }else{
      println(lines[i] + " is NOT a palidrome.");
    }
  }
}
public boolean palindrome(String word){
	if(word.replaceAll("[^a-zA-Z]", "").toLowerCase().equals(new StringBuilder(word).reverse().toString().replaceAll("[^a-zA-Z]", "").toLowerCase()))
		return true;
	return false;
}
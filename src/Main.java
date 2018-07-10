import java.io.BufferedReader;
import java.io.InputStreamReader;
import java.nio.file.Files;
import java.nio.file.Path;
import java.nio.file.Paths;

public class Main {

	public static void main(String[] args) throws Exception {
		// TODO Auto-generated method stub
		Path path = Paths.get("./res","in.txt");
//		Parser paser =  new Parser(new Scanner(new InputStreamReader(System.in)));
		Parser parser = new Parser(new Scanner(Files.newBufferedReader(path)));
		System.out.println(parser.parse().value);
	}

}

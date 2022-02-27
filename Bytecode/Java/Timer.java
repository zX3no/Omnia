import java.io.Console;

public class Timer {
  public static void main(String[] args) {
    System.out.format("Enter a time in seconds: ");
    Console console = System.console();
    int t = Integer.parseInt(console.readLine());

    while (t != 0) {
        double mins = Math.floor(t / 60.0);
        int secs = t % 60;
        System.out.format("%02d:%02d\r", (int)mins, secs);
        try
        {
            Thread.sleep(1000);
        }
        catch(InterruptedException ex)
        {
            Thread.currentThread().interrupt();
        }
        t -= 1;
    }
  }
}
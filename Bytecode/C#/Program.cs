Console.Write("Enter the time in seconds: ");
string? s = Console.ReadLine();

if (s is null)
    return;

int t = int.Parse(s);

while (t != 0)
{
    double mins = Math.Floor((double)t / 60);
    int secs = t % 60;
    String time = String.Format("{0:D2}:{1:D2}\r", (int)mins, secs);
    Console.Write(time);

    Thread.Sleep(1000);
    t -= 1;
}
Console.WriteLine(t);


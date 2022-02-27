import java.util.Scanner

fun main() {
    print("Enter a time in seconds: ")
    val read = Scanner(System.`in`)
    var t = read.nextInt()

    while (t != 0) {
        var mins = Math.floor(t / 60.0).toInt()
        var secs = (t % 60.0).toInt()

        print(java.lang.String.format("%02d:%02d\r", mins, secs))
        Thread.sleep(1000)
        t -= 1
    }
}

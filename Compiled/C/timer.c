#include <stdio.h>
#include <math.h>
#include <windows.h>

int main()
{
    int t;
    printf("Enter the time in seconds: ");
    scanf("%d", &t);

    while (t)
    {
        int mins = floor(t / 60);
        int secs = t % 60;
        printf("%02d:%02d\r", mins, secs);
        Sleep(1000);
        t -= 1;
    };

    return 0;
}
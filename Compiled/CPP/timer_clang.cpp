#include <iostream>
#include <Windows.h>
#include <cmath>
#include <format>

int main()
{
    int t;
    std::cout << "Enter a time in seconds: ";
    std::cin >> t;

    while (t)
    {
        int mins = floor(t / 60);
        int secs = t % 60;

        std::cout << std::format("{:02}:{:02}\r", mins, secs);

        Sleep(1000);
        t--;
    }
    return 0;
}
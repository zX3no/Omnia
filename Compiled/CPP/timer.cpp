#include <iostream>
#include <iomanip>
#include <Windows.h>
#include <cmath>

int main()
{
    int t;
    std::cout << "Enter a time in seconds: ";
    std::cin >> t;

    while (t)
    {
        int mins = floor(t / 60);
        int secs = t % 60;

        std::cout << std::setfill('0') << std::setw(2) << mins;
        std::cout << ":";
        std::cout << std::setfill('0') << std::setw(2) << secs;
        std::cout << "\r";

        Sleep(1000);
        t -= 1;
    }
    return 0;
}
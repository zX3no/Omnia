import time
  
t = int(input("Enter the time in seconds: "))

while t:
    mins, secs = divmod(t, 60)
    print('{:02d}:{:02d}'.format(mins, secs), end = "\r")
    time.sleep(1)
    t -= 1
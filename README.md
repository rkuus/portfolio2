# portfolio2
LEO1 Portfolio Two

1. The LXC was installed on the raspberry pi, and setup to have static ips for container u1 and u2.
2. container 1, u1, was created and set up with alpine, lightthp, socat and the index.php file was created with a minor edit: "10.0.3.12:8080", ip and port for container 2
3. container 2, u2, was created and set up with socat and two scripts was created rng.ash (for random numbers) and socatScript.ash (to run the socat command faster)
4. The iptables was then edited and saved and lightthp was disabled on the pi, to show u1's website on port 80 of the raspberry pi 
5. It did not work, permission denied when trying to visit the website and the static ips doesn't work as they get reserved for something else.


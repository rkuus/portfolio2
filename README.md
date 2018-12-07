# portfolio2
LEO1 Portfolio Two

1. The LXC was installed on the raspberry pi, and setup to have static ips for container u1 and u2 from the pi and within each containers.
2. container 1, u1, was created and set up with alpine, lightthd, socat and the index.php file was created
3. container 2, u2, was created and set up with socat and two scripts were created, rng.ash (for random numbers) and socatScript.ash (to run the socat command faster)
4. To start the socatScript at boot container 2 has /etc/local.d/init.start with the actual contens of socatScript.ash. Execute   rc-update add local default and openrc to save the new boot.
5. Lightthd was disabled on the pi and iptables was changed, to show u1's website on port 80 of the raspberry pi 


To run the webserver execute:

startlxc.sh --start

After this the website is running, and by refresing the site you get new numbers.

To stop the webserver execute:

startlxc.sh --stop

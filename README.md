# portfolio2
LEO1 Portfolio Two

1. The LXC was installed on the raspberry pi, and setup to have static ips for container u1 and u2.
2. container 1, u1, was created and set up with alpine, lightthp, socat and the index.php file was created
3. container 2, u2, was created and set up with socat and two scripts were created, rng.ash (for random numbers) and socatScript.ash (to run the socat command faster)
4. Lightthp was disabled on the pi and iptables was changed, to show u1's website on port 80 of the raspberry pi 


To run the system on the pi you go through the following steps:

startlxc.sh --start
lxc-attach -n u2
  socatScript.sh &
  exit
startlxc.sh --begin

After this the website is running, and by refresing the site you get new numbers

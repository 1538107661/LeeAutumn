#!/bin/bash
#pwm-fan control shell on 2019/10/9 power by Retr0
clear
echo '[*] Pwm-Fan Control By PWM Choose The Option'
echo
echo '[*]Switch The Statues Of The Fan: [1]* [2]off'
echo
echo '[*]Choose The Follow Number To Control The Speed Of The Pwm-Fan'
echo
echo '[*]You Can Input 1,2,3,4,5'
#program
echo
while true
do
read -p '[*]Now Input Your Choose: ' chs
	case $chs in
		1)sudo sh -c 'echo 51 > /sys/devices/pwm-fan/target_pwm'
			break;;
        	2)sudo sh -c 'echo 102 > /sys/devices/pwm-fan/target_pwm'
			break;;		
		3)sudo sh -c 'echo 153 > /sys/devices/pwm-fan/target_pwm'
			break;;
		4)sudo sh -c 'echo 204 > /sys/devices/pwm-fan/target_pwm'
			break;;
		5)sudo sh -c 'echo 255 > /sys/devices/pwm-fan/target_pwm'
	        	break;;
		off)sudo sh -c 'echo 0 > /sys/devices/pwm-fan/target_pwm'
			break;;
		*)echo 'Wrong Input'
		esac
done
echo
echo "[OK]The Pwm-Fan Is Start As $chs"

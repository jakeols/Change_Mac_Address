<?php

$oldaddress = shell_exec("ifconfig en0 | grep ether");
	
echo 'Your old mac address is:' . $oldaddress;

$newaddress = shell_exec("./address.sh");
	
echo 'The generated mac address is:' . $newaddress;

$input = shell_exec("sudo ifconfig en0 ether " . $newaddress);

$check = shell_exec("ifconfig en0 | grep ether");

echo 'Your new mac address is:' . $check;

if (strcmp($oldaddress, $check) !== 0) {
	shell_exec("sudo ifconfig en0 down");
	shell_exec("sudo ifconfig en0 up");
    echo 'Mac address change was successful.' . "\xA";
}
else
{
	echo 'Sorry, please try again. Something went wrong.' . "\xA";
}

?>
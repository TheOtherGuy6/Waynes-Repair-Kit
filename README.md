<pre>
System File Checker (sfc /scannow):
</pre>

This command runs the System File Checker (SFC) tool, which scans the system files for corruption and attempts to automatically repair any detected issues.

<pre>
DISM CheckHealth (DISM /Online /Cleanup-Image /CheckHealth):
</pre>

This command runs the Deployment Image Servicing and Management (DISM) tool with the CheckHealth parameter.
It checks the health and integrity of the system image and component store and reports any problems found.

<pre>
DISM ScanHealth (DISM /Online /Cleanup-Image /ScanHealth):
</pre>

This command runs the DISM tool with the ScanHealth parameter.
It scans the system image and component store for corruption and other issues without attempting to repair them.

<pre>
DISM RestoreHealth (DISM /Online /Cleanup-Image /RestoreHealth /Source:repairSource\install.wim):
</pre>

This command runs the DISM tool with the RestoreHealth parameter.
It repairs and restores the integrity of the system image and component store using a specified repair source, typically an install.wim file.

<pre>
Release IP Address (ipconfig /release):
</pre>

This command releases the current IP address lease of a network interface, allowing it to obtain a new IP address from a DHCP server.

<pre>
Flush DNS Cache (ipconfig /flushdns):
</pre>

This command clears the stored information about domain names and their corresponding IP addresses from the DNS resolver cache.

<pre>
Renew IP Address (ipconfig /renew):
</pre>

This command renews the IP address of a network interface, requesting a new IP address lease from a DHCP server.

<pre>
Reset Winsock Catalog (netsh winsock reset):
</pre>

This command resets the Winsock Catalog, which is responsible for managing network protocols and communication.

<pre>
Reset IPv4 Settings (netsh interface ipv4 reset):
</pre>

This command resets the IPv4 protocol configuration to its default settings, resolving any issues related to IPv4 networking.

<pre>
Reset IPv6 Settings (netsh interface ipv6 reset):
</pre>

This command resets the IPv6 protocol configuration to its default settings, resolving any issues related to IPv6 networking.

<pre>
Verify System Files with System File Checker (sfc /verifyonly):
</pre>

This command runs the System File Checker in verification-only mode, checking the integrity of system files without attempting repairs.

<pre>
Run Check Disk (CHKDSK /F /R /X):
</pre>

This command runs the Check Disk (CHKDSK) tool with the /F, /R, and /X parameters.
It fixes errors such as bad sectors, file system corruption, and logical inconsistencies on the hard drive.

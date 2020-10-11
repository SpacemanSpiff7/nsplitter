# nsplitter
Split a file into n parts, surprisingly not already part of Bash (I think)

Please include path to file with '-f' flag.
This script splits a file into specified number of parts (default=5).
To specify number of parts, use '-n' flag or put number of parts as 2nd positional argument.

Example usage:
```	$ nsplit myfile.txt			# split myfile.txt into 5 parts
	$ nsplit myfile.txt 2			# split myfile.txt into 2 parts
	$ nsplit -f myfile.txt -n 10		# split myfile.txt into 10 parts using flags
```
	 
To install I just used an alias. For example (you can actually copy and paste this):
```
git clone https://github.com/SpacemanSpiff7/nsplitter.git
cd nsplitter
echo "alias nsplit=$(realpath nsplit.sh)" >> ~/.bashrc  # or ~/.zshrc if you're cool like me
```

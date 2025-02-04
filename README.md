The mouse doesnt seem to work well in quemu but works fine on real hardware.

# Login
by default the password is "password", this is detected via a small state machine so just type it on the keyboard.
You can change the password by first going into the shell, then running 'getpassword'. This will push the address of the password string and push it to the stack.
Then you can do push 'newpassword' which will push the address of the string you just gave to the stack.
Finally do setstr to set the string located second on the stack to the string at the top of the stack.
Now do gui and test it out.

# Scripting Commands
hi - Prints "Hello World"
help - Displays list of commands
reboot - Reboots the OS
cls - Clears the screen
echo (Param) - Echo's the string given to it
time - Okay so this use to show the time but at some point I got bored and now it plays a little tune
sound (param) - Plays a note at the frequency given
script - Enables scripting mode
run - Run's the script
pause (param) - pauses for a given amount of time
stop - Used at the end of scripts to return to the shell
getinput - Gets input and write string to temp address which is pushed to stack
push (Param) - Writes a given string to temp address and pushes address to stack
pushint (Param) - Pushes a number directly onto the stack
add - Adds top two numbers on the satck
sub - Subtracts top two numbers on the stack
print - Takes the value on top of the stack as an address and reads the string at that location
converttoint - Takes the value on top of the stack as an address and converts the string to a number, then pushed the number directly onto the stack
converttostr - Takes a number on the stack, converts it to a string, writes it to temp address and pushes address to stack
dup - Duplicates the top value on the stack
intptr - Takes an address from top of the stack and pushes the number at that address to the stack
setstr - Takes the string address at the top of the stack and writes its contents to the string address next on the stack
setint - Takes a number at the top of the stack and writes it to the address next on the stack
getpasswordmsg - Pushes the address for the password msg to the stack, its a string
getdndhp - Pushes the address for the password msg to the stack, its an int
getspellslots - Pushes the address for the dnd spell slots to the stack, its an int
getluckpoints - Pushes the address for the dnd luck points to the stack, its an int
getpassword -Pushes the address for the password to the stack, its a string

# Address manipulation examples
To get an idea of how to manipulate addresses heres some examples:
### change password to 'StrongPassword123'
```
getpassword
push StrongPassword123
setstr
```
### Increase dndhp by 5
```
getdndhp ; pushes dndhp address
dup ; we need the address twice, one for intptr and one for setint
intptr ; gets hp number from address
pushint 5
add
setint
```

The mouse doesnt seem to work well in quemu but works fine on real hardware.

# Login
by default the password is "password", this is detected via a small state machine so just type it on the keyboard.
You can change the password by first going into the shell, then running 'getpassword'. This will push the address of the password string and push it to the stack.
Then you can do push 'newpassword' which will push the address of the string you just gave to the stack.
Finally do setstr to set the string located second on the stack to the string at the top of the stack.
Now do gui and test it out.


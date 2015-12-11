# masui
###### Usable command line interface for [mas](https://github.com/argon/mas)

Just run the script and follow the instruction.

```
~ $ masui
update(s) available:
1) Keynote (6.6.1)
2) Numbers (3.6.1)
3) Pages (5.6.1)

Enter the n° of the app(s) you want updated (ex: '1' or '1 4 3')
Enter 'a' for all and 'c' to cancel __________________________
___________________________________/
a
Updating all the outdated apps, give us a moment...
==> Downloading Keynote
==> Installed Keynote
==> Downloading Numbers
==> Installed Numbers
==> Downloading Pages
==> Installed Pages
Bye!
```

##### Why?
If you ever used the Mac App Store you know what a pain it can be to use (downloads that stop or
never start, slow and clunky interface). [mas-cli](https://github.com/argon/mas) solves that problem by
providing a CLI to update your apps, however it is not really easy to use, asking you to manually type or
copy app IDs one by one, masui solves that.
##### Disclaimer
I wrote this script one afternoon as a way to solve a simple problem and to learn bash scripting as
such it is more a collection of stack overflow answers than it is real programming. You are more
than welcome to use it and do whatever you want with it but it does not come with any warranty.

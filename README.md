# Print Credentials
Are you a fan of writing down your passwords? Me neither. I'm fond of changing my passwords on regular basis and memorizing them all. I also make sure to only use high entropy ones. Like everybody does. But for whatever reason you like to write them down, here is a handy utility. It's written in Bash and it's rad as... well, it's pretty rad.

# How to
1. Put your passwords in a `credentials` file.
2. Add the script to your firewall's whitelist.
3. Run the script.
4. Print your credentials using a generated `result.pwd` file.

# Example
Let's say you have some credentials that you want to print. Put them in `credentials` and run the script:

```
My secret GitHub credentials
L: izdwuut
P: hahagoodone123
```

Easy peasy. You could do it all by yourself. The fun part starts when you want to print another password on the same piece of paper. Normally you would have to put some spacing before your new addition to a password list. This utility does exactly that. Put this:

```
My even more secret (apparently "secretier" is not a word) GitHub credentials
L: izdwuut
P: hackerman1
```

Get this (`result.pwd`):

```




My even more secret (apparently "secretier" is not a word) GitHub credentials
L: izdwuut
P: hackerman1
```
    
# Bottom line
You should't store your passwords in plain text on your HDD. SSDs are fine. While this utility could come in handy to somebody, you should rather consider using a password manager like [KeePass](https://keepass.info).

# License
Licensed under [an MIT license](LICENSE). You can basically do anything, as long as you mention me somewhere.

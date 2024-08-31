***IMPORT NOTE: The following section is for Mac OSX terminal users(zsh) only***

How to conveniently run a new terminal tab for a node:
1. go to the directory containing `COMP3221_A1_Routing.py`
2. invoke the shell script `startANodeScript.zsh`
e.g. to run node `A`
send command `./startANodeScript A` to the terminal
The shell script handles all work for you.
Upon a successful excecution, the script sends you back to the terminal
where you invoked the script. Now you can invoke a new process for other nodes.
The node name is case sensitive. Please remember to use upper cases.
Per the spec, only ten node names are handled. (A-J)

***For non-MacOS users***

Please manually open a new terminal and run commands like
`COMP3221_A1_Routing.py A 6000 Aconfig.txt`. Note that
the commands are case sensitive and the port numbers should
be consistent with the node names.Otherwise the program would
discard those config lines conflicting against the node-port mapping.

***To disconnect a node***

CLI: type `D` and hit ENTER
or
`kill -9 <pid>` <pid> is shown at the very beginning after launching a node

***stop all nodes***

`killall Python`

***modify edge costs***

Not implemented thus not supported.


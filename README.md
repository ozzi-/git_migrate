# GIT Migration
Migrating from one GIT server to another can be a pain.
This script will hopefully make it more confortable.

Usage:
0. Create all GIT repos on the new server
1. Add all GIT repo URL's you wish to migrate to "git_migrate"
2. Add all GIT repo URL's of the new server in the same order
3. Run migrate.sh

Output:
```
$ ./migrate.sh 

Starting migration
repo.git
-----
* mirroring
Cloning into bare repository 'repo.git'...
remote: Counting objects: 168, done.
remote: Compressing objects: 100% (168/168), done.
remote: Total 168 (delta 117), reused 0 (delta 0)
Receiving objects: 100% (168/168), 154.79 KiB | 2.92 MiB/s, done.
Resolving deltas: 100% (117/117), done.
* cd
* push
ssh://gogs@gogs.new.ch:2222/hw/repo.git
Counting objects: 168, done.
Delta compression using up to 4 threads.
Compressing objects: 100% (51/51), done.
Writing objects: 100% (168/168), 154.79 KiB | 77.40 MiB/s, done.
Total 168 (delta 117), reused 168 (delta 117)
To ssh://gogs@gogs.new.ch:2222/hw/repo.git
 * [new branch]      master -> master
 . . .
 ```

# Week 2: C Fundamentals + Shell Scripting Basics

**Focus:** Learn C syntax and basic bash scripting

## Completed

### Coursework
- [x] CS50 Week 1 (C basics)

### Reading
- [x] The Linux Command Line (TLCL) Chapters 5-6
- [x] The Linux Command Line (TLCL) Chapters 24-27 (shell scripting intro)

## Exercises

### Easy: Write bash script that echoes user input in uppercase
- [x] Completed

**Your solution:**
```bash
#!/usr/bin/env bash

echo "${1^^}"
```

**Test output:**
```
HELLO
```
---

### Medium: Modify CS50's `mario.c` - create bash version using loops
- [x] Completed

**Your solution:**
See ./exercises/mario.sh

**Test output (pyramid/pattern):**
```
   #
  ##
 ###
####
```

---

### Hard: Bash script that compiles and runs C programs, logging errors to file
- [x] Completed

**Your solution:**
See run-c.sh 

**Usage example:**
```bash
./run-c.sh add.c 1 1
```

**Test output:**
```
2
```

---

## Weekend Project
- [ ] Build "dev setup automator" - bash script that installs tools (gcc, make, git), creates project directories, initializes git repos

**Script name/location:**
```

```

**Usage instructions:**
```

```

---

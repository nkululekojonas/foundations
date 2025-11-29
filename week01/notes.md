# Week 1: Development Environment + CS50 Week 0

**Focus:** Set up tools and learn computational thinking

## Completed

### Coursework
- [x] CS50 Week 0 (Scratch)
- [x] CS50 Lecture 0
- [x] Missing Semester Lecture 1
- [x] Missing Semester shell tools video

### Reading
- [x] The Linux Command Line (TLCL) Chapters 1-4

## Exercises

### Easy: Navigate filesystem, create 10 nested directories in one command
- [x] Completed

**Your solution:**
```bash
mkdir -p ~/dir1/dir2/dir3/dir4/dir5/dir6/dir7/dir8/dir9/dir10
```

**Notes:**
```
-p: Create intermediate directories as needed. When not specified each path prefix must already exist, with the flag given no error will be reported if each path prefix exists.
```

---

### Medium: Use `man` pages to find 3 ways to list hidden files
- [x] Completed

```bash
# Method 1:  List all files including . and ..
ls -a

# Method 2: Almost all, list all files and directories expect . and .. 
ls -A

# Method 3:List all files in long format
ls -al
```

---

### Hard: Find all `.txt` files modified in last 7 days, count their lines
- [x] Completed

**Your solution:**
```bash
find . -type f -name '*.txt' -mtime -7d -exec wc -l {} +
```

**Output/Result:**
```
80 ./week01/notes.md
1 ./README.md
97 ./week01/notes.md
178 total
```

**Notes:**
```
Man pages are a useful resource
```

---

## Weekend Project
- [x] Create a scatch game (see cs50 week0 directory for solution)

**Project Link:**

[flappy birds](https://www.github.com/nkululekojonas/cs50/tree/main/week0)

**Description:**
```
A janky flappy birds implementation in scratch.
```

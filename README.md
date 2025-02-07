## Valgrind on macOS

### Authors:
- Ali Al-Khanchi
- Amr Abdou

### Prerequisites
- Docker

### Instructions
1. `docker compose up -d` from this directory
2. `chmod +x start` if first time running the file to give execution priveleges.
3. `./start`
4. Use gcc and valgrind as normal.

### Example
After attaching to the container with `./start`, run:
1. `gcc -g main.c`
2. `valgrind --leak-check=full ./a.out`

You should get a leak summary as output with 4 bytes definitely lost.

### Remarks
You can use your favorite text editor/IDE as normal, modifying and adding anything inside the `app` directory will update the container as well.

Do not mix and match between compiling on your machine and inside the container as the formats are not compatible.

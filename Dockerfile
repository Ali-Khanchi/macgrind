FROM gcc:latest

# Install Valgrind
RUN apt update && apt install -y valgrind && rm -rf /var/lib/apt/lists/*

CMD ["/bin/bash"]

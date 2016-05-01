void main(int argc, char *argv[]) {
  int nfds = 0;
  struct pollfd fds[MAX];
  int sock = socket(...);
  fds[nfds].fd = sock;
  fds[nfds].events = POLLIN;
  nfds++;
  ...; // Call bind() and listen().
  while (poll(fds, nfds, 0) > 0) {
    for (int i=0; i<MAX; i++) {
      if(fds[i].revents == POLLIN) {
        if (fds[i].fd == sock) {
          fds[nfds].fd = accept(sock, ...);
          fds[nfds].events = POLLIN;
          nfds++;
        } else {
          char in[1024], out[1024];
          recv(fds[i].fd, in, ...);
          process_request(in, out);
          send(fds[i].fd, out, ...);
          close(fds[i].fd);
          fds[i].fd = fds[i].events = 0;
          nfds--;
        }
      }
    }
  }
}

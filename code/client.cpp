void main(argc, char *argv) {
  ...; // Get server IP:port from argv[].
  int sock = socket(...);
  connect(sock, ...); // Connect to IP:port.
  send(sock, ...); // Send a http request.
  recv(sock, ...); // Wait for server's response.
  close(sock);
}
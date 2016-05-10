struct log_entry_t {
  consensus_ack ack[MAX]; // Per replica output hash.
  viewstamp_t vs;
  viewstamp_t last_committed;
  int node_id;
  viewstamp_t conn_vs; // client connection ID.
  int call_type; // socket call type.
  size_t data_sz; // data size in the call.
  char data[0]; // data, with canary value in last byte.
} log_entry;

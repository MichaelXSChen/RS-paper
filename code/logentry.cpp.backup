struct log_entry_t {
  consensus_ack ack[MAX];
  viewstamp_t vs;
  int node_id;
  viewstamp_t conn_vs; // viewstamp when connection was accepted.
  int call_type; // socket call type.
  size_t data_sz; // data size in the call.
  char data[0]; // data, with canary value in last byte.
} log_entry;

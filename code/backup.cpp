viewstamp_t idx;
void follow_consensus(node *cur, 
    call type, data, data_size) {

  // check log entry integrity.
  data size > 0 and canary value is there.
  
  // check viewstamp and agree/reject. Local preparation.
  if (entry.view_id == my.view_id) {
    store_record(entry);
    ack = build_ack();
  }
  // Send back 
  send back to leader by writing ACK [i] with remote start addr + i*sizeof(ack);
  
  //
  extract latest committed requests and execute them;
  

}
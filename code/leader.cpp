viewstamp_t idx;
void invoke_consensus_req(node *cur, 
    call type, data, data_size) {
  vs;

  // Local preparation.
  spin_lock();
  vs = idx++;
  spin_unlock();
  call_entry *entry = build_entry(cur,vs,data,data_size);
  mem_write(cur_log_offset, entry); 
  store_entry(entry);

  // RDMA write.
  for (i = 0; i < group_size; i++) {
    RDMA_write(i, remote_log_offset[i], entry);
  }
  
  // Wait for quorum.
recheck:
  for (i = 0; i < ; i++) {
    bitmap += ack[i].reply;
  }
  if (reach_quorum()) {
    process_req();
  } else
    goto recheck;
}

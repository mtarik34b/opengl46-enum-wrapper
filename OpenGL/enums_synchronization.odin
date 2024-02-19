package vendor_gl

/* Sync Objects and Fences [4.1] */

/* sync FenceSync(enum condition, bitfield flags); */
Fence_Sync_Condition :: enum u32 {
	SYNC_GPU_COMMANDS_COMPLETE = SYNC_GPU_COMMANDS_COMPLETE,
}

Fence_Sync_Bits :: enum u32 {
	ZERO = ZERO,
}


/* Waiting for Sync Objects [4.1.1] */

/* enum ClientWaitSync(sync sync, bitfield flags, uint64 timeout_ns); */
Client_Wait_Sync_Status :: enum u32 {
	ALREADY_SIGNALED    = ALREADY_SIGNALED,
	TIMEOUT_EXPIRED     = TIMEOUT_EXPIRED,
	CONDITION_SATISFIED = CONDITION_SATISFIED,
	WAIT_FAILED         = WAIT_FAILED,
}

Client_Wait_Sync_Bits :: enum u32 {
	ZERO = ZERO,
	SYNC_FLUSH_COMMANDS_BIT = SYNC_FLUSH_COMMANDS_BIT,
}

/* void WaitSync(sync sync, bitfield flags, uint64 timeout); */
Wait_Sync_Bits :: enum u32 {
	ZERO = ZERO,
}

Wait_Sync_Timeout :: enum u64 {
	TIMEOUT_IGNORED = TIMEOUT_IGNORED,
}


/* Sync Object Queries [4.1.3] */

/* void GetSynciv(sync sync, enum pname, sizei bufSize, sizei *length, int *values); */
Get_Synciv_Parameter :: enum u32 {
	OBJECT_TYPE    = OBJECT_TYPE,
	SYNC_STATUS    = SYNC_STATUS,
	SYNC_CONDITION = SYNC_CONDITION,
	SYNC_FLAGS     = SYNC_FLAGS,
}

package vendor_gl

/* Sync Objects and Fences [4.1] */

/* sync FenceSync(enum condition, bitfield flags); */
Fence_Sync_Condition :: enum u32 {
	Sync_GPU_Commands_Complete = SYNC_GPU_COMMANDS_COMPLETE,
}

Fence_Sync_Bits :: enum u32 {
	Zero = ZERO,
}


/* Waiting for Sync Objects [4.1.1] */

/* enum ClientWaitSync(sync sync, bitfield flags, uint64 timeout_ns); */
Client_Wait_Sync_Status :: enum u32 {
	Already_Signaled    = ALREADY_SIGNALED,
	Timeout_Expired     = TIMEOUT_EXPIRED,
	Condition_Satisfied = CONDITION_SATISFIED,
	Wait_Failed         = WAIT_FAILED,
}

Client_Wait_Sync_Bits :: enum u32 {
	Zero = ZERO,
	Sync_Flush_Commands_Bit = SYNC_FLUSH_COMMANDS_BIT,
}

/* void WaitSync(sync sync, bitfield flags, uint64 timeout); */
Wait_Sync_Bits :: enum u32 {
	Zero = ZERO,
}

Wait_Sync_Timeout :: enum u64 {
	Timeout_Ignored = TIMEOUT_IGNORED,
}


/* Sync Object Queries [4.1.3] */

/* void GetSynciv(sync sync, enum pname, sizei bufSize, sizei *length, int *values); */
Get_Synciv_Parameter :: enum u32 {
	Object_Type    = OBJECT_TYPE,
	Sync_Status    = SYNC_STATUS,
	Sync_Condition = SYNC_CONDITION,
	Sync_Flags     = SYNC_FLAGS,
}

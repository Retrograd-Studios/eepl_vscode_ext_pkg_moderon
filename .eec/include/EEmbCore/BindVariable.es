
enum {
	EEMB_BIND_TP_BOOL = 0,
	EEMB_BIND_TP_INT8,
	EEMB_BIND_TP_INT16,
	EEMB_BIND_TP_INT32,
	EEMB_BIND_TP_INT64,
	EEMB_BIND_TP_INT128,
	EEMB_BIND_TP_FP32,
	EEMB_BIND_TP_FP64,
	EEMB_BIND_TP_STRING,
	EEMB_BIND_TP_STRING_RAW,
	EEMB_BIND_TP_MBL_L_C,
	EEMB_BIND_TP_MBL_L_H,
	EEMB_BIND_TP_MBL_L_I,
	EEMB_BIND_TP_MBL_REMOTE
} 



struct EEmbBindVal_t {

	ptrVal: pointer
	valType: uint32

	func OperatorMake(val: &bool) -> EEmbBindVal_t {
		var tmp = mk EEmbBindVal_t{ ptrVal: val, valType: EEMB_BIND_TP_BOOL}
		return tmp
	}
	func OperatorMake(val: &int8) -> EEmbBindVal_t {
		var tmp = mk EEmbBindVal_t{ ptrVal: val, valType: EEMB_BIND_TP_INT8}
		return tmp
	}
	func OperatorMake(val: &int16) -> EEmbBindVal_t {
		var tmp = mk EEmbBindVal_t{ ptrVal: val, valType: EEMB_BIND_TP_INT16}
		return tmp
	}
	func OperatorMake(val: &int32) -> EEmbBindVal_t {
		var tmp = mk EEmbBindVal_t{ ptrVal: val, valType: EEMB_BIND_TP_INT32}
		return tmp
	}
	func OperatorMake(val: &int64) -> EEmbBindVal_t {
		var tmp = mk EEmbBindVal_t{ ptrVal: val, valType: EEMB_BIND_TP_INT64}
		return tmp
	}
	// func OperatorMake(val: &int128) -> EEmbBindVal_t {
	// 	var tmp = mk EEmbBindVal_t{ ptrVal: val, valType: EEMB_BIND_TP_INT32}
	// 	return tmp
	// }
	func OperatorMake(val: &f32) -> EEmbBindVal_t {
		var tmp = mk EEmbBindVal_t{ ptrVal: val, valType: EEMB_BIND_TP_FP32}
		return tmp
	}
	func OperatorMake(val: &f64) -> EEmbBindVal_t {
		var tmp = mk EEmbBindVal_t{ ptrVal: val, valType: EEMB_BIND_TP_FP64}
		return tmp
	}
	func OperatorMake(val: &string) -> EEmbBindVal_t {
		var tmp = mk EEmbBindVal_t{ ptrVal: val, valType: EEMB_BIND_TP_STRING}
		return tmp
	}
	func OperatorMake(val: c_string) -> EEmbBindVal_t {
		var tmp = mk EEmbBindVal_t{ ptrVal: val, valType: EEMB_BIND_TP_STRING_RAW}
		return tmp
	}
	func OperatorMake(val: &EEmb_modbus_local_h_t) -> EEmbBindVal_t {
		var tmp = mk EEmbBindVal_t{ ptrVal: val, valType: EEMB_BIND_TP_MBL_L_H}
		return tmp
	}
	func OperatorMake(val: &EEmb_modbus_local_i_t) -> EEmbBindVal_t {
		var tmp = mk EEmbBindVal_t{ ptrVal: val, valType: EEMB_BIND_TP_MBL_L_I}
		return tmp
	}

	func OperatorMake(remoteModule: &ModbusRemModuleBase_t, val: &EEmb_modbus_remote_reg_t) -> EEmbBindValExt_t {
		var tmp = mk EEmbBindValExt_t{ ptrVal: val, valType: EEMB_BIND_TP_MBL_L_I, extData: remoteModule}
		return tmp
	}
	
	func OperatorMake(bind: &EEmbBindValExt_t) -> &EEmbBindVal_t {
		return #bind
	}


	func OperatorGetValue(self: &EEmbBindVal_t) -> uint16 {


		if self.valType == EEMB_BIND_TP_BOOL {
			let val: &bool = self.ptrVal
			return val
		}

		if self.valType == EEMB_BIND_TP_INT8 {
			let val: &int8 = self.ptrVal
			return val
		}

		if self.valType == EEMB_BIND_TP_INT16 {
			let val: &int16 = self.ptrVal
			return val
		}

		if self.valType == EEMB_BIND_TP_INT32 {
			let val: &int32 = self.ptrVal
			return val
		}

		if self.valType == EEMB_BIND_TP_INT64 {
			let val: &int64 = self.ptrVal
			return val
		}

		// if self.valType == EEMB_BIND_TP_INT8 {
		// 	let val: &bool = ptrVal
		// 	return val
		// }

		if self.valType == EEMB_BIND_TP_FP32 {
			let val: &fp32 = self.ptrVal
			return val
		}

		if self.valType == EEMB_BIND_TP_FP64 {
			let val: &fp64 = self.ptrVal
			return val
		}

		if self.valType == EEMB_BIND_TP_STRING {
			let val: &string = self.ptrVal
			return val
		}

		if self.valType == EEMB_BIND_TP_STRING_RAW {
			let val: c_string = self.ptrVal
			return val
		}

		// if self.valType == EEMB_BIND_TP_MBL_L_C {
		// 	let val: &bool = ptrVal
		// 	return val
		// }

		if self.valType == EEMB_BIND_TP_MBL_L_H {
			let val: &EEmb_modbus_local_h_t = self.ptrVal
			return val
		}

		if self.valType == EEMB_BIND_TP_MBL_L_I {
			let val: &EEmb_modbus_local_i_t = self.ptrVal
			return val
		}

		if self.valType == EEMB_BIND_TP_MBL_REMOTE {
			//let val: &EEmb_modbus_remote_reg_t = self.ptrVal
			let val: mut &EEmbBindValExt_t = #self
			return val
		}

		return self.ptrVal
	}

	func OperatorCopy(self: &EEmbBindVal_t, rval: uint16) {

		if self.valType == EEMB_BIND_TP_BOOL {
			let val: mut &bool = self.ptrVal
			val = rval ? 1 : 0
			return
		}

		if self.valType == EEMB_BIND_TP_INT8 {
			let val: mut &int8 = self.ptrVal
			val = rval
			return
		}

		if self.valType == EEMB_BIND_TP_INT16 {
			let val: mut &int16 = self.ptrVal
			val = rval
			return
		}

		if self.valType == EEMB_BIND_TP_INT32 {
			let val: mut &int32 = self.ptrVal
			val = rval
			return
		}

		if self.valType == EEMB_BIND_TP_INT64 {
			let val: mut &int64 = self.ptrVal
			val = rval
			return
		}

		// if self.valType == EEMB_BIND_TP_INT8 {
		// 	let val: &bool = ptrVal
		// 	return val
		// }

		if self.valType == EEMB_BIND_TP_FP32 {
			let val: mut &fp32 = self.ptrVal
			val = rval
			return
		}

		if self.valType == EEMB_BIND_TP_FP64 {
			let val: mut &fp64 = self.ptrVal
			val = rval
			return
		}

		if self.valType == EEMB_BIND_TP_STRING {
			let val: mut &string = self.ptrVal
			//bkpt()
			val = rval
			return
		}

		if self.valType == EEMB_BIND_TP_STRING_RAW {
			Panic("Can't write to constant c_string")
			return
		} 
		//ASSERT(self.valType != EEMB_BIND_TP_STRING_RAW, "Can't write to constant c_string")
		
		if self.valType == EEMB_BIND_TP_MBL_L_H {
			let val: mut &EEmb_modbus_local_h_t = self.ptrVal
			val = rval
			return
		}
		
		if self.valType == EEMB_BIND_TP_MBL_L_I {
			let val: mut &EEmb_modbus_local_i_t = self.ptrVal
			val = rval
			return
		} 
		
		if self.valType == EEMB_BIND_TP_MBL_REMOTE {
			let val: mut &EEmbBindValExt_t = #self
			val = rval
			return
		}
	}
}

struct EEmbBindValExt_t {

	ptrVal: pointer
	valType: uint32
	extData: pointer

	func OperatorGetValue(self: &EEmbBindValExt_t) -> uint16 {
		
		if self.valType == EEMB_BIND_TP_MBL_REMOTE {
			let reg: &EEmb_modbus_remote_reg_t = self.ptrVal
			return reg.OperatorGetValue(self.extData)
		}

		let val: &EEmbBindVal_t = #self
		return val
	}

	func OperatorCopy(self: &EEmbBindValExt_t, rval: uint16) {

		if self.valType == EEMB_BIND_TP_MBL_REMOTE {
			MB_WRITE_REMOTE_REG_WITH_INST(self.extData, self.ptrVal, rval)
			return
		}

		let val: mut &EEmbBindVal_t = #self
		val = rval

	}

}


func MakeBind(ext: pointer, reg: &EEmb_modbus_remote_reg_t) -> EEmbBindValExt_t {

	let bind = mk EEmbBindValExt_t{ ptrVal: reg, valType: EEMB_BIND_TP_MBL_REMOTE, extData: ext }
	
	return bind
	
}







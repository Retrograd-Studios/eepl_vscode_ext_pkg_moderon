




// var AllocatedCount: uint32 = 0
// var DestroyedCount: uint32 = 0

let ConstStrTrue = "true"
let ConstStrFalse = "false"

struct string {

	buf: pointer

	capacity: uint32
	size: uint32

	func OperatorInit() {
	}
	
	func OperatorMake(val: int32) -> string {

		var buf: char[12]
		let size = snprintf(buf, 12, "%d", val) + 1
		// let size = EEmb_IntToString(buf, val)

		var tmp = make string {_}

		tmp.buf = MemAlloc(size)

		// AllocatedCount++
		tmp.size = size
		tmp.capacity = size

		MemCopy(tmp.buf, buf, size)

		//Println("Ok")

		return tmp

	}

	func OperatorMake(val: fp64) -> string {

		var buf: char[52]
		// let size = EEmb_FpToString(buf, val)
		let size = snprintf(buf, 52, "%f", val) + 1

		var tmp = make string {_}

		tmp.buf = MemAlloc(size)
		// AllocatedCount++
		tmp.size = size
		tmp.capacity = size
		MemCopy(tmp.buf, buf, size)

		return tmp

	}

	func OperatorMake(val: char) -> string {

		var tmp = mk string{_}

		var buf: char[] = MemAlloc(2)
		// AllocatedCount++
		tmp.capacity = 2
		tmp.size = 2

		buf[0] = val
		buf[1] = '\0'

		tmp.buf = buf

		return tmp

	}



	func OperatorMake(val: bool) -> string {

		var tmp = mk string{_}

		tmp.buf = val ? ConstStrTrue : ConstStrFalse

		tmp.capacity = 0
		tmp.size = val ? 5 : 6

		return tmp

	}

	func OperatorMake(val: c_string, size: uint) -> string {

		var tmp = make string {_}

		tmp.buf = MemAlloc(size)

		tmp.size = size
		tmp.capacity = size

		MemCopy(tmp.buf, val, size)

		return tmp

	}


	func OperatorMake(val: c_string) -> string {

		var tmp = mk string{_}

		var size = 0
		while val[size] != '\0' {
			size++
		}
		size++

		tmp.buf = MemAlloc(size)

		tmp.size = size
		tmp.capacity = size

		MemCopy(tmp.buf, val, size)

		return tmp
	}


	func OperatorMake(val: pointer) -> string {

		var tmp = mk string{_}

		var buf: char[19]
		// let size = EEmb_FpToString(buf, val)
		let size = snprintf(buf, 19, "0x%p", val) + 1

		tmp.buf = MemAlloc(size)

		tmp.size = size
		tmp.capacity = size

		MemCopy(tmp.buf, buf, size)

		return tmp
	}

	// func init(val: c_string) {


	// 	self.buf = MemAlloc(32)
	// 	self.capacity = 32
	// 	self.size = 0

	// 	let rval: pointer = val

	// 	while rval[self.size] != '\0' {
	// 		let c_ptr: mut &char = self.buf + self.size
	// 		c_ptr = rval[self.size]
	// 		self.size++
	// 		self.checkOverflow()
	// 	}

	// 	let c_ptr: mut &char = self.buf + self.size
	// 	c_ptr = '\0'
	// 	self.size++

	// }


	// func checkOverflow() {
		
    //     if self.size < self.capacity {
    //         return
    //     }

	// 	//Println("reallocing...")

	// 	let newSize = self.capacity * 2
	// 	let new_buf = MemAlloc(newSize)
	// 	MemCopy(new_buf, self.buf, self.capacity)
	// 	MemFree(self.buf)
	// 	self.buf = new_buf
	// 	self.capacity = newSize
	// }


	func OperatorDestroy() {

		if self.buf == null || !self.capacity {
			//Print("Skip: \n")
			return
		}
		

		MemFree(self.buf)
		self.buf = null
		//DestroyedCount++
	}


	func OperatorGetValue() -> c_string {

		if self.buf == null {
			return ""
		}
		return self.buf
	}

	func OperatorGetValue(self: &string) -> c_string {
		
		if self.buf == null {
			return ""
		}
		return self.buf
	}

	func OperatorCopy(rval: c_string, size: uint) {

		if size > self.capacity {
			self.OperatorDestroy()
			self.buf = MemAlloc(size)
			self.capacity = size
		} 

		// let a = `123 ${12+40 * ( 40 & afv + sin(s))}:{%d}`

		self.size = size
		MemCopy(self.buf, rval, size)

	}


	func OperatorCopy(rval: c_string) {

		var size = 0
		while rval[size] != '\0' {
			size++
		}
		size++

		self.OperatorCopy(rval, size)
		
	}

	func OperatorCopy(rval: &string) {

		if rval.size > self.capacity {
			self.OperatorDestroy()
			self.buf = MemAlloc(rval.size)
			self.capacity = rval.size
		}

		self.size = rval.size
		MemCopy(self.buf, rval.buf, self.size)

	}

	func OperatorClone(self: &string) -> string {
		let ptr: pointer = self
		let ptr2: mut &string = ptr
		return ptr2.OperatorClone()
	}

	func OperatorClone() -> string {
		var tmp = mk string{_}
		tmp.buf = MemAlloc(self.size)
		tmp.size = self.size
		tmp.capacity = self.size
		MemCopy(tmp.buf, self.buf, tmp.size)
		return tmp
	}


	func OperatorAdd(lval: &string, rval: &string) -> string {

		var tmp = mk string{_}

		tmp.size = lval.size + rval.size - 1
		//Println(tmp.size)
		tmp.capacity = tmp.size
		tmp.buf = MemAlloc(tmp.capacity)
		// AllocatedCount++

		MemCopy(tmp.buf, lval.buf, lval.size)
		let c_ptr: pointer = tmp.buf + lval.size - 1
		MemCopy(c_ptr, rval.buf, rval.size)

		return tmp

	}

    func OperatorAt(index: uint) -> mut &char {

		// if index >= self.size {
		// 	Panic("Error: Array index out of bounds")
		// }
		ASSERT(index < self.size, "Error: Array index out of bounds")

		return self.buf[index]
	
	}

	func OperatorAt(self: &string, index: uint) -> &char {

		// if index >= self.size {
		// 	Panic("Error: Array index out of bounds")
		// }
		ASSERT(index < self.size, "Error: Array index out of bounds")

		return self.buf[index]
	}


	func OperatorLength() -> uint {
		return self.size
	}

	func OperatorLength(self: &string) -> uint {
		return self.size
	}


	func OperatorEq(lval: &string, rval: &string) -> bool {
		
		if lval.size != rval.size {
			return false
		}

		

		for i, v in lval {
			// if lval.size == 1 {
			// 	Print(`yes = ${v}`)
			// 	bkpt()
			// 	Print(`yes2 = ${rval[i]}`)
			// }
			if v != rval[i] {
				return false
			}
		}

		return true

	}

	func OperatorNeq(lval: &string, rval: &string) -> bool {
		return !string::OperatorEq(lval, rval)
	}

}

struct StringBuilder {

	stack: pointer
	buf: pointer

	stackSize: uint32
	capacity: uint32
	size: uint32


	func Append(val: c_string, size: uint) {

		self.size--

		if !self.capacity {
			
			if (self.size + size) <= self.stackSize {
				// bkpt()
				MemCopy(self.stack[self.size], val, size)
				self.size += size

				return
			}

			self.capacity = self.size + size + 32
			self.buf = MemAlloc(self.capacity)

			MemCopy(self.buf, self.stack, self.size)

		} else if (self.size + size) > self.capacity {

			let prevBuf = self.buf

			self.capacity = self.size + size + 32
			self.buf = MemAlloc(self.capacity)

			MemCopy(self.buf, prevBuf, self.size)

			MemFree(prevBuf)

		}

		MemCopy(self.buf[self.size], val, size)
		self.size += size

	}

	func Append(val: c_string) {
		
		// var size = 0
		// while val[size] != '\0' {
		// 	size++
		// }
		// size++

		self.Append(val, EEmb_GetStringSize(val))

	}

	func AppendInt(fmt: c_string, val: int32) {

		self.size--

		if !self.capacity {

			let free = self.stackSize - self.size
			let req = snprintf(self.stack[self.size], free, fmt, val) + 1

			if req > free {
				self.size++
				self.Append(self.stack[self.size], req + 1)

				sprintf(self.buf[self.size - req], fmt, val)
			} else {
				self.size += req
			}

			return
		}

		let free = self.capacity - self.size
		let req = snprintf(self.buf[self.size], free, fmt, val) + 1

		if req > free {

			let prevBuf = self.buf

			self.capacity = self.size + req + 32
			self.buf = MemAlloc(self.capacity)

			MemCopy(self.buf, prevBuf, self.size)

			sprintf(self.buf[self.size], fmt, val)

			MemFree(prevBuf)

		}

		self.size += req

	}

	func AppendInt(fmt: c_string, val: int64) {

		self.size--

		if !self.capacity {

			let free = self.stackSize - self.size
			let req = snprintf(self.stack[self.size], free, fmt, val) + 1

			if req > free {
				self.size++
				self.Append(self.stack[self.size], req + 1)
				sprintf(self.buf[self.size - req], fmt, val)
			} else {
				self.size += req
			}

			return
		}

		let free = self.capacity - self.size
		let req = snprintf(self.buf[self.size], free, fmt, val) + 1

		if req > free {

			let prevBuf = self.buf

			self.capacity = self.size + req + 32
			self.buf = MemAlloc(self.capacity)

			MemCopy(self.buf, prevBuf, self.size)

			sprintf(self.buf[self.size], fmt, val)

			MemFree(prevBuf)

		}

		self.size += req

	}


	// func AppendFp(fmt: c_string, val: fp32) {

	// 	if !self.capacity {

	// 		let free = self.stackSize - self.size 
	// 		let req = snprintf(#self.stack[self.size], free, fmt, val)

	// 		if req > free {
	// 			self.size++
	// 			self.Append(#self.stack[self.size], req + 1)
	// 			sprintf(#self.buf[self.size - req], fmt, val)
	// 		} else {
	// 			self.size += req 
	// 		}

	// 		return
	// 	}

	// 	let free = self.capacity - self.size 
	// 	let req = snprintf(#self.buf[self.size], free, fmt, val)

	// 	if req > free {

	// 		let prevBuf = self.buf

	// 		self.capacity = self.size + req + 32
	// 		self.buf = MemAlloc(self.capacity)

	// 		MemCopy(self.buf, prevBuf, self.size)

	// 		sprintf(#self.buf[self.size], fmt, val)

	// 		MemFree(prevBuf)

	// 	}

	// 	self.size += req 

	// }


	
	func AppendFp(fmt: c_string, val: fp64) {

		self.size--

		if !self.capacity {

			let free = self.stackSize - self.size
			let req = snprintf(self.stack[self.size], free, fmt, val) + 1

			if req > free {
				self.Append(self.stack[self.size], req)
				sprintf(self.buf[self.size - req], fmt, val)
			} else {
				self.size += req
			}

			return
		}

		let free = self.capacity - self.size
		let req = snprintf(self.buf[self.size], free, fmt, val) + 1

		if req > free {

			let prevBuf = self.buf

			self.capacity = self.size + req + 32
			self.buf = MemAlloc(self.capacity)

			MemCopy(self.buf, prevBuf, self.size)

			sprintf(self.buf[self.size], fmt, val)

			MemFree(prevBuf)

		}

		self.size += req 

	}


	func Append(val: bool) {

		let reqSize = val ? 5 : 6
		let vBuf = val ? ConstStrTrue : ConstStrFalse

		self.Append(vBuf, reqSize)
	}


	func Append(val: char) {

		let reqSize = 2
		let vBuf = [ val, '\0' ]

		self.Append(vBuf, reqSize)
	}

	func Append(val: &string) {

		self.Append(val.buf, val.size)

	}




	func GetStr() -> string {

		let buf = MemAlloc(self.size)
		let src = self.capacity ? self.buf : self.stack
		MemCopy(buf, src, self.size)

		let res = mk string { 
			buf: buf, 
			capacity: self.size, 
			size: self.size 
		}

		return res

	}


	func GetStr() -> c_string {

		let src = self.capacity ? self.buf : self.stack
		
		return src

	}




	func OperatorDestroy() {

		if self.buf == null || !self.capacity {
			return
		}

		MemFree(self.buf)
		self.buf = null
	}

}

func EEmb_GetStringSize(str: c_string) -> uint32 {

	var size = 0

	let p: pointer = str

	// bkpt()
	while CastTo($char[]$ p[size])[0] != '\0' {
		size++
	}
	size++

	return size 

}




//-- buf: c_string, value: int32
// extern demangle func EEmb_IntToString(c_string, int32) -> uint32
// //-- buf: c_string, value: fp32
// extern demangle func EEmb_FpToString(c_string, fp32) -> uint32
// //-- buf: c_string
// extern demangle func EEmb_GetStringSize(c_string) -> uint32

//-- c std
extern demangle func sprintf(...) -> uint32
extern demangle func snprintf(...) -> uint32







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
		let size = EEmb_IntToString(buf, val)

		var tmp = make string {_}

		tmp.buf = MemAlloc(size)

		// AllocatedCount++
		tmp.size = size
		tmp.capacity = size

		MemCopy(tmp.buf, buf, size)

		//Println("Ok")

		return tmp

	}

	func OperatorMake(val: fp32) -> string {

		var buf: char[50]
		let size = EEmb_FpToString(buf, val)

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
		
		tmp.buf = MemAlloc(2)
		// AllocatedCount++
		tmp.capacity = 2
		tmp.size = 2

		tmp.buf[0] = val
		tmp.buf[1] = '\0'

		return tmp

	}



	func OperatorMake(val: bool) -> string {

		var tmp = mk string{_}

		tmp.buf = val ? ConstStrTrue : ConstStrFalse

		tmp.capacity = 0
		tmp.size = val ? 5 : 6

		return tmp

	}


	func OperatorMake(val: c_string) -> string {

		var tmp = mk string{_}
		tmp.init(val)
		//AllocatedCount++

		return tmp
	}

	func init(val: c_string) {


		self.buf = MemAlloc(32)
		self.capacity = 32
		self.size = 0

		let rval: pointer = val

		while rval[self.size] != '\0' {
			let c_ptr: mut &char = self.buf + self.size
			c_ptr = rval[self.size]
			self.size++
			self.checkOverflow()
		}

		let c_ptr: mut &char = self.buf + self.size
		c_ptr = '\0'
		self.size++

	}


	func checkOverflow() {
		
        if self.size < self.capacity {
            return
        }

		//Println("reallocing...")

		let newSize = self.capacity * 2
		let new_buf = MemAlloc(newSize)
		MemCopy(new_buf, self.buf, self.capacity)
		MemFree(self.buf)
		self.buf = new_buf
		self.capacity = newSize
	}


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

	func OperatorCopy(rval: c_string) {

		self.OperatorDestroy()
		self.init(rval)
		
	}

	func OperatorCopy(rval: &string) {

		self.OperatorDestroy()
		self.buf = MemAlloc(rval.capacity)
		self.size = rval.size
		self.capacity = rval.capacity
		MemCopy(self.buf, rval.buf, self.size)
	
	}

	func OperatorClone(self: &string) -> string {
		let ptr: pointer = self
		let ptr2: mut &string = ptr
		return ptr2.OperatorClone()
	}

	func OperatorClone() -> string {
		var tmp = mk string{_}
		tmp.buf = MemAlloc(self.capacity)
		tmp.size = self.size
		tmp.capacity = self.capacity
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

    func OperatorAt(index: uint32) -> mut &char {

		if index >= self.size {
			Panic("Error: Array index out of bounds")
		}

		return self.buf[index]
	
	}

	func OperatorAt(self: &string, index: uint32) -> &char {

		if index >= self.size {
			Panic("Error: Array index out of bounds")
		}

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




//-- buf: c_string, value: int32
extern demangle func EEmb_IntToString(c_string, int32) -> uint32
//-- buf: c_string, value: fp32
extern demangle func EEmb_FpToString(c_string, fp32) -> uint32
//-- buf: c_string
extern demangle func EEmb_GetStringSize(c_string) -> uint32

//-- c std
extern demangle func sprintf(...) -> int32


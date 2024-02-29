


struct Int {

	value: int32

	//-- call after create var Int{} or Int{value: int32}
	// func OperatorInit() {
	// 	self.value = 0
	// }
	
	//-- Cast int32 to Int
	func OperatorMake(val: int32) -> Int {
		var tmp = mk Int{_}
		tmp.value = val
		return tmp
	}

	//-- Cast float to Int
	func OperatorMake(val: fp32) -> Int {
		var tmp = mk Int{_}
		tmp.value = val
		return tmp
	}


	//-- let a: int32 = b // b: Int or Cast Int to int32
	func OperatorGetValue() -> int32 {
		//Println("Get int32 from mut& Int")
		return self.value
	}

    func OperatorGetValue(self: &Int) -> int32 {
		//Println("Get int32 from &Int")
		return self.value
	}

	//-- let a: &int32 = b // b: Int
	// func OperatorGetRef() -> mut &int32 {
	// 	return self.value
	// }

    // func OperatorGetRef(self: &Int) -> &int32 {
	// 	return self.value
	// }


	//-- b = a // b: Int, a: int32
	func OperatorCopy(lval: int32) {
		Println("copy")
		self.value = lval
	}

	//-- b = a // b: Int, a: Int
	func OperatorCopy(lval: &Int) {
		Println("copy")
		self.value = lval.value
	}


    //-- Arithmetic operations

	//-- b + a // b: Int, a: Int
	func OperatorAdd(lval: &Int, rval: &Int) -> Int {
		var tmp = mk Int{_}
		tmp.value = lval.value + rval.value
		return tmp
	}

	//-- b - a // b: Int, a: Int
	func OperatorSub(lval: &Int, rval: &Int) -> Int {
		var tmp = mk Int{_}
		tmp.value = lval.value - rval.value
		return tmp
	}

    func OperatorMul(lval: &Int, rval: &Int) -> Int {
		var tmp = mk Int{_}
		tmp.value = lval.value * rval.value
		return tmp
	}

    func OperatorDiv(lval: &Int, rval: &Int) -> Int {
		var tmp = mk Int{_}
		tmp.value = lval.value / rval.value
		return tmp
	}

    func OperatorMod(lval: &Int, rval: &Int) -> Int {
		var tmp = mk Int{_}
		tmp.value = lval.value % rval.value
		return tmp
	}
    //--


    //-- Bits operations
    func OperatorAnd(lval: &Int, rval: &Int) -> Int {
		var tmp = mk Int{_}
		tmp.value = lval.value & rval.value
		return tmp
	}

    func OperatorOr(lval: &Int, rval: &Int) -> Int {
		var tmp = mk Int{_}
		tmp.value = lval.value | rval.value
		return tmp
	}

    func OperatorXor(lval: &Int, rval: &Int) -> Int {
		var tmp = mk Int{_}
		tmp.value = lval.value ^ rval.value
		return tmp
	}

    func OperatorShl(lval: &Int, rval: &Int) -> Int {
		var tmp = mk Int{_}
		tmp.value = lval.value << rval.value
		return tmp
	}

    func OperatorShr(lval: &Int, rval: &Int) -> Int {
		var tmp = mk Int{_}
		tmp.value = lval.value >> rval.value
		return tmp
	}
    //--



    //-- Logic operations
    func OperatorEq(lval: &Int, rval: &Int) -> bool {
        return lval.value == rval.value
	}

    func OperatorNeq(lval: &Int, rval: &Int) -> bool {
        return lval.value != rval.value
	}


    func OperatorLess(lval: &Int, rval: &Int) -> bool {
        return lval.value < rval.value
	}

    func OperatorLeq(lval: &Int, rval: &Int) -> bool {
        return lval.value <= rval.value
	}

    func OperatorGt(lval: &Int, rval: &Int) -> bool {
        return lval.value > rval.value
	}


    func OperatorGeq(lval: &Int, rval: &Int) -> bool {
        return lval.value >= rval.value
	}
    //--

} 

func IntTestFunc(a: int32, b: &int8) -> int16 {
	return a + b 
}

func dummy() {

}
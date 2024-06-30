import * from EEmbCore

extern demangle func EEmbCreateWindow(c_string, uint32, uint32, uint32, uint32) -> int32


demangle var arr = [
	0, 1, 2, 3, 4, 5
]

let Title = "Hello from *.es 2"



demangle func foo() {

	let Title2: c_string = "Hello from *.es 2_2"
	let Title3 = "Hello from *.es 3"

	var str1 = "10"
	var str2 = "2020"

	var str3 = str1 + str2
	//str3[100] = '2'

	if str3 == Title3[4] {
		arr[4] = Title2[0]
	}

	arr[0] = 0
	arr[1] = 0
	arr[2] = 640
	arr[3] = 380

}


func init() {

	foo()

	EEmbCreateWindow(Title, arr[0], arr[1], arr[2], arr[3])


}
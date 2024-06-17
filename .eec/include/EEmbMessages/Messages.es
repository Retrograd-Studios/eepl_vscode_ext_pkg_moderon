

import string from EEmbCore


func ShowAlert(title: &string, body: &string, buttonHandler: func {(uint8)->void}) {
    //bkpt()
    MSG_pushMessage(title, body, buttonHandler, 0)
}



func ShowNote(msg: &string, duration: uint32) {
    MSG_pushMessage(null, msg, null, duration)
}



extern demangle func MSG_pushMessage(&string, &string, func {(uint8)->void}, uint32)





struct RTC_date_t {
    sec: uint8
    mins: uint8
    hours: uint8
    dayOfweek: uint8
    day: uint8
    month: uint8
    year: uint8
}
  




  extern demangle func RTC_SET_DATE_2(uint8, uint8, uint8, uint8, uint8, uint8, uint8)
  extern demangle func RTC_SET_DATE(&RTC_date_t)
  extern demangle func RTC_GET_DATE(mut &RTC_date_t)
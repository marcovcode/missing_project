function save_real(section, key, value) {
    ini_open("save.ini")
    ini_write_real(section, key, value)
    ini_close()
}

function save_string(section, key, value) {
    ini_open("save.ini")
    ini_write_string(section, key, value)
    ini_close()
}

function load_real(section, key) {
    ini_open("save.ini")
    var value = ini_read_real(section, key, noone)
    ini_close()
    return value
}

function load_string(section, key) {
    ini_open("save.ini")
    var value = ini_read_string(section, key, noone)
    ini_close()
    return value
}
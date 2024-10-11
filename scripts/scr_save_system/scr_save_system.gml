function save_plot_state(state) {
    ini_open("save.ini")
    ini_write_string("Plot", "state", state)
    ini_close()
}

function load_plot_state() {
    ini_open("save.ini")
    var value = ini_read_string("Plot", "state", "")
    ini_close()
    return value
}
.globaltype __stack_pointer, i32

.global tinygo_launch
.hidden tinygo_launch
.type tinygo_launch,@function
tinygo_launch: // func (state *state) launch()
    .functype tinygo_launch (i32) -> ()
    // Get the argument pack and entry pointer.
    local.get 0
    i32.load 4 // args := state.args
    local.get 0
    i32.load 0 // fn := state.entry
    // Launch the entry function.
    call_indirect (i32) -> () // fn(args)
    return
    end_function

.global  tinygo_trap
.hidden  tinygo_trap
.type    tinygo_trap,@function
tinygo_trap: // func tinygo_trap()
    .functype tinygo_trap () -> ()
    unreachable
    return
    end_function


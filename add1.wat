(module
    (func $add (param $lhs i32) (param $rhs i32) (result i32)
        local.get $lhs
        local.get $rhs
        i32.add)
    (export "add" (func $add))
)

;; the call to get_local reteives a function-scoped value and places it on the wasm execution stack.
;; In this function. you're calling i32.add. This adds the two values on the stack, pops them off, and outs the sum in their place.
;; The value left on the stack at the end of the function is the default return value.
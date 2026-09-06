pidwait() {
    local pid=$1
    while kill -0 "$pid" 2>/dev/null; do
        sleep 0.2
    done
}

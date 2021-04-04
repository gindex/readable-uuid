#!/usr/bin/env bash

function uuid() {
    if [[ -z ${1}  ]]; then
        echo "Provide a pattern of hex numbers for uuid generation, e.g. 1, 12 or beef."
        echo "Usage: uuid <pattern>"
        echo 'Example: "uuid 1234" will produce "12341234-1234-1234-1234-123412341234"'
        echo "Note: uuid functions does not check if provided character are hexadecimal digits."
        return 1
    elif [[ ${1} == "-h" || ${1} == "--help" ]]; then
        echo "Simple function to generate uuid from a provided pattern of hex numbers."
        echo "Usage: uuid <pattern>"
        echo 'Example: "uuid 1234" will produce "12341234-1234-1234-1234-123412341234"'
        echo "Note: uuid functions does not check if provided character are hexadecimal digits."
    else
        local size=${#1}
        local pattern=""
        for i in {0..11}; do
            local pos=$((i % size))
            pattern+=${1:$pos:1}
        done
        echo "${pattern:0:8}-${pattern:0:4}-${pattern:0:4}-${pattern:0:4}-${pattern}"
    fi
}

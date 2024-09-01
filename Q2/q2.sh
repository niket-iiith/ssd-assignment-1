#!/bin/bash

# Part a:
generate_password() 
{
    local chars='A-Za-z%&#$@()!'
    
    password=$(tr -dc "$chars" </dev/urandom | head -c 10)
    
    while ! [[ "$password" =~ [A-Z] ]] || ! [[ "$password" =~ [a-z] ]] || ! [[ "$password" =~ [%\&#$@()!] ]]; do
        password=$(tr -dc "$chars" </dev/urandom | head -c 10)
    done
    
    echo "Generated Password: $password"
}

# Part b:
generate_account_number() 
{
    local account_number=""
    local digits=('1' '2' '3' '4' '5' '6' '7' '8' '9') 
    
    # length of digit must be between 12 and 14
    for ((i = 0; i < 14; i++)); do
        digit=${digits[$RANDOM % ${#digits[@]}]}
        account_number+="$digit"
        digits=('0' '1' '2' '3' '4' '5' '6' '7' '8' '9') 
    done

    # should not be repetitive more than 3 times
    while [[ "$account_number" =~ 000|111|222|333|444|555|666|777|888|999 ]] ||
          [[ "$account_number" =~ 13|21|34|55|89|144|233|377|610|987 ]] ||
          ! [[ "$account_number" =~ ^[1-9][0-9]{11,13}$ ]]; do
        account_number=""
        digits=('1' '2' '3' '4' '5' '6' '7' '8' '9') 
        
        for ((i = 0; i < 14; i++)); do
            digit=${digits[$RANDOM % ${#digits[@]}]}
            account_number+="$digit"
            digits=('0' '1' '2' '3' '4' '5' '6' '7' '8' '9') 
        done
    done
    
    echo "Generated Account Number: $account_number"
}

# Execute functions
generate_password
generate_account_number

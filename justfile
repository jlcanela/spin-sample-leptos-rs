build:
    @echo build

serve:
    cd frontend && trunk serve

up:
    spin up

watch:
    #@if [ -z "${SPIN_VARIABLE_AUTH0_CLIENT_ID+x}" ]; then echo "SPIN_VARIABLE_AUTH0_CLIENT_ID is unset, please set SPIN_VARIABLE_AUTH0_CLIENT_ID"; fi
    #@if [ -z "${SPIN_VARIABLE_AUTH0_DOMAIN+x}" ]; then echo "SPIN_VARIABLE_AUTH0_DOMAIN is unset, please set SPIN_VARIABLE_AUTH0_DOMAIN"; fi
    #@if [ -z "${SPIN_VARIABLE_AUTH0_CLIENT_ID+x}" ||  -z "${SPIN_VARIABLE_AUTH0_DOMAIN+x}" ]; then exit 1; else spin watch; fi
    spin watch
    
# test everything
test-all: build
    ./test --all

# run a specific test
test TEST: build
    ./test --test {{ TEST }}

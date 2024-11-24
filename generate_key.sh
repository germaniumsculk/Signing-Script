function keygen() {
    local certs_dir=~/.android-certs
    [ -z "$1" ] || certs_dir=$1
    rm -rf "$certs_dir"
    mkdir -p "$certs_dir"
    local subject="/C=US/ST=California/L=Mountain View/O=Android/OU=Android/CN=Android/emailAddress=germaniumsculk@gmail.com"    
    for key in bluetooth certs cyngn-app media networkstack nfc platform releasekey sdk_sandbox shared testcert testkey verity; do
        printf "\n\n" | ./development/tools/make_key "$certs_dir"/$key "$subject"
    done
}
keygen

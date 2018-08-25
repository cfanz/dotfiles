androiddirs=("${HOME}/Library/Android" "${HOME}/Android" )

FOUND_ANDROID=0
for androiddir in $androiddirs; do
    if [[ -d "${androiddir}/sdk" ]]; then
        FOUND_ANDROID=1
        break
    fi
done

if [[ $FOUND_ANDROID -eq 1 ]]; then
    export ANDROID_HOME=${androiddir}/sdk
    export PATH=${ANDROID_HOME}/tools/bin:${ANDROID_HOME}/platform-tools:$PATH

else
fi

unset androiddir androiddirs FOUND_ANDROID
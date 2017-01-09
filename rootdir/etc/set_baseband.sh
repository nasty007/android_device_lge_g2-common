#!/system/bin/sh

# Grep the firmware partition for baseband version and set it
product=`getprop ro.build.product`
case "$product" in
        "d800" | "d801" | "d802" | "d803" | "f320" | "l01f")
        setprop gsm.version.baseband `strings /firmware/image/modem.b21 | grep "^M8974A-" | head -1`
        ;;
        "ls980" | "vs980")
        setprop gsm.version.baseband `strings /firmware/image/modem.b18 | grep "^MPSS.DI" | head -1`
        ;;
esac

ROOT_UID=0
UDEV_RULES_DIR="/etc/udev/rules.d"
ANDROID_RULES_FILE="51-android.rules"

if [ "$(id -u)" != $ROOT_UID ]; then
    echo "Script requires root to complete install."
    exit 1
fi

echo "Unplug all android devices, then hit ENTER."
read IGNORE

cp $ANDROID_RULES_FILE $UDEV_RULES_DIR

chmod a+r $UDEV_RULES_DIR/$ANDROID_RULES_FILE

service udev restart > /dev/null

echo "UDEV rules installed. Restart adb and connect Android devices."

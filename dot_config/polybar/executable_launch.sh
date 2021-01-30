killall -q polybar

while pgrep -u $UID -x polybar >/dev/null; do sleep 1; done

polybar -r top

echo "bar launched"

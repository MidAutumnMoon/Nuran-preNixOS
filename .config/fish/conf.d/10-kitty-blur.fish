if status is-interactive
  # set --local parent_id (ps --no-headers -o ppid -p $fish_pid | awk '{ print $1 }')
  # set --local parent_name (ps --no-headers -o comm -p $parent_id)

  # if contains kitty $parent_name
  #   for win in (xdotool search --pid $parent_id)
  #     xprop -f _KDE_NET_WM_BLUR_BEHIND_REGION 32c -set _KDE_NET_WM_BLUR_BEHIND_REGION 0 -id $win
  #   end
  # end

  if test $hostname = "moon"

    if not set --query kitty_blur_counter || test "$kitty_blur_counter" = 0
      for win in (xdotool search --class 'kitty')
        xprop -f _KDE_NET_WM_BLUR_BEHIND_REGION 32c -set _KDE_NET_WM_BLUR_BEHIND_REGION 0 -id $win
      end
      set --export --global kitty_blur_counter 1
    else
      set --export --global kitty_blur_counter (expr $kitty_blur_counter + 1)
    end

    function kitty_blur_exit --on-process-exit $fish_pid
      if not set --query kitty_blur_counter
        functions --erase kitty_blur_exit
        return 1
      end

      if test $kitty_blur_counter = 1
        set --erase kitty_blur_counter
      else
        set --export --global kitty_blur_counter (expr $kitty_blur_counter - 1)
      end

      functions --erase kitty_blur_exit
    end

  end
end

# Set global color styles, for example:
#
# function pastfish_error
#   set_color -o red
# end
#
# function pastfish_normal
#   set_color normal
#
# COLOR is one of black, red, green, brown, yellow, blue, magenta, purple, cyan, white and normal.

function fish_greeting

  # =============================
  # Greeting messages and fishes
  set greeing_msgs \
    (set_color cyan)"Hey! How are you doing?" \
    (set_color normal)"Today is a good day to code!" \
    (set_color purple)"OH_MY_FISH Loaded!"

  set small_fish \
    (set_color white)"}{}" (set_color white)"{}{" \
    (set_color blue)"><>" (set_color blue)"<><"

  set big_fish \
    (set_color red)"<(^O^)>" (set_color red)"<(^O^)>" \
    (set_color green)"><(((^>" (set_color green)"<^)))><"
  # =============================

  set chosen_msg (random)"%"(count $greeing_msgs)
  set chosen_sfish "("(random)"%("(count $small_fish)"/2))*2"
  set chosen_bfish "("(random)"%("(count $big_fish)"/2))*2"
  set chosen_msg $greeing_msgs[(math $chosen_msg"+1")]
  set chosen_sfishl $small_fish[(math $chosen_sfish"+1")]
  set chosen_sfishr $small_fish[(math $chosen_sfish"+2")]
  set chosen_bfishl $big_fish[(math $chosen_bfish"+1")]
  set chosen_bfishr $big_fish[(math $chosen_bfish"+2")]

  printf "%s %s %s %s %s\n" $chosen_sfishl $chosen_bfishl $chosen_msg $chosen_bfishr $chosen_sfishr

end

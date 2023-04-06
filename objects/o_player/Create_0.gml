image_speed = 0.01;
drag_state = false;
can_jump = false;
state = player_states.normal

sprite[player_states.normal] = s_player_idle;
sprite[player_states.hold] = s_player_prepare_to_jump;
sprite[player_states.jump] = s_player_jump;
sprite[player_states.fall] = s_player_falling;
sprite[player_states.damage] = s_player_damage;
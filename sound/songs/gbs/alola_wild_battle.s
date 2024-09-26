	.include "asm/macros.inc"
	.section .rodata
	.global gbs_Music_AlolaWildBattle
	.align 2

gbs_Music_AlolaWildBattle:
	channel_count 4
	channel 1, Music_AlolaWildBattle_Ch1
	channel 2, Music_AlolaWildBattle_Ch2
	channel 3, Music_AlolaWildBattle_Ch3
	channel 4, Music_AlolaWildBattle_Ch4

gbs_Music_AlolaWildBattle_Ch1:
	gbs_switch 0
Music_AlolaWildBattle_Ch1:
	tempo 204
	volume 7, 7
	duty_cycle 3
	pitch_offset 2
	vibrato 18, 1, 5
	note_type 6, 9, 2
	rest 4
	octave 4
	note Gs, 1
	note G_, 1
	note Fs, 1
	note F_, 1
	note E_, 1
	note Ds, 1
	note D_, 1
	note Cs, 1
	note C_, 1
	octave 3
	note B_, 1
	note As, 1
	note A_, 1
	note Gs, 1
	note G_, 1
	note Fs, 1
	note F_, 1
	note As, 1
	note A_, 1
	note Gs, 1
	note G_, 1
	note Fs, 1
	note F_, 1
	note E_, 1
	note Ds, 1
	note D_, 1
	note Cs, 1
	note C_, 1
	octave 2
	note B_, 1
	note As, 1
	note A_, 1
	note Gs, 1
	note G_, 1
	volume_envelope 10, 2
	octave 3
	note C_, 6
	octave 2
	note B_, 6
	octave 3
	note C_, 4
	note C_, 8
	volume_envelope 10, 7
	octave 2
	note F_, 8
	volume_envelope 10, 2
	octave 3
	note Cs, 6
	note C_, 6
	note Cs, 4
	note Cs, 8
	volume_envelope 10, 7
	note Fs, 8
Music_AlolaWildBattle_Ch1_loop_main:
	rest 8
	duty_cycle 0
	volume_envelope 10, 2
	octave 4
	note F_, 2
	note G_, 2
	octave 5
	note C_, 2
	octave 4
	note F_, 4
	octave 5
	note C_, 4
	octave 2
	volume_envelope 10, 4
	note D_, 2
	note F_, 4
	note G_, 3
	octave 4
	note Fs, 1
	note As, 4
	note A_, 2
	note As, 4
	note A_, 2
	volume_envelope 10, 7
	note G_, 4
	octave 5
	note Ds, 2
	note D_, 2
	note C_, 2
	octave 4
	note As, 12
	octave 4
	volume_envelope 9, 2
	note F_, 4
	note F_, 2
	octave 3
	note B_, 2
	octave 4
	note C_, 10
	note F_, 6
	note F_, 4
	note F_, 2
	volume_envelope 10, 0
	note As, 6
	volume_envelope 10, 7
	note As, 12
	volume_envelope 4, -7
	note As, 8
	volume_envelope 12, 2
	note A_, 4
	note As, 2
	octave 5
	note C_, 10
	octave 4
	note F_, 4
	note F_, 4
	note A_, 4
	note A_, 4
	note Ds, 6
	note Ds, 6
	rest 12
	octave 3
	note As, 4
	note As, 4
	note As, 2
	volume_envelope 12, 5
	note A_, 4
	volume_envelope 12, 0
	note As, 8
	volume_envelope 12, 7
	note As, 8
	octave 4
	note C_, 8
	note D_, 8
	volume_envelope 12, 2
	rest 4
	note G_, 8
	note F_, 8
	note Ds, 6
	note D_, 4
	note D_, 2
Music_AlolaWildBattle_Ch1_loop_1:
	note D_, 6
	note E_, 4
	note Fs, 4
	note Fs, 1
	note G_, 1
	note A_, 2
	note Fs, 4
	note D_, 4
	note D_, 4
	note Cs, 2
	sound_loop 2, Music_AlolaWildBattle_Ch1_loop_1
	duty_cycle 0
	volume_envelope 12, 7
	octave 4
	note Ds, 8
	note D_, 8
	note C_, 8
	octave 3
	note As, 8
	octave 4
	note C_, 8
	octave 3
	note As, 8
	note A_, 8
	note B_, 2
	volume_envelope 12, 2
	octave 4
	note C_, 4
	volume_envelope 12, 0
	octave 3
	note B_, 16
	volume_envelope 12, 7
	note B_, 16
	volume_envelope 6, 0
	octave 4
	note Ds, 2
	note E_, 16
	note E_, 16
	
	octave 3
	volume_envelope 12, 2
	note C_, 2
	octave 2
	note B_, 4
	octave 3
	note C_, 4
	note C_, 4
	octave 2
	note B_, 2
	octave 3
	note C_, 2
	octave 2
	note A_, 4
	volume_envelope 12, 7
	octave 3
	note F_, 10
	volume_envelope 12, 2
	note D_, 4
	note Cs, 2
	note D_, 4
	note D_, 4
	note Cs, 2
	note D_, 2
	octave 2
	note A_, 4
	octave 3
	volume_envelope 12, 7
	note G_, 10
	volume_envelope 12, 0
	note E_, 16
	volume_envelope 12, 7
	note E_, 16
	octave 2
	volume_envelope 8, 0
	note E_, 16
	volume_envelope 8, 7
	note E_, 16
	rest 16
	rest 16
	rest 16
	rest 16
	sound_loop 0, Music_AlolaWildBattle_Ch1_loop_main
	
gbs_Music_AlolaWildBattle_Ch2:
	gbs_switch 1
Music_AlolaWildBattle_Ch2:
	duty_cycle 3
	vibrato 8, 3, 6
	pitch_offset 1
	note_type 6, 12, 2
	rest 4
Music_AlolaWildBattle_Ch2_loop_1:
	octave 5
	note E_, 1
	note F_, 1
	note Fs, 1
	note G_, 1
	sound_loop 8, Music_AlolaWildBattle_Ch2_loop_1
	octave 4
	note C_, 6
	octave 3
	note B_, 6
	octave 4
	note C_, 4
	note C_, 8
	volume_envelope 12, 7
	octave 3
	note F_, 8
	volume_envelope 12, 2
	octave 4
	note Cs, 6
	note C_, 6
	note Cs, 4
	note Cs, 8
	volume_envelope 12, 7
	note Cs, 4
	octave 3
	volume_envelope 12, 2
	note Gs, 1
	note A_, 1
Music_AlolaWildBattle_Ch2_loop_main:
	octave 3
	volume_envelope 12, 2
	note As, 1
	note B_, 1
	octave 4
	note C_, 6
	note F_, 6
	volume_envelope 12, 4
	note As, 4
	volume_envelope 12, 2
	note A_, 6
	note G_, 6
	volume_envelope 12, 4
	note F_, 4
	duty_cycle 0
	volume_envelope 10, 4
	note G_, 4
	note F_, 2
	note G_, 4
	note F_, 2
	volume_envelope 10, 7
	note Ds, 4
	note As, 2
	note A_, 2
	note G_, 2
	note F_, 6
	duty_cycle 3
	volume_envelope 12, 2
	note E_, 4
	note A_, 2
	note F_, 4
	note F_, 6
	note F_, 2
	note G_, 2
	note A_, 6
	octave 5
	note C_, 6
	octave 4
	note A_, 4
	volume_envelope 12, 7
	note As, 8
	octave 5
	volume_envelope 10, 1
	note Ds, 1
	octave 6
	note Ds, 1
	octave 5
	note D_, 1
	octave 6
	note D_, 1
	octave 5
	note C_, 1
	octave 6
	note C_, 1
	octave 4
	note As, 1
	octave 5
	note As, 1
	note G_, 1
	octave 6
	note G_, 1
	octave 5
	note F_, 1
	octave 6
	note F_, 1
	octave 5
	note Ds, 1
	octave 6
	note Ds, 1
	octave 4
	note As, 1
	octave 5
	note As, 1
	octave 4
	volume_envelope 7, 1
	note As, 1
	octave 5
	note As, 1
	volume_envelope 12, 2
	octave 4
	note F_, 4
	note G_, 2
	volume_envelope 12, 5
	note A_, 6
	volume_envelope 12, 2
	note F_, 4
	note F_, 4
	note A_, 2
	volume_envelope 12, 7
	note As, 6
	note A_, 6
	note G_, 2
	octave 5
	volume_envelope 12, 2
	note C_, 1
	note D_, 1
	note Ds, 6
	octave 4
	note As, 4
	note As, 4
	octave 5
	note D_, 2
	note Ds, 2
	note D_, 2
	note C_, 2
	note D_, 4
	note D_, 2
	note C_, 4
	volume_envelope 12, 0
	note D_, 8
	volume_envelope 12, 4
	note D_, 8
	note Ds, 8
	note F_, 8
	note Ds, 8
	note D_, 8
	note C_, 8
	octave 4
	note As, 8
	note A_, 1
	note As, 1
	note G_, 1
	volume_envelope 12, 0
	note A_, 6
	volume_envelope 12, 4
	note A_, 10
	rest 13
	note Fs, 1
	note G_, 1
	note E_, 1
	volume_envelope 12, 0
	note Fs, 6
	volume_envelope 12, 4
	note Fs, 10
	rest 11
	note_type 3, 12, 1
	octave 3
	note As, 1
	note B_, 1
	octave 4
	note C_, 1
	note D_, 1
	note_type 6, 12, 7
	note Ds, 8
	note F_, 8
	note G_, 8
	note As, 8
	note F_, 8
	note G_, 8
	note A_, 8
	note B_, 2
	volume_envelope 12, 2
	octave 5
	note C_, 4
	volume_envelope 12, 0
	octave 4
	note B_, 16
	volume_envelope 12, 7
	note B_, 16
	volume_envelope 6, 0
	octave 5
	note Ds, 2
	note E_, 16
	note E_, 16
	octave 4
	volume_envelope 12, 2
	note A_, 2
	note Gs, 4
	note A_, 4
	note A_, 4
	note Gs, 2
	note A_, 2
	note F_, 4
	octave 5
	volume_envelope 12, 7
	note C_, 10
	octave 4
	volume_envelope 12, 2
	note B_, 4
	note As, 2
	note B_, 4
	note B_, 4
	note As, 2
	note B_, 2
	note G_, 4
	octave 5
	volume_envelope 12, 7
	note D_, 10
	volume_envelope 12, 0
	note Cs, 16
	volume_envelope 12, 7
	note Cs, 16
	volume_envelope 8, 0
	octave 4
	note A_, 16
	volume_envelope 8, 7
	note A_, 16
	rest 16
	rest 16
	rest 16
	rest 14
	sound_loop 0, Music_AlolaWildBattle_Ch2_loop_main
	
gbs_Music_AlolaWildBattle_Ch3:
	gbs_switch 2
Music_AlolaWildBattle_Ch3:
	note_type 3, 1, 9
	octave 3
	note C_, 8
	octave 2
	note C_, 4
	note Gs, 4
	rest 4
	note G_, 4
	rest 4
	note Fs, 4
	rest 4
	note F_, 4
	rest 4
	note E_, 4
	rest 4
	note Ds, 4
	rest 4
	note D_, 4
	rest 4
	note Cs, 4
	octave 3
	note C_, 4
	note F_, 4
	note Fs, 4
	note F_, 4
	note C_, 4
	note F_, 4
	note F_, 4
	note Fs, 4
	note C_, 4
	note F_, 4
	note G_, 4
	note F_, 4
	note C_, 4
	note G_, 3
	rest 1
	note G_, 4
	note F_, 4
	note Cs, 4
	note Fs, 4
	note G_, 4
	note Fs, 4
	note Cs, 4
	note Fs, 4
	note Fs, 4
	note G_, 4
	note Cs, 4
	note Fs, 4
	note Gs, 4
	note Fs, 4
	note Cs, 4
	note Fs, 3
	rest 1
	note Fs, 4
	note F_, 4
Music_AlolaWildBattle_Ch3_loop_main:
	octave 2
	note C_, 4
	rest 4
	note F_, 4
	rest 4
	note C_, 3
	rest 1
	note C_, 4
	note F_, 4
	note C_, 4
	rest 4
	note F_, 4
	rest 4
	note C_, 4
	note F_, 8
	note G_, 8
	note Ds, 3
	rest 1
	note Ds, 4
	octave 3
	note Ds, 4
	octave 2
	note Ds, 3
	rest 1
	note Ds, 3
	rest 1
	note Ds, 4
	note F_, 4
	rest 4
	note Ds, 3
	rest 1
	note Ds, 4
	rest 4
	note Ds, 1
	rest 1
	note Ds, 1
	rest 1
	note Ds, 3
	rest 1
	note Ds, 4
	note E_, 3
	rest 1
	note E_, 4
	note A_, 4
	note F_, 4
	rest 4
	note F_, 3
	rest 1
	note F_, 4
	octave 3
	note F_, 4
	octave 2
	note F_, 3
	rest 1
	note F_, 3
	rest 1
	note F_, 4
	rest 4
	octave 3
	note F_, 4
	octave 2
	note F_, 4
	rest 4
	octave 3
	note F_, 4
	octave 2
	note F_, 4
	octave 3
	note F_, 4
	octave 2
	note Ds, 4
	rest 4
	octave 1
	note Ds, 4
	rest 4
	note As, 3
	rest 1
	note As, 4
	rest 8
	octave 2
	note Ds, 4
	octave 1
	note As, 4
	rest 4
	note As, 4
	rest 4
	octave 2
	note C_, 4
	octave 1
	note B_, 4
	rest 4
	octave 2
	note C_, 4
	note F_, 4
	note C_, 4
	note F_, 4
	note C_, 4
	note A_, 4
	note G_, 4
	note F_, 4
	note C_, 4
	note A_, 4
	note C_, 4
	note F_, 4
	note C_, 4
	note F_, 4
	note Ds, 4
	note C_, 4
	octave 1
	note As, 4
	octave 2
	note Ds, 4
	octave 1
	note As, 4
	octave 2
	note Ds, 4
	octave 1
	note As, 4
	octave 2
	note F_, 4
	note Ds, 4
	note C_, 4
	octave 1
	note As, 4
	octave 2
	note As, 4
	octave 1
	note A_, 4
	octave 2
	note A_, 4
	octave 1
	note G_, 4
	octave 2
	note G_, 4
	octave 1
	note Fs, 4
	octave 2
	note Fs, 4
	note C_, 3
	rest 1
	note C_, 4
	note F_, 8
	note Ds, 8
	note C_, 8
	octave 1
	note A_, 8
	note F_, 8
	octave 2
	note F_, 8
	octave 1
	note F_, 8
	octave 2
	note Ds, 3
	rest 1
	note Ds, 4
	octave 3
	note Ds, 8
	octave 2
	note Ds, 3
	rest 1
	note Ds, 4
	octave 3
	note Ds, 8
	octave 2
	note Ds, 4
	note F_, 4
	note G_, 4
	note Ds, 3
	rest 1
	note Ds, 4
	note As, 4
	note A_, 4
	note G_, 4
Music_AlolaWildBattle_Ch3_loop_1:
	octave 1
	note D_, 4
	octave 2
	note D_, 4
	sound_loop 12, Music_AlolaWildBattle_Ch3_loop_1
	octave 1
	note D_, 4
	octave 2
	note A_, 4
	note G_, 4
	note Fs, 4
	note G_, 4
	note Fs, 4
	note D_, 8
	octave 1
	note As, 6
	octave 2
	note F_, 2
	note G_, 4
	octave 1
	note As, 3
	rest 1
	note As, 4
	octave 2
	note G_, 4
	rest 4
	octave 1
	note As, 3
	rest 1
	note As, 4
	octave 2
	note Ds, 4
	note G_, 3
	rest 1
	note G_, 4
	octave 1
	note As, 4
	octave 2
	note As, 4
	note A_, 4
	note G_, 4
	note C_, 6
	note G_, 2
	note A_, 4
	note C_, 4
	note C_, 4
	note A_, 8
	note C_, 4
	note C_, 4
	note F_, 4
	note A_, 4
	note A_, 4
	note C_, 4
	octave 3
	note C_, 4
	octave 2
	note B_, 4
	note A_, 4
Music_AlolaWildBattle_Ch3_loop_2:
	octave 1
	note B_, 4
	octave 2
	note E_, 4
	sound_loop 16, Music_AlolaWildBattle_Ch3_loop_2
	note C_, 4
	note F_, 4
	note C_, 4
	note F_, 4
	note C_, 4
	note F_, 4
	note C_, 4
	note F_, 4
	note C_, 4
	octave 3
	note C_, 4
	octave 2
	note As, 4
	note A_, 4
	note As, 4
	note A_, 4
	note G_, 4
	note F_, 4
	note D_, 4
	note G_, 4
	note D_, 4
	note G_, 4
	note D_, 4
	note G_, 4
	note D_, 4
	note G_, 4
	note D_, 4
	note G_, 4
	octave 3
	note D_, 4
	octave 2
	note B_, 4
	octave 3
	note D_, 4
	octave 2
	note B_, 4
	note G_, 4
	note D_, 4
	note E_, 8
	rest 4
	note E_, 4
	note A_, 8
	rest 4
	note A_, 4
	note E_, 8
	rest 4
	note E_, 4
	note A_, 8
	rest 4
	note A_, 4
	note E_, 4
	note A_, 4
	note E_, 4
	note A_, 4
	note E_, 4
	note A_, 4
	note E_, 4
	note A_, 4
	note E_, 4
	note A_, 4
	note E_, 4
	note A_, 4
	note E_, 4
	note A_, 8
	note E_, 4	
Music_AlolaWildBattle_Ch3_loop_3:
	note C_, 4
	note F_, 4
	sound_loop 12, Music_AlolaWildBattle_Ch3_loop_3
	note C_, 4
	octave 3
	note C_, 4
	octave 2
	note As, 4
	note A_, 4
	note F_, 4
	note G_, 4
	note C_, 8
	sound_loop 0, Music_AlolaWildBattle_Ch3_loop_main
	
gbs_Music_AlolaWildBattle_Ch4:
	gbs_switch 3
Music_AlolaWildBattle_Ch4:
	toggle_noise 3
	drum_speed 6
	drum_note 12, 4
	drum_note 4, 4
	drum_note 4, 4
	drum_note 4, 4
	drum_note 4, 4
	drum_note 4, 4
	drum_note 4, 4
	drum_note 4, 4
	drum_note 4, 4
	drum_note 4, 4
	drum_note 3, 2
	drum_note 3, 2
	drum_note 4, 4
	drum_note 3, 2
	drum_note 3, 2
	drum_note 4, 4
	drum_note 3, 2
	drum_note 3, 2
	drum_note 4, 2
	drum_note 3, 4
	drum_note 3, 2
	drum_note 4, 4
	drum_note 3, 2
	drum_note 3, 2
	drum_note 4, 4
	drum_note 3, 2
	drum_note 3, 2
	drum_note 4, 4
	drum_note 3, 2
	drum_note 3, 2
	drum_note 4, 2
	drum_note 1, 2
	drum_note 3, 2
	drum_note 1, 2
Music_AlolaWildBattle_Ch4_loop_main:
	drum_note 11, 4
	drum_note 1, 4
	drum_note 11, 2
	drum_note 11, 2
	drum_note 1, 4
	drum_note 11, 2
	drum_note 11, 4
	drum_note 1, 2
	drum_note 11, 4
	drum_note 1, 2
	drum_note 1, 2
	drum_note 11, 4
	drum_note 1, 4
	drum_note 11, 2
	drum_note 11, 2
	drum_note 1, 4
	drum_note 11, 2
	drum_note 11, 2
	drum_note 1, 2
	drum_note 4, 1
	drum_note 4, 1
	drum_note 11, 2
	drum_note 11, 2
	drum_note 1, 2
	drum_note 4, 1
	drum_note 1, 1
	drum_note 1, 2
	drum_note 4, 2
	drum_note 1, 3
	drum_note 1, 1
	drum_note 1, 2
	drum_note 1, 2
	drum_note 4, 2
	drum_note 4, 2
	drum_note 4, 2
	drum_note 4, 2
	drum_note 4, 2
	drum_note 1, 4
	drum_note 4, 2
	drum_note 1, 2
	drum_note 4, 1
	drum_note 4, 1
	drum_note 11, 4
	drum_note 1, 4
	drum_note 11, 2
	drum_note 11, 2
	drum_note 1, 4
	drum_note 11, 2
	drum_note 11, 2
	drum_note 1, 2
	drum_note 11, 4
	drum_note 11, 2
	drum_note 1, 2
	drum_note 1, 1
	drum_note 1, 1
	drum_note 4, 4
	drum_note 1, 4
	drum_note 4, 2
	drum_note 4, 2
	drum_note 4, 2
	drum_note 1, 2
	drum_note 4, 2
	drum_note 1, 2
	drum_note 4, 2
	drum_note 1, 2
	drum_note 4, 2
	drum_note 1, 2
	drum_note 4, 2
	drum_note 1, 2
	drum_note 4, 4
	drum_note 1, 4
	drum_note 4, 2
	drum_note 1, 2
	drum_note 4, 2
	drum_note 1, 2
	drum_note 4, 2
	drum_note 1, 2
	drum_note 4, 2
	drum_note 1, 2
	drum_note 4, 2
	drum_note 1, 2
	drum_note 1, 4
	drum_note 4, 2
	drum_note 11, 6
	drum_note 1, 2
	drum_note 4, 4
	drum_note 4, 2
	drum_note 4, 2
	drum_note 1, 4
	drum_note 4, 1
	drum_note 4, 1
	drum_note 12, 4
	drum_note 4, 2
	drum_note 4, 2
	drum_note 4, 2
	drum_note 4, 2
	drum_note 1, 2
	drum_note 4, 2
	drum_note 4, 2
	drum_note 4, 2
	drum_note 1, 2
	drum_note 4, 2
	drum_note 4, 2
	drum_note 4, 2
	drum_note 1, 2
	drum_note 4, 1
	drum_note 4, 1
	drum_note 4, 2
	drum_note 12, 4
	drum_note 4, 2
	sound_call Music_AlolaWildBattle_Ch4_branch_1
	drum_note 4, 2
	sound_call Music_AlolaWildBattle_Ch4_branch_1
	drum_note 1, 1
	drum_note 1, 1
	drum_note 4, 3
	drum_note 4, 1
	drum_note 1, 4
	drum_note 4, 2
	drum_note 4, 4
	drum_note 1, 2
	drum_note 4, 3
	drum_note 4, 1
	drum_note 1, 4
	drum_note 4, 2
	drum_note 4, 2
	drum_note 1, 3
	drum_note 1, 1
	drum_note 4, 3
	drum_note 4, 1
	drum_note 1, 4
	drum_note 4, 2
	drum_note 4, 4
	drum_note 1, 2
	drum_note 4, 3
	drum_note 4, 1
	drum_note 1, 4
	drum_note 4, 2
	drum_note 1, 2
	drum_note 1, 2
	drum_note 1, 2
	drum_note 4, 4
	drum_note 1, 4
	drum_note 4, 2
	drum_note 4, 2
	drum_note 1, 4
	drum_note 4, 4
	drum_note 1, 4
	drum_note 4, 2
	drum_note 4, 2
	drum_note 1, 4
	drum_note 4, 4
	drum_note 1, 4
	drum_note 4, 2
	drum_note 4, 2
	drum_note 1, 4
	drum_note 4, 2
	drum_note 1, 4
	drum_note 4, 2
	drum_note 1, 4
	drum_note 1, 2
	drum_note 1, 2
	drum_note 4, 8
	drum_note 4, 2
	drum_note 4, 6
	drum_note 4, 6
	drum_note 4, 4
	drum_note 4, 2
	drum_note 1, 2
	drum_note 1, 1
	drum_note 1, 1
	drum_note 4, 4
	drum_note 4, 2
	drum_note 1, 4
	drum_note 1, 4
	drum_note 1, 2
	drum_note 4, 4
	drum_note 1, 1
	drum_note 1, 1
	drum_note 3, 4
	drum_note 4, 2
	drum_note 1, 2
	drum_note 1, 1
	drum_note 1, 1
	drum_note 4, 4
	drum_note 1, 4
	drum_note 4, 2
	drum_note 4, 2
	drum_note 1, 4
	drum_note 4, 4
	drum_note 1, 4
	drum_note 4, 2
	drum_note 4, 2
	drum_note 1, 4
	drum_note 4, 4
	drum_note 1, 4
	drum_note 4, 2
	drum_note 4, 2
	drum_note 1, 4
	drum_note 4, 4
	drum_note 1, 4
	drum_note 4, 2
	drum_note 1, 2
	drum_note 1, 2
	drum_note 1, 2
	drum_note 4, 4
	drum_note 1, 4
	drum_note 4, 2
	drum_note 4, 2
	drum_note 1, 4
	drum_note 4, 4
	drum_note 1, 4
	drum_note 4, 2
	drum_note 1, 4
	drum_note 1, 2
	drum_note 4, 4
	drum_note 1, 2
	drum_note 1, 2
	drum_note 4, 4
	drum_note 1, 4
	drum_note 4, 4
	drum_note 1, 4
	drum_note 4, 2
	drum_note 1, 4
	drum_note 1, 2
	sound_loop 0, Music_AlolaWildBattle_Ch4_loop_main
	
Music_AlolaWildBattle_Ch4_branch_1:
	drum_note 4, 4
	drum_note 1, 4
	drum_note 4, 2
	drum_note 4, 2
	drum_note 1, 4
	drum_note 4, 2
	drum_note 4, 2
	drum_note 1, 2
	drum_note 4, 4
	drum_note 4, 2
	drum_note 1, 2
	sound_ret

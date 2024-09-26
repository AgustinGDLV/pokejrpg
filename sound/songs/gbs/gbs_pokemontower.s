	.include "asm/macros.inc"

	.section .rodata
	.global gbs_Music_PokemonTower
	.align 2

gbs_Music_PokemonTower:
	channel_count 3
	channel 1, Music_PokemonTower_Ch1
	channel 2, Music_PokemonTower_Ch2
	channel 3, Music_PokemonTower_Ch3

gbs_Music_PokemonTower_Ch1:
	gbs_switch 0
Music_PokemonTower_Ch1:
	tempo 152
	volume 7, 7
	duty_cycle 3
	pitch_offset 1
	vibrato 12, 2, 3
	note_type 12, 8, 0
	rest 4
	octave 4
	note B_, 12

Music_PokemonTower_branch_7f05a:
	note_type 12, 11, 4
	octave 4
	note G_, 1
	rest 7
	note G_, 1
	rest 7
	octave 3
	note B_, 1
	rest 7
	note B_, 1
	rest 3
	note B_, 1
	rest 3
	note B_, 1
	rest 7
	note B_, 1
	rest 7
	note B_, 1
	rest 7
	octave 4
	note Fs, 1
	rest 7
	note C_, 1
	octave 3
	note B_, 1
	note G_, 1
	rest 5
	note E_, 1
	rest 7
	note E_, 1
	rest 7
	note Fs, 1
	rest 7
	note E_, 1
	rest 7
	note G_, 1
	rest 7
	note G_, 1
	rest 7
	note Fs, 1
	rest 7
	note Fs, 1
	rest 7
	note G_, 1
	rest 7
	note E_, 1
	rest 7
	note D_, 1
	rest 7
	note E_, 1
	rest 7
	note G_, 1
	rest 7
	note G_, 1
	rest 7
	note Fs, 1
	rest 7
	note B_, 1
	rest 7
	note B_, 1
	rest 7
	octave 4
	note C_, 1
	rest 7
	note C_, 1
	rest 7
	note Cs, 1
	rest 7
	note Cs, 1
	rest 7
	note C_, 1
	rest 7
	note C_, 1
	rest 3
	note_type 12, 8, 4
	note C_, 1
	rest 3
	note_type 12, 11, 4
	note D_, 1
	rest 7
	note D_, 1
	rest 7
	octave 3
	note A_, 1
	rest 7
	note A_, 1
	rest 7
	note_type 12, 10, 7
	note B_, 8
	note B_, 8
	octave 4
	note C_, 8
	note C_, 8
	note Cs, 8
	note Cs, 8
	note_type 12, 10, 6
	note D_, 16
	rest 16
	rest 16
	rest 16
	rest 16
	note_type 12, 9, 2
	note B_, 4
	octave 5
	note E_, 4
	note D_, 4
	note C_, 4
	octave 4
	note B_, 4
	octave 5
	note E_, 4
	note D_, 4
	note C_, 4
	octave 4
	note B_, 4
	octave 5
	note E_, 4
	note D_, 4
	note C_, 4
	octave 4
	note B_, 4
	note G_, 4
	note Fs, 4
	note E_, 4
	octave 5
	note C_, 16
	note C_, 16
	sound_loop 0, Music_PokemonTower_branch_7f05a


gbs_Music_PokemonTower_Ch2:
	gbs_switch 1
Music_PokemonTower_Ch2:
	vibrato 20, 3, 4
	duty_cycle 3
	note_type 12, 10, 0
	octave 5
	note C_, 12
	octave 4
	note E_, 4

Music_PokemonTower_branch_7f0ee:
	note_type 12, 12, 1
	octave 5
	note C_, 8
	octave 4
	note B_, 4
	note_type 12, 12, 4
	note G_, 1
	note Fs, 1
	note E_, 1
	note Ds, 1
	note_type 12, 11, 0
	note G_, 8
	octave 5
	note C_, 8
	octave 4
	note B_, 4
	note G_, 4
	note E_, 4
	note G_, 4
	octave 5
	note C_, 8
	note_type 12, 11, 7
	note C_, 8
	note_type 12, 12, 2
	octave 4
	note G_, 1
	note Fs, 1
	note E_, 1
	rest 1
	note_type 12, 9, 6
	octave 3
	note G_, 4
	note_type 12, 12, 7
	note G_, 4
	note B_, 4
	note G_, 4
	note B_, 4
	octave 4
	note C_, 4
	octave 3
	note B_, 4
	note_type 12, 11, 0
	octave 4
	note C_, 16
	note E_, 8
	note_type 12, 11, 7
	note E_, 12
	note_type 12, 12, 5
	octave 5
	note C_, 4
	octave 4
	note B_, 4
	note G_, 4
	note B_, 4
	note G_, 4
	note Fs, 4
	note E_, 4
	note_type 12, 11, 0
	note Fs, 12
	note G_, 4
	note_type 12, 11, 0
	note Fs, 8
	note_type 12, 11, 7
	note Fs, 8
	note_type 12, 11, 0
	note B_, 4
	note G_, 4
	note Fs, 4
	note E_, 4
	note B_, 16
	note_type 12, 11, 0
	octave 5
	note C_, 4
	octave 4
	note G_, 4
	note Fs, 4
	note E_, 4
	note_type 12, 9, 0
	octave 5
	note C_, 16
	note_type 12, 11, 0
	note D_, 4
	octave 4
	note A_, 4
	note Gs, 4
	note Fs, 4
	note_type 12, 2, -7
	octave 5
	note D_, 16
	note_type 12, 12, 0
	note E_, 4
	octave 4
	note B_, 4
	note A_, 4
	note G_, 4
	octave 5
	note F_, 4
	note C_, 4
	octave 4
	note As, 4
	note Gs, 4
	octave 5
	note Fs, 4
	note D_, 4
	note C_, 4
	octave 4
	note As, 4
	note Gs, 4
	note Fs, 4
	note E_, 4
	note D_, 4
	note_type 12, 11, 0
	note C_, 8
	note_type 12, 9, 0
	note C_, 8
	note_type 12, 8, 0
	note C_, 8
	note_type 12, 7, 0
	note C_, 8
	note_type 12, 6, 0
	note C_, 8
	note_type 12, 6, 7
	note C_, 8
	rest 16
	note_type 12, 10, 0
	octave 5
	note G_, 16
	octave 6
	note C_, 16
	octave 5
	note B_, 8
	note G_, 8
	note E_, 8
	note G_, 8
	octave 6
	note C_, 16
	vibrato 0, 3, 4
	note_type 12, 10, 7
	note C_, 16
	sound_loop 0, Music_PokemonTower_branch_7f0ee


gbs_Music_PokemonTower_Ch3:
	gbs_switch 2
Music_PokemonTower_Ch3:
	vibrato 4, 1, 1
	note_type 12, 1, 3
	rest 8
	octave 5
	note G_, 8

Music_PokemonTower_branch_7f1a2:
	note E_, 1
	rest 7
	note E_, 1
	rest 7
	note E_, 1
	rest 7
	note E_, 1
	rest 3
	note E_, 1
	note Ds, 1
	note Fs, 1
	note Ds, 1
	note E_, 1
	rest 7
	note G_, 1
	rest 7
	note E_, 1
	rest 7
	note B_, 1
	rest 7
	note E_, 1
	note Ds, 1
	octave 4
	note B_, 1
	rest 5
	note B_, 1
	rest 7
	note B_, 1
	rest 7
	note B_, 1
	rest 7
	octave 5
	note C_, 1
	rest 7
	note C_, 1
	rest 7
	note C_, 1
	rest 7
	note C_, 1
	rest 7
	octave 4
	note B_, 1
	rest 7
	note B_, 1
	rest 7
	note B_, 1
	rest 7
	note B_, 1
	rest 7
	octave 5
	note C_, 1
	rest 7
	note C_, 1
	rest 7
	note C_, 1
	rest 7
	note C_, 1
	rest 7
	note E_, 1
	rest 7
	note E_, 1
	rest 7
	note E_, 1
	rest 7
	note E_, 1
	rest 7
	note E_, 1
	rest 7
	note E_, 1
	rest 7
	note E_, 1
	rest 7
	note E_, 1
	rest 3
	note G_, 1
	rest 3
	note Fs, 1
	rest 7
	note Fs, 1
	rest 7
	note D_, 1
	rest 7
	note D_, 1
	rest 3
	note D_, 1
	rest 1
	note Ds, 1
	rest 1
	note E_, 1
	rest 7
	note E_, 1
	rest 7
	note F_, 1
	rest 7
	note F_, 1
	rest 7
	note Fs, 1
	rest 7
	note Fs, 1
	rest 7
	note G_, 1
	rest 15
	note_type 12, 1, 11
	octave 4
	note Fs, 1
	rest 3
	note Fs, 1
	rest 3
	note G_, 1
	rest 3
	note Fs, 1
	rest 3
	note Fs, 1
	rest 15
	note Fs, 1
	rest 3
	note Fs, 1
	rest 3
	note G_, 1
	rest 3
	note Fs, 1
	rest 3
	note Fs, 1
	rest 7
	note_type 12, 1, 3
	octave 6
	note E_, 1
	rest 1
	note Ds, 1
	rest 1
	note Fs, 1
	rest 1
	note Ds, 1
	rest 1
	note E_, 1
	rest 15
	note E_, 1
	rest 15
	note E_, 1
	rest 15
	note E_, 1
	rest 15
	note E_, 1
	rest 15
	note E_, 1
	rest 7
	octave 5
	note E_, 1
	rest 1
	note Ds, 1
	rest 1
	note Fs, 1
	rest 1
	note Ds, 1
	rest 1
	sound_loop 0, Music_PokemonTower_branch_7f1a2

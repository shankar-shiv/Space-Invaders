; SMT-LIBv2 description generated by Yosys 0.8+143 (git sha1 c82aa49, clang 3.8.0-2ubuntu4 -fPIC -Os)
; yosys-smt2-module $paramod/timer_1us/PERIOD=100000
(declare-sort |$paramod/timer_1us/PERIOD=100000_s| 0)
(declare-fun |$paramod/timer_1us/PERIOD=100000_is| (|$paramod/timer_1us/PERIOD=100000_s|) Bool)
; yosys-smt2-output o_q 1
; yosys-smt2-register o_q 1
; yosys-smt2-wire o_q 1
(declare-fun |$paramod/timer_1us/PERIOD=100000#0| (|$paramod/timer_1us/PERIOD=100000_s|) (_ BitVec 1)) ; \o_q
(define-fun |$paramod/timer_1us/PERIOD=100000_n o_q| ((state |$paramod/timer_1us/PERIOD=100000_s|)) Bool (= ((_ extract 0 0) (|$paramod/timer_1us/PERIOD=100000#0| state)) #b1))
; yosys-smt2-input i_reset 1
; yosys-smt2-wire i_reset 1
(declare-fun |$paramod/timer_1us/PERIOD=100000#1| (|$paramod/timer_1us/PERIOD=100000_s|) Bool) ; \i_reset
(define-fun |$paramod/timer_1us/PERIOD=100000_n i_reset| ((state |$paramod/timer_1us/PERIOD=100000_s|)) Bool (|$paramod/timer_1us/PERIOD=100000#1| state))
; yosys-smt2-input i_clk_36MHz 1
; yosys-smt2-wire i_clk_36MHz 1
; yosys-smt2-clock i_clk_36MHz posedge
(declare-fun |$paramod/timer_1us/PERIOD=100000#2| (|$paramod/timer_1us/PERIOD=100000_s|) Bool) ; \i_clk_36MHz
(define-fun |$paramod/timer_1us/PERIOD=100000_n i_clk_36MHz| ((state |$paramod/timer_1us/PERIOD=100000_s|)) Bool (|$paramod/timer_1us/PERIOD=100000#2| state))
; yosys-smt2-register count 32
; yosys-smt2-wire count 32
(declare-fun |$paramod/timer_1us/PERIOD=100000#3| (|$paramod/timer_1us/PERIOD=100000_s|) (_ BitVec 32)) ; \count
(define-fun |$paramod/timer_1us/PERIOD=100000_n count| ((state |$paramod/timer_1us/PERIOD=100000_s|)) (_ BitVec 32) (|$paramod/timer_1us/PERIOD=100000#3| state))
(define-fun |$paramod/timer_1us/PERIOD=100000#4| ((state |$paramod/timer_1us/PERIOD=100000_s|)) (_ BitVec 32) (bvadd (|$paramod/timer_1us/PERIOD=100000#3| state) #b00000000000000000000000000000001)) ; $add$timer_1us.v:31$33_Y
(define-fun |$paramod/timer_1us/PERIOD=100000#5| ((state |$paramod/timer_1us/PERIOD=100000_s|)) Bool (= (|$paramod/timer_1us/PERIOD=100000#3| state) #b00000000001101101110111001111111)) ; $eq$timer_1us.v:26$32_Y
(define-fun |$paramod/timer_1us/PERIOD=100000#6| ((state |$paramod/timer_1us/PERIOD=100000_s|)) (_ BitVec 32) (ite (|$paramod/timer_1us/PERIOD=100000#5| state) #b00000000000000000000000000000000 (|$paramod/timer_1us/PERIOD=100000#4| state))) ; $procmux$36_Y
(define-fun |$paramod/timer_1us/PERIOD=100000#7| ((state |$paramod/timer_1us/PERIOD=100000_s|)) (_ BitVec 32) (ite (|$paramod/timer_1us/PERIOD=100000#1| state) (|$paramod/timer_1us/PERIOD=100000#6| state) #b00000000000000000000000000000000)) ; $0\count[31:0]
(define-fun |$paramod/timer_1us/PERIOD=100000#8| ((state |$paramod/timer_1us/PERIOD=100000_s|)) (_ BitVec 1) (ite (|$paramod/timer_1us/PERIOD=100000#5| state) #b1 #b0)) ; $procmux$42_Y
(define-fun |$paramod/timer_1us/PERIOD=100000#9| ((state |$paramod/timer_1us/PERIOD=100000_s|)) (_ BitVec 1) (ite (|$paramod/timer_1us/PERIOD=100000#1| state) (|$paramod/timer_1us/PERIOD=100000#8| state) #b0)) ; $0\o_q[0:0]
(define-fun |$paramod/timer_1us/PERIOD=100000_a| ((state |$paramod/timer_1us/PERIOD=100000_s|)) Bool true)
(define-fun |$paramod/timer_1us/PERIOD=100000_u| ((state |$paramod/timer_1us/PERIOD=100000_s|)) Bool true)
(define-fun |$paramod/timer_1us/PERIOD=100000_i| ((state |$paramod/timer_1us/PERIOD=100000_s|)) Bool (and
  (= (= ((_ extract 0 0) (|$paramod/timer_1us/PERIOD=100000#0| state)) #b1) false) ; o_q
  (= (|$paramod/timer_1us/PERIOD=100000#3| state) #b00000000000000000000000000000000) ; count
))
(define-fun |$paramod/timer_1us/PERIOD=100000_h| ((state |$paramod/timer_1us/PERIOD=100000_s|)) Bool true)
(define-fun |$paramod/timer_1us/PERIOD=100000_t| ((state |$paramod/timer_1us/PERIOD=100000_s|) (next_state |$paramod/timer_1us/PERIOD=100000_s|)) Bool (and
  (= (|$paramod/timer_1us/PERIOD=100000#7| state) (|$paramod/timer_1us/PERIOD=100000#3| next_state)) ; $procdff$796 \count
  (= (|$paramod/timer_1us/PERIOD=100000#9| state) (|$paramod/timer_1us/PERIOD=100000#0| next_state)) ; $procdff$795 \o_q
)) ; end of module $paramod/timer_1us/PERIOD=100000
; yosys-smt2-module invaders
(declare-sort |invaders_s| 0)
(declare-fun |invaders_is| (|invaders_s|) Bool)
; yosys-smt2-wire tick 1
; yosys-smt2-cell $paramod/timer_1us/PERIOD=100000 speed_timer1
(declare-fun |invaders#0| (|invaders_s|) Bool) ; \tick
(declare-fun |invaders_h speed_timer1| (|invaders_s|) |$paramod/timer_1us/PERIOD=100000_s|)
(define-fun |invaders_n tick| ((state |invaders_s|)) Bool (|invaders#0| state))
; yosys-smt2-output o_invaders_row 4
; yosys-smt2-register o_invaders_row 4
; yosys-smt2-wire o_invaders_row 4
(declare-fun |invaders#1| (|invaders_s|) (_ BitVec 4)) ; \o_invaders_row
(define-fun |invaders_n o_invaders_row| ((state |invaders_s|)) (_ BitVec 4) (|invaders#1| state))
; yosys-smt2-output o_invaders_array 20
; yosys-smt2-register o_invaders_array 20
; yosys-smt2-wire o_invaders_array 20
(declare-fun |invaders#2| (|invaders_s|) (_ BitVec 20)) ; \o_invaders_array
(define-fun |invaders_n o_invaders_array| ((state |invaders_s|)) (_ BitVec 20) (|invaders#2| state))
; yosys-smt2-output o_hit 1
; yosys-smt2-register o_hit 1
; yosys-smt2-wire o_hit 1
(declare-fun |invaders#3| (|invaders_s|) (_ BitVec 1)) ; \o_hit
(define-fun |invaders_n o_hit| ((state |invaders_s|)) Bool (= ((_ extract 0 0) (|invaders#3| state)) #b1))
; yosys-smt2-input i_reset 1
; yosys-smt2-wire i_reset 1
(declare-fun |invaders#4| (|invaders_s|) Bool) ; \i_reset
(define-fun |invaders_n i_reset| ((state |invaders_s|)) Bool (|invaders#4| state))
; yosys-smt2-input i_clk_36MHz 1
; yosys-smt2-wire i_clk_36MHz 1
; yosys-smt2-clock i_clk_36MHz posedge
(declare-fun |invaders#5| (|invaders_s|) Bool) ; \i_clk_36MHz
(define-fun |invaders_n i_clk_36MHz| ((state |invaders_s|)) Bool (|invaders#5| state))
; yosys-smt2-input i_bullet_y 4
; yosys-smt2-wire i_bullet_y 4
(declare-fun |invaders#6| (|invaders_s|) (_ BitVec 4)) ; \i_bullet_y
(define-fun |invaders_n i_bullet_y| ((state |invaders_s|)) (_ BitVec 4) (|invaders#6| state))
; yosys-smt2-input i_bullet_x 5
; yosys-smt2-wire i_bullet_x 5
(declare-fun |invaders#7| (|invaders_s|) (_ BitVec 5)) ; \i_bullet_x
(define-fun |invaders_n i_bullet_x| ((state |invaders_s|)) (_ BitVec 5) (|invaders#7| state))
; yosys-smt2-register direction 1
; yosys-smt2-wire direction 1
(declare-fun |invaders#8| (|invaders_s|) (_ BitVec 1)) ; \direction
(define-fun |invaders_n direction| ((state |invaders_s|)) Bool (= ((_ extract 0 0) (|invaders#8| state)) #b1))
(define-fun |invaders#9| ((state |invaders_s|)) Bool (= (|invaders#1| state) #b0001)) ; $0$formal$invaders.v:97$1_CHECK[0:0]$20
; yosys-smt2-assert 0 invaders.v:97
(define-fun |invaders_a 0| ((state |invaders_s|)) Bool (or (|invaders#9| state) (not true))) ; $assert$invaders.v:97$23
(define-fun |invaders#10| ((state |invaders_s|)) (_ BitVec 1) (ite (= ((_ extract 0 0) (|invaders#2| state)) #b1) #b0 #b1)) ; $procmux$727_Y
(define-fun |invaders#11| ((state |invaders_s|)) (_ BitVec 1) (ite (= ((_ extract 0 0) (|invaders#8| state)) #b1) (|invaders#10| state) #b0)) ; $procmux$729_Y
(define-fun |invaders#12| ((state |invaders_s|)) (_ BitVec 1) (ite (|invaders#0| state) (|invaders#11| state) (|invaders#8| state))) ; $procmux$731_Y
(define-fun |invaders#13| ((state |invaders_s|)) (_ BitVec 5) (bvadd (concat #b0 (|invaders#1| state)) #b00001)) ; $add$invaders.v:45$4_Y
(define-fun |invaders#14| ((state |invaders_s|)) Bool (= (concat #b0 (|invaders#6| state)) (|invaders#13| state))) ; $eq$invaders.v:45$5_Y
(define-fun |invaders#15| ((state |invaders_s|)) (_ BitVec 1) ((_ extract 0 0) (bvlshr (|invaders#2| state) (concat #b000000000000000 (|invaders#7| state))))) ; $eq$invaders.v:45$7_Y
(define-fun |invaders#16| ((state |invaders_s|)) Bool (and (or  (|invaders#14| state) false) (or  (= ((_ extract 0 0) (|invaders#15| state)) #b1) false))) ; $logic_and$invaders.v:45$8_Y
(define-fun |invaders#17| ((state |invaders_s|)) (_ BitVec 1) (ite (|invaders#16| state) (|invaders#8| state) (|invaders#12| state))) ; $procmux$734_Y
(define-fun |invaders#18| ((state |invaders_s|)) (_ BitVec 1) (ite (|invaders#4| state) #b0 (|invaders#17| state))) ; $0\direction[0:0]
(define-fun |invaders#19| ((state |invaders_s|)) (_ BitVec 1) (ite (= ((_ extract 0 0) (|invaders#8| state)) #b1) (|invaders#3| state) #b0)) ; $procmux$785_Y
(define-fun |invaders#20| ((state |invaders_s|)) (_ BitVec 1) (ite (|invaders#0| state) (|invaders#19| state) #b0)) ; $procmux$787_Y
(define-fun |invaders#21| ((state |invaders_s|)) (_ BitVec 1) (ite (|invaders#16| state) #b1 (|invaders#20| state))) ; $procmux$790_Y
(define-fun |invaders#22| ((state |invaders_s|)) (_ BitVec 1) (ite (|invaders#4| state) #b0 (|invaders#21| state))) ; $0\o_hit[0:0]
(define-fun |invaders#23| ((state |invaders_s|)) (_ BitVec 1) (ite (= ((_ extract 0 0) (|invaders#2| state)) #b1) #b1 ((_ extract 1 1) (|invaders#2| state)))) ; $procmux$549_Y
(define-fun |invaders#24| ((state |invaders_s|)) (_ BitVec 1) (ite (= ((_ extract 0 0) (|invaders#8| state)) #b1) (|invaders#23| state) ((_ extract 0 0) (|invaders#2| state)))) ; $procmux$551_Y
(define-fun |invaders#25| ((state |invaders_s|)) (_ BitVec 1) (ite (|invaders#0| state) (|invaders#24| state) ((_ extract 0 0) (|invaders#2| state)))) ; $procmux$553_Y
(define-fun |invaders#26| ((state |invaders_s|)) Bool (not (or  (= ((_ extract 0 0) (|invaders#7| state)) #b1) (= ((_ extract 1 1) (|invaders#7| state)) #b1) (= ((_ extract 2 2) (|invaders#7| state)) #b1) (= ((_ extract 3 3) (|invaders#7| state)) #b1) (= ((_ extract 4 4) (|invaders#7| state)) #b1)))) ; $procmux$576_CMP
(define-fun |invaders#27| ((state |invaders_s|)) (_ BitVec 1) (ite (|invaders#26| state) #b0 ((_ extract 0 0) (|invaders#2| state)))) ; $procmux$575_Y
(define-fun |invaders#28| ((state |invaders_s|)) (_ BitVec 1) (ite (|invaders#16| state) (|invaders#27| state) (|invaders#25| state))) ; $procmux$577_Y
(define-fun |invaders#29| ((state |invaders_s|)) (_ BitVec 1) (ite (|invaders#4| state) #b1 (|invaders#28| state))) ; $0\o_invaders_array[19:0] [0]
(define-fun |invaders#30| ((state |invaders_s|)) (_ BitVec 1) (ite (= ((_ extract 0 0) (|invaders#2| state)) #b1) ((_ extract 1 1) (|invaders#2| state)) ((_ extract 2 2) (|invaders#2| state)))) ; $procmux$507_Y
(define-fun |invaders#31| ((state |invaders_s|)) (_ BitVec 1) (ite (= ((_ extract 0 0) (|invaders#8| state)) #b1) (|invaders#30| state) ((_ extract 1 1) (|invaders#2| state)))) ; $procmux$509_Y
(define-fun |invaders#32| ((state |invaders_s|)) (_ BitVec 1) (ite (|invaders#0| state) (|invaders#31| state) ((_ extract 1 1) (|invaders#2| state)))) ; $procmux$511_Y
(define-fun |invaders#33| ((state |invaders_s|)) Bool (= (|invaders#7| state) #b00001)) ; $procmux$533_CMP
(define-fun |invaders#34| ((state |invaders_s|)) (_ BitVec 1) (ite (|invaders#33| state) #b0 ((_ extract 1 1) (|invaders#2| state)))) ; $procmux$532_Y
(define-fun |invaders#35| ((state |invaders_s|)) (_ BitVec 1) (ite (|invaders#16| state) (|invaders#34| state) (|invaders#32| state))) ; $procmux$534_Y
(define-fun |invaders#36| ((state |invaders_s|)) (_ BitVec 1) (ite (|invaders#4| state) #b1 (|invaders#35| state))) ; $0\o_invaders_array[19:0] [1]
(define-fun |invaders#37| ((state |invaders_s|)) (_ BitVec 1) (ite (= ((_ extract 0 0) (|invaders#2| state)) #b1) ((_ extract 2 2) (|invaders#2| state)) ((_ extract 3 3) (|invaders#2| state)))) ; $procmux$466_Y
(define-fun |invaders#38| ((state |invaders_s|)) (_ BitVec 1) (ite (= ((_ extract 0 0) (|invaders#8| state)) #b1) (|invaders#37| state) ((_ extract 2 2) (|invaders#2| state)))) ; $procmux$468_Y
(define-fun |invaders#39| ((state |invaders_s|)) (_ BitVec 1) (ite (|invaders#0| state) (|invaders#38| state) ((_ extract 2 2) (|invaders#2| state)))) ; $procmux$470_Y
(define-fun |invaders#40| ((state |invaders_s|)) Bool (= (|invaders#7| state) #b00010)) ; $procmux$491_CMP
(define-fun |invaders#41| ((state |invaders_s|)) (_ BitVec 1) (ite (|invaders#40| state) #b0 ((_ extract 2 2) (|invaders#2| state)))) ; $procmux$490_Y
(define-fun |invaders#42| ((state |invaders_s|)) (_ BitVec 1) (ite (|invaders#16| state) (|invaders#41| state) (|invaders#39| state))) ; $procmux$492_Y
(define-fun |invaders#43| ((state |invaders_s|)) (_ BitVec 1) (ite (|invaders#4| state) #b1 (|invaders#42| state))) ; $0\o_invaders_array[19:0] [2]
(define-fun |invaders#44| ((state |invaders_s|)) (_ BitVec 1) (ite (= ((_ extract 0 0) (|invaders#2| state)) #b1) ((_ extract 3 3) (|invaders#2| state)) ((_ extract 4 4) (|invaders#2| state)))) ; $procmux$426_Y
(define-fun |invaders#45| ((state |invaders_s|)) (_ BitVec 1) (ite (= ((_ extract 0 0) (|invaders#8| state)) #b1) (|invaders#44| state) ((_ extract 3 3) (|invaders#2| state)))) ; $procmux$428_Y
(define-fun |invaders#46| ((state |invaders_s|)) (_ BitVec 1) (ite (|invaders#0| state) (|invaders#45| state) ((_ extract 3 3) (|invaders#2| state)))) ; $procmux$430_Y
(define-fun |invaders#47| ((state |invaders_s|)) Bool (= (|invaders#7| state) #b00011)) ; $procmux$450_CMP
(define-fun |invaders#48| ((state |invaders_s|)) (_ BitVec 1) (ite (|invaders#47| state) #b0 ((_ extract 3 3) (|invaders#2| state)))) ; $procmux$449_Y
(define-fun |invaders#49| ((state |invaders_s|)) (_ BitVec 1) (ite (|invaders#16| state) (|invaders#48| state) (|invaders#46| state))) ; $procmux$451_Y
(define-fun |invaders#50| ((state |invaders_s|)) (_ BitVec 1) (ite (|invaders#4| state) #b1 (|invaders#49| state))) ; $0\o_invaders_array[19:0] [3]
(define-fun |invaders#51| ((state |invaders_s|)) (_ BitVec 1) (ite (= ((_ extract 0 0) (|invaders#2| state)) #b1) ((_ extract 4 4) (|invaders#2| state)) ((_ extract 5 5) (|invaders#2| state)))) ; $procmux$387_Y
(define-fun |invaders#52| ((state |invaders_s|)) (_ BitVec 1) (ite (= ((_ extract 0 0) (|invaders#8| state)) #b1) (|invaders#51| state) ((_ extract 4 4) (|invaders#2| state)))) ; $procmux$389_Y
(define-fun |invaders#53| ((state |invaders_s|)) (_ BitVec 1) (ite (|invaders#0| state) (|invaders#52| state) ((_ extract 4 4) (|invaders#2| state)))) ; $procmux$391_Y
(define-fun |invaders#54| ((state |invaders_s|)) Bool (= (|invaders#7| state) #b00100)) ; $procmux$410_CMP
(define-fun |invaders#55| ((state |invaders_s|)) (_ BitVec 1) (ite (|invaders#54| state) #b0 ((_ extract 4 4) (|invaders#2| state)))) ; $procmux$409_Y
(define-fun |invaders#56| ((state |invaders_s|)) (_ BitVec 1) (ite (|invaders#16| state) (|invaders#55| state) (|invaders#53| state))) ; $procmux$411_Y
(define-fun |invaders#57| ((state |invaders_s|)) (_ BitVec 1) (ite (|invaders#4| state) #b1 (|invaders#56| state))) ; $0\o_invaders_array[19:0] [4]
(define-fun |invaders#58| ((state |invaders_s|)) (_ BitVec 1) (ite (= ((_ extract 0 0) (|invaders#2| state)) #b1) ((_ extract 5 5) (|invaders#2| state)) ((_ extract 6 6) (|invaders#2| state)))) ; $procmux$349_Y
(define-fun |invaders#59| ((state |invaders_s|)) (_ BitVec 1) (ite (= ((_ extract 0 0) (|invaders#8| state)) #b1) (|invaders#58| state) ((_ extract 5 5) (|invaders#2| state)))) ; $procmux$351_Y
(define-fun |invaders#60| ((state |invaders_s|)) (_ BitVec 1) (ite (|invaders#0| state) (|invaders#59| state) ((_ extract 5 5) (|invaders#2| state)))) ; $procmux$353_Y
(define-fun |invaders#61| ((state |invaders_s|)) Bool (= (|invaders#7| state) #b00101)) ; $procmux$371_CMP
(define-fun |invaders#62| ((state |invaders_s|)) (_ BitVec 1) (ite (|invaders#61| state) #b0 ((_ extract 5 5) (|invaders#2| state)))) ; $procmux$370_Y
(define-fun |invaders#63| ((state |invaders_s|)) (_ BitVec 1) (ite (|invaders#16| state) (|invaders#62| state) (|invaders#60| state))) ; $procmux$372_Y
(define-fun |invaders#64| ((state |invaders_s|)) (_ BitVec 1) (ite (|invaders#4| state) #b1 (|invaders#63| state))) ; $0\o_invaders_array[19:0] [5]
(define-fun |invaders#65| ((state |invaders_s|)) (_ BitVec 1) (ite (= ((_ extract 0 0) (|invaders#2| state)) #b1) ((_ extract 6 6) (|invaders#2| state)) ((_ extract 7 7) (|invaders#2| state)))) ; $procmux$312_Y
(define-fun |invaders#66| ((state |invaders_s|)) (_ BitVec 1) (ite (= ((_ extract 0 0) (|invaders#8| state)) #b1) (|invaders#65| state) ((_ extract 6 6) (|invaders#2| state)))) ; $procmux$314_Y
(define-fun |invaders#67| ((state |invaders_s|)) (_ BitVec 1) (ite (|invaders#0| state) (|invaders#66| state) ((_ extract 6 6) (|invaders#2| state)))) ; $procmux$316_Y
(define-fun |invaders#68| ((state |invaders_s|)) Bool (= (|invaders#7| state) #b00110)) ; $procmux$333_CMP
(define-fun |invaders#69| ((state |invaders_s|)) (_ BitVec 1) (ite (|invaders#68| state) #b0 ((_ extract 6 6) (|invaders#2| state)))) ; $procmux$332_Y
(define-fun |invaders#70| ((state |invaders_s|)) (_ BitVec 1) (ite (|invaders#16| state) (|invaders#69| state) (|invaders#67| state))) ; $procmux$334_Y
(define-fun |invaders#71| ((state |invaders_s|)) (_ BitVec 1) (ite (|invaders#4| state) #b1 (|invaders#70| state))) ; $0\o_invaders_array[19:0] [6]
(define-fun |invaders#72| ((state |invaders_s|)) (_ BitVec 1) (ite (= ((_ extract 0 0) (|invaders#2| state)) #b1) ((_ extract 7 7) (|invaders#2| state)) ((_ extract 8 8) (|invaders#2| state)))) ; $procmux$276_Y
(define-fun |invaders#73| ((state |invaders_s|)) (_ BitVec 1) (ite (= ((_ extract 0 0) (|invaders#8| state)) #b1) (|invaders#72| state) ((_ extract 7 7) (|invaders#2| state)))) ; $procmux$278_Y
(define-fun |invaders#74| ((state |invaders_s|)) (_ BitVec 1) (ite (|invaders#0| state) (|invaders#73| state) ((_ extract 7 7) (|invaders#2| state)))) ; $procmux$280_Y
(define-fun |invaders#75| ((state |invaders_s|)) Bool (= (|invaders#7| state) #b00111)) ; $procmux$296_CMP
(define-fun |invaders#76| ((state |invaders_s|)) (_ BitVec 1) (ite (|invaders#75| state) #b0 ((_ extract 7 7) (|invaders#2| state)))) ; $procmux$295_Y
(define-fun |invaders#77| ((state |invaders_s|)) (_ BitVec 1) (ite (|invaders#16| state) (|invaders#76| state) (|invaders#74| state))) ; $procmux$297_Y
(define-fun |invaders#78| ((state |invaders_s|)) (_ BitVec 1) (ite (|invaders#4| state) #b1 (|invaders#77| state))) ; $0\o_invaders_array[19:0] [7]
(define-fun |invaders#79| ((state |invaders_s|)) (_ BitVec 1) (ite (= ((_ extract 0 0) (|invaders#2| state)) #b1) ((_ extract 8 8) (|invaders#2| state)) ((_ extract 9 9) (|invaders#2| state)))) ; $procmux$241_Y
(define-fun |invaders#80| ((state |invaders_s|)) (_ BitVec 1) (ite (= ((_ extract 0 0) (|invaders#8| state)) #b1) (|invaders#79| state) ((_ extract 8 8) (|invaders#2| state)))) ; $procmux$243_Y
(define-fun |invaders#81| ((state |invaders_s|)) (_ BitVec 1) (ite (|invaders#0| state) (|invaders#80| state) ((_ extract 8 8) (|invaders#2| state)))) ; $procmux$245_Y
(define-fun |invaders#82| ((state |invaders_s|)) Bool (= (|invaders#7| state) #b01000)) ; $procmux$260_CMP
(define-fun |invaders#83| ((state |invaders_s|)) (_ BitVec 1) (ite (|invaders#82| state) #b0 ((_ extract 8 8) (|invaders#2| state)))) ; $procmux$259_Y
(define-fun |invaders#84| ((state |invaders_s|)) (_ BitVec 1) (ite (|invaders#16| state) (|invaders#83| state) (|invaders#81| state))) ; $procmux$261_Y
(define-fun |invaders#85| ((state |invaders_s|)) (_ BitVec 1) (ite (|invaders#4| state) #b1 (|invaders#84| state))) ; $0\o_invaders_array[19:0] [8]
(define-fun |invaders#86| ((state |invaders_s|)) (_ BitVec 1) (ite (= ((_ extract 0 0) (|invaders#2| state)) #b1) ((_ extract 9 9) (|invaders#2| state)) ((_ extract 10 10) (|invaders#2| state)))) ; $procmux$207_Y
(define-fun |invaders#87| ((state |invaders_s|)) (_ BitVec 1) (ite (= ((_ extract 0 0) (|invaders#8| state)) #b1) (|invaders#86| state) ((_ extract 9 9) (|invaders#2| state)))) ; $procmux$209_Y
(define-fun |invaders#88| ((state |invaders_s|)) (_ BitVec 1) (ite (|invaders#0| state) (|invaders#87| state) ((_ extract 9 9) (|invaders#2| state)))) ; $procmux$211_Y
(define-fun |invaders#89| ((state |invaders_s|)) Bool (= (|invaders#7| state) #b01001)) ; $procmux$225_CMP
(define-fun |invaders#90| ((state |invaders_s|)) (_ BitVec 1) (ite (|invaders#89| state) #b0 ((_ extract 9 9) (|invaders#2| state)))) ; $procmux$224_Y
(define-fun |invaders#91| ((state |invaders_s|)) (_ BitVec 1) (ite (|invaders#16| state) (|invaders#90| state) (|invaders#88| state))) ; $procmux$226_Y
(define-fun |invaders#92| ((state |invaders_s|)) (_ BitVec 1) (ite (|invaders#4| state) #b0 (|invaders#91| state))) ; $0\o_invaders_array[19:0] [9]
(define-fun |invaders#93| ((state |invaders_s|)) (_ BitVec 1) (ite (= ((_ extract 0 0) (|invaders#2| state)) #b1) ((_ extract 10 10) (|invaders#2| state)) ((_ extract 11 11) (|invaders#2| state)))) ; $procmux$174_Y
(define-fun |invaders#94| ((state |invaders_s|)) (_ BitVec 1) (ite (= ((_ extract 0 0) (|invaders#8| state)) #b1) (|invaders#93| state) ((_ extract 10 10) (|invaders#2| state)))) ; $procmux$176_Y
(define-fun |invaders#95| ((state |invaders_s|)) (_ BitVec 1) (ite (|invaders#0| state) (|invaders#94| state) ((_ extract 10 10) (|invaders#2| state)))) ; $procmux$178_Y
(define-fun |invaders#96| ((state |invaders_s|)) Bool (= (|invaders#7| state) #b01010)) ; $procmux$191_CMP
(define-fun |invaders#97| ((state |invaders_s|)) (_ BitVec 1) (ite (|invaders#96| state) #b0 ((_ extract 10 10) (|invaders#2| state)))) ; $procmux$190_Y
(define-fun |invaders#98| ((state |invaders_s|)) (_ BitVec 1) (ite (|invaders#16| state) (|invaders#97| state) (|invaders#95| state))) ; $procmux$192_Y
(define-fun |invaders#99| ((state |invaders_s|)) (_ BitVec 1) (ite (|invaders#4| state) #b0 (|invaders#98| state))) ; $0\o_invaders_array[19:0] [10]
(define-fun |invaders#100| ((state |invaders_s|)) (_ BitVec 1) (ite (= ((_ extract 0 0) (|invaders#2| state)) #b1) ((_ extract 11 11) (|invaders#2| state)) ((_ extract 12 12) (|invaders#2| state)))) ; $procmux$142_Y
(define-fun |invaders#101| ((state |invaders_s|)) (_ BitVec 1) (ite (= ((_ extract 0 0) (|invaders#8| state)) #b1) (|invaders#100| state) ((_ extract 11 11) (|invaders#2| state)))) ; $procmux$144_Y
(define-fun |invaders#102| ((state |invaders_s|)) (_ BitVec 1) (ite (|invaders#0| state) (|invaders#101| state) ((_ extract 11 11) (|invaders#2| state)))) ; $procmux$146_Y
(define-fun |invaders#103| ((state |invaders_s|)) Bool (= (|invaders#7| state) #b01011)) ; $procmux$158_CMP
(define-fun |invaders#104| ((state |invaders_s|)) (_ BitVec 1) (ite (|invaders#103| state) #b0 ((_ extract 11 11) (|invaders#2| state)))) ; $procmux$157_Y
(define-fun |invaders#105| ((state |invaders_s|)) (_ BitVec 1) (ite (|invaders#16| state) (|invaders#104| state) (|invaders#102| state))) ; $procmux$159_Y
(define-fun |invaders#106| ((state |invaders_s|)) (_ BitVec 1) (ite (|invaders#4| state) #b0 (|invaders#105| state))) ; $0\o_invaders_array[19:0] [11]
(define-fun |invaders#107| ((state |invaders_s|)) (_ BitVec 1) (ite (= ((_ extract 0 0) (|invaders#2| state)) #b1) ((_ extract 12 12) (|invaders#2| state)) ((_ extract 13 13) (|invaders#2| state)))) ; $procmux$111_Y
(define-fun |invaders#108| ((state |invaders_s|)) (_ BitVec 1) (ite (= ((_ extract 0 0) (|invaders#8| state)) #b1) (|invaders#107| state) ((_ extract 12 12) (|invaders#2| state)))) ; $procmux$113_Y
(define-fun |invaders#109| ((state |invaders_s|)) (_ BitVec 1) (ite (|invaders#0| state) (|invaders#108| state) ((_ extract 12 12) (|invaders#2| state)))) ; $procmux$115_Y
(define-fun |invaders#110| ((state |invaders_s|)) Bool (= (|invaders#7| state) #b01100)) ; $procmux$126_CMP
(define-fun |invaders#111| ((state |invaders_s|)) (_ BitVec 1) (ite (|invaders#110| state) #b0 ((_ extract 12 12) (|invaders#2| state)))) ; $procmux$125_Y
(define-fun |invaders#112| ((state |invaders_s|)) (_ BitVec 1) (ite (|invaders#16| state) (|invaders#111| state) (|invaders#109| state))) ; $procmux$127_Y
(define-fun |invaders#113| ((state |invaders_s|)) (_ BitVec 1) (ite (|invaders#4| state) #b0 (|invaders#112| state))) ; $0\o_invaders_array[19:0] [12]
(define-fun |invaders#114| ((state |invaders_s|)) (_ BitVec 1) (ite (= ((_ extract 0 0) (|invaders#2| state)) #b1) ((_ extract 13 13) (|invaders#2| state)) ((_ extract 14 14) (|invaders#2| state)))) ; $procmux$81_Y
(define-fun |invaders#115| ((state |invaders_s|)) (_ BitVec 1) (ite (= ((_ extract 0 0) (|invaders#8| state)) #b1) (|invaders#114| state) ((_ extract 13 13) (|invaders#2| state)))) ; $procmux$83_Y
(define-fun |invaders#116| ((state |invaders_s|)) (_ BitVec 1) (ite (|invaders#0| state) (|invaders#115| state) ((_ extract 13 13) (|invaders#2| state)))) ; $procmux$85_Y
(define-fun |invaders#117| ((state |invaders_s|)) Bool (= (|invaders#7| state) #b01101)) ; $procmux$95_CMP
(define-fun |invaders#118| ((state |invaders_s|)) (_ BitVec 1) (ite (|invaders#117| state) #b0 ((_ extract 13 13) (|invaders#2| state)))) ; $procmux$94_Y
(define-fun |invaders#119| ((state |invaders_s|)) (_ BitVec 1) (ite (|invaders#16| state) (|invaders#118| state) (|invaders#116| state))) ; $procmux$96_Y
(define-fun |invaders#120| ((state |invaders_s|)) (_ BitVec 1) (ite (|invaders#4| state) #b0 (|invaders#119| state))) ; $0\o_invaders_array[19:0] [13]
(define-fun |invaders#121| ((state |invaders_s|)) (_ BitVec 1) (ite (= ((_ extract 0 0) (|invaders#2| state)) #b1) ((_ extract 14 14) (|invaders#2| state)) ((_ extract 15 15) (|invaders#2| state)))) ; $procmux$698_Y
(define-fun |invaders#122| ((state |invaders_s|)) (_ BitVec 1) (ite (= ((_ extract 0 0) (|invaders#8| state)) #b1) (|invaders#121| state) ((_ extract 14 14) (|invaders#2| state)))) ; $procmux$700_Y
(define-fun |invaders#123| ((state |invaders_s|)) (_ BitVec 1) (ite (|invaders#0| state) (|invaders#122| state) ((_ extract 14 14) (|invaders#2| state)))) ; $procmux$702_Y
(define-fun |invaders#124| ((state |invaders_s|)) Bool (= (|invaders#7| state) #b01110)) ; $procmux$711_CMP
(define-fun |invaders#125| ((state |invaders_s|)) (_ BitVec 1) (ite (|invaders#124| state) #b0 ((_ extract 14 14) (|invaders#2| state)))) ; $procmux$710_Y
(define-fun |invaders#126| ((state |invaders_s|)) (_ BitVec 1) (ite (|invaders#16| state) (|invaders#125| state) (|invaders#123| state))) ; $procmux$712_Y
(define-fun |invaders#127| ((state |invaders_s|)) (_ BitVec 1) (ite (|invaders#4| state) #b0 (|invaders#126| state))) ; $0\o_invaders_array[19:0] [14]
(define-fun |invaders#128| ((state |invaders_s|)) (_ BitVec 1) (ite (= ((_ extract 0 0) (|invaders#2| state)) #b1) ((_ extract 15 15) (|invaders#2| state)) ((_ extract 16 16) (|invaders#2| state)))) ; $procmux$670_Y
(define-fun |invaders#129| ((state |invaders_s|)) (_ BitVec 1) (ite (= ((_ extract 0 0) (|invaders#8| state)) #b1) (|invaders#128| state) ((_ extract 15 15) (|invaders#2| state)))) ; $procmux$672_Y
(define-fun |invaders#130| ((state |invaders_s|)) (_ BitVec 1) (ite (|invaders#0| state) (|invaders#129| state) ((_ extract 15 15) (|invaders#2| state)))) ; $procmux$674_Y
(define-fun |invaders#131| ((state |invaders_s|)) Bool (= (|invaders#7| state) #b01111)) ; $procmux$682_CMP
(define-fun |invaders#132| ((state |invaders_s|)) (_ BitVec 1) (ite (|invaders#131| state) #b0 ((_ extract 15 15) (|invaders#2| state)))) ; $procmux$681_Y
(define-fun |invaders#133| ((state |invaders_s|)) (_ BitVec 1) (ite (|invaders#16| state) (|invaders#132| state) (|invaders#130| state))) ; $procmux$683_Y
(define-fun |invaders#134| ((state |invaders_s|)) (_ BitVec 1) (ite (|invaders#4| state) #b0 (|invaders#133| state))) ; $0\o_invaders_array[19:0] [15]
(define-fun |invaders#135| ((state |invaders_s|)) (_ BitVec 1) (ite (= ((_ extract 0 0) (|invaders#2| state)) #b1) ((_ extract 16 16) (|invaders#2| state)) ((_ extract 17 17) (|invaders#2| state)))) ; $procmux$643_Y
(define-fun |invaders#136| ((state |invaders_s|)) (_ BitVec 1) (ite (= ((_ extract 0 0) (|invaders#8| state)) #b1) (|invaders#135| state) ((_ extract 16 16) (|invaders#2| state)))) ; $procmux$645_Y
(define-fun |invaders#137| ((state |invaders_s|)) (_ BitVec 1) (ite (|invaders#0| state) (|invaders#136| state) ((_ extract 16 16) (|invaders#2| state)))) ; $procmux$647_Y
(define-fun |invaders#138| ((state |invaders_s|)) Bool (= (|invaders#7| state) #b10000)) ; $procmux$654_CMP
(define-fun |invaders#139| ((state |invaders_s|)) (_ BitVec 1) (ite (|invaders#138| state) #b0 ((_ extract 16 16) (|invaders#2| state)))) ; $procmux$653_Y
(define-fun |invaders#140| ((state |invaders_s|)) (_ BitVec 1) (ite (|invaders#16| state) (|invaders#139| state) (|invaders#137| state))) ; $procmux$655_Y
(define-fun |invaders#141| ((state |invaders_s|)) (_ BitVec 1) (ite (|invaders#4| state) #b0 (|invaders#140| state))) ; $0\o_invaders_array[19:0] [16]
(define-fun |invaders#142| ((state |invaders_s|)) (_ BitVec 1) (ite (= ((_ extract 0 0) (|invaders#2| state)) #b1) ((_ extract 17 17) (|invaders#2| state)) ((_ extract 18 18) (|invaders#2| state)))) ; $procmux$617_Y
(define-fun |invaders#143| ((state |invaders_s|)) (_ BitVec 1) (ite (= ((_ extract 0 0) (|invaders#8| state)) #b1) (|invaders#142| state) ((_ extract 17 17) (|invaders#2| state)))) ; $procmux$619_Y
(define-fun |invaders#144| ((state |invaders_s|)) (_ BitVec 1) (ite (|invaders#0| state) (|invaders#143| state) ((_ extract 17 17) (|invaders#2| state)))) ; $procmux$621_Y
(define-fun |invaders#145| ((state |invaders_s|)) Bool (= (|invaders#7| state) #b10001)) ; $procmux$627_CMP
(define-fun |invaders#146| ((state |invaders_s|)) (_ BitVec 1) (ite (|invaders#145| state) #b0 ((_ extract 17 17) (|invaders#2| state)))) ; $procmux$626_Y
(define-fun |invaders#147| ((state |invaders_s|)) (_ BitVec 1) (ite (|invaders#16| state) (|invaders#146| state) (|invaders#144| state))) ; $procmux$628_Y
(define-fun |invaders#148| ((state |invaders_s|)) (_ BitVec 1) (ite (|invaders#4| state) #b0 (|invaders#147| state))) ; $0\o_invaders_array[19:0] [17]
(define-fun |invaders#149| ((state |invaders_s|)) (_ BitVec 1) (ite (= ((_ extract 0 0) (|invaders#2| state)) #b1) ((_ extract 18 18) (|invaders#2| state)) ((_ extract 19 19) (|invaders#2| state)))) ; $procmux$592_Y
(define-fun |invaders#150| ((state |invaders_s|)) (_ BitVec 1) (ite (= ((_ extract 0 0) (|invaders#8| state)) #b1) (|invaders#149| state) ((_ extract 18 18) (|invaders#2| state)))) ; $procmux$594_Y
(define-fun |invaders#151| ((state |invaders_s|)) (_ BitVec 1) (ite (|invaders#0| state) (|invaders#150| state) ((_ extract 18 18) (|invaders#2| state)))) ; $procmux$596_Y
(define-fun |invaders#152| ((state |invaders_s|)) Bool (= (|invaders#7| state) #b10010)) ; $procmux$601_CMP
(define-fun |invaders#153| ((state |invaders_s|)) (_ BitVec 1) (ite (|invaders#152| state) #b0 ((_ extract 18 18) (|invaders#2| state)))) ; $procmux$600_Y
(define-fun |invaders#154| ((state |invaders_s|)) (_ BitVec 1) (ite (|invaders#16| state) (|invaders#153| state) (|invaders#151| state))) ; $procmux$602_Y
(define-fun |invaders#155| ((state |invaders_s|)) (_ BitVec 1) (ite (|invaders#4| state) #b0 (|invaders#154| state))) ; $0\o_invaders_array[19:0] [18]
(define-fun |invaders#156| ((state |invaders_s|)) (_ BitVec 1) (ite (= ((_ extract 0 0) (|invaders#2| state)) #b1) ((_ extract 19 19) (|invaders#2| state)) #b0)) ; $procmux$57_Y
(define-fun |invaders#157| ((state |invaders_s|)) (_ BitVec 1) (ite (= ((_ extract 0 0) (|invaders#8| state)) #b1) (|invaders#156| state) ((_ extract 19 19) (|invaders#2| state)))) ; $procmux$59_Y
(define-fun |invaders#158| ((state |invaders_s|)) (_ BitVec 1) (ite (|invaders#0| state) (|invaders#157| state) ((_ extract 19 19) (|invaders#2| state)))) ; $procmux$61_Y
(define-fun |invaders#159| ((state |invaders_s|)) Bool (= (|invaders#7| state) #b10011)) ; $procmux$65_CMP
(define-fun |invaders#160| ((state |invaders_s|)) (_ BitVec 1) (ite (|invaders#159| state) #b0 ((_ extract 19 19) (|invaders#2| state)))) ; $procmux$64_Y
(define-fun |invaders#161| ((state |invaders_s|)) (_ BitVec 1) (ite (|invaders#16| state) (|invaders#160| state) (|invaders#158| state))) ; $procmux$66_Y
(define-fun |invaders#162| ((state |invaders_s|)) (_ BitVec 1) (ite (|invaders#4| state) #b0 (|invaders#161| state))) ; $0\o_invaders_array[19:0] [19]
(define-fun |invaders#163| ((state |invaders_s|)) (_ BitVec 4) (ite (= ((_ extract 0 0) (|invaders#2| state)) #b1) ((_ extract 3 0) (|invaders#13| state)) (|invaders#1| state))) ; $procmux$749_Y
(define-fun |invaders#164| ((state |invaders_s|)) (_ BitVec 4) (ite (= ((_ extract 0 0) (|invaders#8| state)) #b1) (|invaders#163| state) (|invaders#1| state))) ; $procmux$751_Y
(define-fun |invaders#165| ((state |invaders_s|)) (_ BitVec 4) (ite (|invaders#0| state) (|invaders#164| state) (|invaders#1| state))) ; $procmux$753_Y
(define-fun |invaders#166| ((state |invaders_s|)) (_ BitVec 4) (ite (|invaders#16| state) (|invaders#1| state) (|invaders#165| state))) ; $procmux$756_Y
(define-fun |invaders#167| ((state |invaders_s|)) (_ BitVec 4) (ite (|invaders#4| state) #b0001 (|invaders#166| state))) ; $0\o_invaders_row[3:0]
(define-fun |invaders_a| ((state |invaders_s|)) Bool (and
  (|invaders_a 0| state)
  (|$paramod/timer_1us/PERIOD=100000_a| (|invaders_h speed_timer1| state))
))
(define-fun |invaders_u| ((state |invaders_s|)) Bool 
  (|$paramod/timer_1us/PERIOD=100000_u| (|invaders_h speed_timer1| state))
)
(define-fun |invaders_i| ((state |invaders_s|)) Bool (and
  (= (|invaders#1| state) #b0001) ; o_invaders_row
  (= (|invaders#2| state) #b00000000000111111111) ; o_invaders_array
  (= (= ((_ extract 0 0) (|invaders#3| state)) #b1) false) ; o_hit
  (= (= ((_ extract 0 0) (|invaders#8| state)) #b1) false) ; direction
  (|$paramod/timer_1us/PERIOD=100000_i| (|invaders_h speed_timer1| state))
))
(define-fun |invaders_h| ((state |invaders_s|)) Bool (and
  (= (|invaders_is| state) (|$paramod/timer_1us/PERIOD=100000_is| (|invaders_h speed_timer1| state)))
  (= (|invaders#0| state) (|$paramod/timer_1us/PERIOD=100000_n o_q| (|invaders_h speed_timer1| state))) ; $paramod/timer_1us/PERIOD=100000.o_q
  (= (|invaders#4| state) (|$paramod/timer_1us/PERIOD=100000_n i_reset| (|invaders_h speed_timer1| state))) ; $paramod/timer_1us/PERIOD=100000.i_reset
  (= (|invaders#5| state) (|$paramod/timer_1us/PERIOD=100000_n i_clk_36MHz| (|invaders_h speed_timer1| state))) ; $paramod/timer_1us/PERIOD=100000.i_clk_36MHz
  (|$paramod/timer_1us/PERIOD=100000_h| (|invaders_h speed_timer1| state))
))
(define-fun |invaders_t| ((state |invaders_s|) (next_state |invaders_s|)) Bool (and
  (= (|invaders#18| state) (|invaders#8| next_state)) ; $procdff$800 \direction
  (= (|invaders#22| state) (|invaders#3| next_state)) ; $procdff$797 \o_hit
  (= (concat (|invaders#162| state) (concat (|invaders#155| state) (concat (|invaders#148| state) (concat (|invaders#141| state) (concat (|invaders#134| state) (concat (|invaders#127| state) (concat (|invaders#120| state) (concat (|invaders#113| state) (concat (|invaders#106| state) (concat (|invaders#99| state) (concat (|invaders#92| state) (concat (|invaders#85| state) (concat (|invaders#78| state) (concat (|invaders#71| state) (concat (|invaders#64| state) (concat (|invaders#57| state) (concat (|invaders#50| state) (concat (|invaders#43| state) (concat (|invaders#36| state) (|invaders#29| state)))))))))))))))))))) (|invaders#2| next_state)) ; $procdff$798 \o_invaders_array
  (= (|invaders#167| state) (|invaders#1| next_state)) ; $procdff$799 \o_invaders_row
  (|$paramod/timer_1us/PERIOD=100000_t| (|invaders_h speed_timer1| state) (|invaders_h speed_timer1| next_state))
)) ; end of module invaders
; yosys-smt2-topmod invaders
; end of yosys output
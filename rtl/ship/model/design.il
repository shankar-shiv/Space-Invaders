# Generated by Yosys 0.8+143 (git sha1 c4b61f2, clang 3.8.0-2ubuntu4 -fPIC -Os)
autoidx 707
attribute \keep 1
attribute \top 1
attribute \src "ship.v:4"
module \ship
  attribute \src "ship.v:60"
  wire $0$formal$ship.v:61$21_CHECK[0:0]$69
  attribute \src "ship.v:60"
  wire $0$formal$ship.v:62$22_CHECK[0:0]$71
  attribute \src "ship.v:60"
  wire $0$formal$ship.v:63$23_CHECK[0:0]$73
  attribute \src "ship.v:60"
  wire $0$formal$ship.v:64$24_CHECK[0:0]$75
  wire $78\next_x[4:0]
  attribute \src "ship.v:61"
  wire $formal$ship.v:61$21_CHECK
  attribute \init 1'0
  attribute \src "ship.v:61"
  wire $formal$ship.v:61$21_EN
  attribute \src "ship.v:62"
  wire $formal$ship.v:62$22_CHECK
  attribute \src "ship.v:63"
  wire $formal$ship.v:63$23_CHECK
  attribute \src "ship.v:64"
  wire $formal$ship.v:64$24_CHECK
  attribute \src "ship.v:5"
  wire input 1 \clk_25MHz
  attribute \src "ship.v:9"
  wire input 5 \enable
  attribute \src "ship.v:7"
  wire input 3 \left_debounced
  attribute \src "ship.v:13"
  wire width 5 \next_x
  attribute \src "ship.v:6"
  wire input 2 \reset
  attribute \src "ship.v:8"
  wire input 4 \right_debounced
  attribute \init 5'00101
  attribute \src "ship.v:10"
  wire width 5 output 6 \ship_x
  attribute \src "ship.v:61"
  cell $assert $assert$ship.v:61$81
    connect \A $formal$ship.v:61$21_CHECK
    connect \EN $formal$ship.v:61$21_EN
  end
  attribute \src "ship.v:62"
  cell $assert $assert$ship.v:62$82
    connect \A $formal$ship.v:62$22_CHECK
    connect \EN $formal$ship.v:61$21_EN
  end
  attribute \src "ship.v:63"
  cell $assert $assert$ship.v:63$83
    connect \A $formal$ship.v:63$23_CHECK
    connect \EN $formal$ship.v:61$21_EN
  end
  attribute \src "ship.v:64"
  cell $assert $assert$ship.v:64$84
    connect \A $formal$ship.v:64$24_CHECK
    connect \EN $formal$ship.v:61$21_EN
  end
  attribute \src "ship.v:61"
  cell $ge $ge$ship.v:61$77
    parameter \A_SIGNED 0
    parameter \A_WIDTH 5
    parameter \B_SIGNED 0
    parameter \B_WIDTH 1
    parameter \Y_WIDTH 1
    connect \A \ship_x
    connect \B 1'0
    connect \Y $0$formal$ship.v:61$21_CHECK[0:0]$69
  end
  attribute \src "ship.v:63"
  cell $ge $ge$ship.v:63$79
    parameter \A_SIGNED 0
    parameter \A_WIDTH 5
    parameter \B_SIGNED 0
    parameter \B_WIDTH 1
    parameter \Y_WIDTH 1
    connect \A \next_x
    connect \B 1'0
    connect \Y $0$formal$ship.v:63$23_CHECK[0:0]$73
  end
  attribute \src "ship.v:62"
  cell $le $le$ship.v:62$78
    parameter \A_SIGNED 0
    parameter \A_WIDTH 5
    parameter \B_SIGNED 0
    parameter \B_WIDTH 5
    parameter \Y_WIDTH 1
    connect \A \ship_x
    connect \B 5'10011
    connect \Y $0$formal$ship.v:62$22_CHECK[0:0]$71
  end
  attribute \src "ship.v:64"
  cell $le $le$ship.v:64$80
    parameter \A_SIGNED 0
    parameter \A_WIDTH 5
    parameter \B_SIGNED 0
    parameter \B_WIDTH 5
    parameter \Y_WIDTH 1
    connect \A \next_x
    connect \B 5'10011
    connect \Y $0$formal$ship.v:64$24_CHECK[0:0]$75
  end
  attribute \src "ship.v:60"
  cell $dff $procdff$697
    parameter \CLK_POLARITY 1'1
    parameter \WIDTH 1
    connect \CLK \clk_25MHz
    connect \D $0$formal$ship.v:61$21_CHECK[0:0]$69
    connect \Q $formal$ship.v:61$21_CHECK
  end
  attribute \src "ship.v:60"
  cell $dff $procdff$698
    parameter \CLK_POLARITY 1'1
    parameter \WIDTH 1
    connect \CLK \clk_25MHz
    connect \D 1'1
    connect \Q $formal$ship.v:61$21_EN
  end
  attribute \src "ship.v:60"
  cell $dff $procdff$699
    parameter \CLK_POLARITY 1'1
    parameter \WIDTH 1
    connect \CLK \clk_25MHz
    connect \D $0$formal$ship.v:62$22_CHECK[0:0]$71
    connect \Q $formal$ship.v:62$22_CHECK
  end
  attribute \src "ship.v:60"
  cell $dff $procdff$701
    parameter \CLK_POLARITY 1'1
    parameter \WIDTH 1
    connect \CLK \clk_25MHz
    connect \D $0$formal$ship.v:63$23_CHECK[0:0]$73
    connect \Q $formal$ship.v:63$23_CHECK
  end
  attribute \src "ship.v:60"
  cell $dff $procdff$703
    parameter \CLK_POLARITY 1'1
    parameter \WIDTH 1
    connect \CLK \clk_25MHz
    connect \D $0$formal$ship.v:64$24_CHECK[0:0]$75
    connect \Q $formal$ship.v:64$24_CHECK
  end
  attribute \src "ship.v:24"
  cell $dff $procdff$705
    parameter \CLK_POLARITY 1'1
    parameter \WIDTH 5
    connect \CLK \clk_25MHz
    connect \D \next_x
    connect \Q \ship_x
  end
  attribute \src "ship.v:34"
  cell $mux $procmux$119
    parameter \WIDTH 1
    connect \A 1'1
    connect \B 1'0
    connect \S \left_debounced
    connect \Y $78\next_x[4:0]
  end
  attribute \src "ship.v:29"
  cell $mux $procmux$695
    parameter \WIDTH 5
    connect \A 5'00101
    connect \B { 4'1001 $78\next_x[4:0] }
    connect \S \reset
    connect \Y \next_x
  end
end

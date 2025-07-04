module top_module(
    input clk,
    input areset,    // Freshly brainwashed Lemmings walk left.
    input bump_left,
    input bump_right,
    input ground,
    output walk_left,
    output walk_right,
    output aaah ); 
    localparam [1:0] WALK_L = 2'b00,WALK_R = 2'b01,
    FALL_L = 2'b10,
 

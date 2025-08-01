module t03_DPU_to_MUX(
    input logic clk, rst,
    input logic [7:0] x1, x2, y1, y2,
    input logic [3:0] player_states, r1, r2, r3, r4, r5, r6, r7, r8, r9,
    input logic new_input_select, register_input,
    output logic [3:0] x1_out1, x1_out2, y1_out1, y1_out2, x2_out1, x2_out2, y2_out1, y2_out2, player_state_out
);

logic [3:0] n_x1_out1, n_x1_out2, n_y1_out1, n_y1_out2, n_x2_out1, n_x2_out2, n_y2_out1, n_y2_out2, n_player_state_out;

always_ff @( posedge clk, posedge rst ) begin 
    if (rst) begin
        x1_out1 <= '0;
        x1_out2 <= '0;
        y1_out1 <= '0;
        y1_out2 <= '0;
        x2_out1 <= '0;
        x2_out2 <= '0;
        y2_out1 <= '0;
        y2_out2 <= '0;
        player_state_out <= '0;
    end else begin
        x1_out1 <= n_x1_out1;
        x1_out2 <= n_x1_out2;
        y1_out1 <= n_y1_out1;
        y1_out2 <= n_y1_out2;
        x2_out1 <= n_x2_out1;
        x2_out2 <= n_x2_out2;
        y2_out1 <= n_y2_out1;
        y2_out2 <= n_y2_out2;
        player_state_out <= n_player_state_out;
    end
end

always_comb begin
    n_x1_out1 = x1_out1;
    n_x1_out2 = x1_out2;
    n_y1_out1 = y1_out1;
    n_y1_out2 = y1_out2;
    n_x2_out1 = x2_out1;
    n_x2_out2 = x2_out2;
    n_y2_out1 = y2_out1;
    n_y2_out2 = y2_out2;
    n_player_state_out = player_state_out;
    if (new_input_select) begin
        n_x1_out1 = x1[3:0];
        n_x1_out2 = x1[7:4];
        n_y1_out1 = y1[3:0];
        n_y1_out2 = y1[7:4];
        n_x2_out1 = x2[3:0];
        n_x2_out2 = x2[7:4];
        n_y2_out1 = y2[3:0];
        n_y2_out2 = y2[7:4];
        n_player_state_out = player_state_out;
    end else if (register_input) begin
        n_x1_out1 = r1;
        n_x1_out2 = r2;
        n_y1_out1 = r3;
        n_y1_out2 = r4;
        n_x2_out1 = r5;
        n_x2_out2 = r6;
        n_y2_out1 = r7;
        n_y2_out2 = r8;
        n_player_state_out = r9;
    end


end

endmodule

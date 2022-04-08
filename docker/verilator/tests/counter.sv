module counter #(
    parameter   int     W = 32
) (
    output  logic   [W-1:0]     cnt,
    input   logic   [W-1:0]     init,
    input   logic               clk, rst_n
);

always_ff @ (posedge clk) begin
    if (~rst_n) begin
        cnt <= init;
    end else begin
        cnt <= cnt + 1;
    end
end

endmodule

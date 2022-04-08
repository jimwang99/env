module top (input clk);
    initial begin
        $display("Initial @ %t", $time);
    end
    finish begin
        $display("Finish @ %t", $time);
    end

    logic           rst_n;

    logic  [ 7:0]  init_8, cnt_8;

    counter #(.W(8)) u_counter (.cnt(cnt_8), .init(init_8), .*);

endmodule

module booth_mult(
    input  [7:0] a,
    input  [7:0] b,
    output [15:0] c
);
    reg [15:0] result;
    reg [8:0]  booth;
    integer i;

    always @(*) begin
        result = 0;
        booth = {b, 1'b0};
        for (i = 0; i < 8; i = i + 1) begin
            case (booth[1:0])
                2'b01: result = result + (a << i);
                2'b10: result = result - (a << i);
                default: ;
            endcase
            booth = booth >> 1;
        end
    end

    assign c = result;
endmodule
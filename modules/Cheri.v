'timescale 1ns/1ps
module Cheri(
    input wire tag,
    input  wire tag,
    input  wire[31:0]base,
    input  wire[31:0]length,
    input  wire[31:0]addr,
    input  wire need_load,
    input  wire need_store,
    input  wire need_exec,
    input  wire perm_load,
    input  wire perm_store,
    input  wire perm_exec,
    output reg ok,
);
wire[31:0]top=base+length;
wire[31:0]last=adddr+32'b00000000000000000000000000000011;

always@(*)begin
    ok=1'b1;
    casue=3'b000;
    if(need_load||need_store||need_exec)begin
        if(!tag)begin
            ok=1'b0;
            if(addr<base||last>top)begin
                ok=1'b0;
            end
            else begin
                if(need_load&&!perm_load)begin
                    ok=1'b0;
                end
            end
        end
    end
end
endmodule   
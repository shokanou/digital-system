module note_timer(beat,duration_to_load,clk,timer_clear,timer_done);
 input wire clk,beat,timer_clear; 
 input wire [5:0] duration_to_load; 
 output wire timer_done; 
 reg[5:0] counter; 
 always @ (posedge clk) begin   
  if(timer_clear) counter<=0; 
  else if(beat)  counter<=counter+1;
  else counter<=counter; end  
  assign timer_done=(counter==duration_to_load)?1:0; 
endmodule 
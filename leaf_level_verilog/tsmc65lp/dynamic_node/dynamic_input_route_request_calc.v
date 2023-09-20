module dynamic_input_route_request_calc(route_req_n, route_req_e, route_req_s, route_req_w, route_req_p,
                                        default_ready_n, default_ready_e, default_ready_s, default_ready_w, default_ready_p,
                                        my_loc_x_in, my_loc_y_in, my_chip_id_in, abs_x, abs_y, abs_chip_id, final_bits, length, header_in);

// begin port declarations

output route_req_n;
output route_req_e;
output route_req_s;
output route_req_w;
output route_req_p;
output default_ready_n;
output default_ready_e;
output default_ready_s;
output default_ready_w;
output default_ready_p;

input [8-1:0] my_loc_x_in;
input [8-1:0] my_loc_y_in;
input [14-1:0] my_chip_id_in;
input [8-1:0] abs_x;
input [8-1:0] abs_y;
input [14-1:0] abs_chip_id;

input [2:0] final_bits;
input [8-1:0] length;
input header_in;

// end port declarations

//fbit declarations






//This is the state
//NONE

//inputs to the state
//NONE

//wires
wire more_x;
wire more_y;
wire less_x;
wire less_y;
wire done_x;
wire done_y;
wire off_chip;

wire done;

wire north;
wire east;
wire south;
wire west;
wire proc;

wire north_calc;
wire south_calc;

//wire regs

//assigns

assign off_chip = abs_chip_id != my_chip_id_in;
assign more_x = off_chip ? 0 > my_loc_x_in : abs_x > my_loc_x_in;
assign more_y = off_chip ? 0 > my_loc_y_in : abs_y > my_loc_y_in;

assign less_x = off_chip ? 0 < my_loc_x_in : abs_x < my_loc_x_in;
assign less_y = off_chip ? 0 < my_loc_y_in : abs_y < my_loc_y_in;

assign done_x = off_chip ? 0 == my_loc_x_in : abs_x == my_loc_x_in;
assign done_y = off_chip ? 0 == my_loc_y_in : abs_y == my_loc_y_in;

assign done = done_x & done_y;

assign north_calc = done_x & less_y;
assign south_calc = done_x & more_y;

assign north = north_calc | ((final_bits == 3'b101) & done);
assign south = south_calc | ((final_bits == 3'b011) & done);
assign east = more_x | ((final_bits == 3'b100) & done);
assign west = less_x | ((final_bits == 3'b010) & done);
assign proc = ((final_bits == 3'b000) & done);

assign route_req_n = header_in & north;
assign route_req_e = header_in & east;
assign route_req_s = header_in & south;
assign route_req_w = header_in & west;
assign route_req_p = header_in & proc;

assign default_ready_n = route_req_n;
assign default_ready_e = route_req_e;
assign default_ready_s = route_req_s;
assign default_ready_w = route_req_w;
assign default_ready_p = route_req_p;

//instantiations

endmodule
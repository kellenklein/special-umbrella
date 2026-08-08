`default_nettype none
`include "constants.sv"

import constants::*;

module logical_unit # (
    parameter int W = MAX_WIDTH
) (
    // Data Inputs
    input wire [W-1:0] in_A,
    input wire [W-1:0] in_B,
    input wire opcodes_t op,

    //Data Outputs
    /*TODO*/
    output wire [W-1:0] result,
    //Control outputs
    /*TODO*/
    output wire negative_flag,
    output wire zero_flag
);
  logic [W-1:0] not_value;
  logic [W-1:0] and_value;
  logic [W-1:0] or_value;
  logic [W-1:0] xor_value;
  logic [W-1:0] right_shift;
  logic [W-1:0] left_shift;
  logic [W-1:0] rotate_value;
  logic [W-1:0] rotate_places;

  assign rotate_places = in_B % W;
  assign rotate_value = (in_A << rotate_places) + (in_A >> (W-rotate_places));

  assign left_shift = in_A << in_B;
  assign right_shift = op[1] ? in_A >>> in_B : in_A >> in_B;

  not not0(not_value, in_A);
  and and0(and_value, in_A, in_B);
  or or0(or_value, in_A, in_B);
  xor xor0(xor_value, in_A, in_B);

  assign result = (not_value && (op == 0)) | (and_value && (op == 1)) |
    (or_value && (op == 2)) | (right_shift && (op == 3 || op == 5)) |
    (left_shift && (op == 4)) | (rotate_value && (op == 6)) |
    (xor_value && (op == 7));

  assign negative_flag = result[W-1];
  assign zero_flag = result == 1'b0;

    /*TODO*/

endmodule

`default_nettype wire

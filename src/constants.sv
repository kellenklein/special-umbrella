package constants;

    localparam MAX_WIDTH = 64;

    typedef enum logic [3:0] {
        /************* Logical *********************/
        NOT = 4'h0,
        AND = 4'h1,
        OR  = 4'h2,
        LRS = 4'h3,
        LLS = 4'h4,
        ARS = 4'h5,
        ROL = 4'h6,
        XOR = 4'h7,

        

        /************* Arithmetic ******************/
        ADD = 4'h8,
        NEG = 4'h9,
        GEQ = 4'hA,
        LT  = 4'hB,
        EQ  = 4'hC,
        INC = 4'hD,
        DEC = 4'hE,
        ABS = 4'hF
    } opcodes_t;






endpackage
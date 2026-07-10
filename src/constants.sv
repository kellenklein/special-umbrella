package constants;

    localparam MAX_WIDTH = 64;

    typedef enum logic [3:0] {
        /************* Logical *********************/
        NOT = 4'h0,  // 1's compliment not
        AND = 4'h1,  // 
        OR  = 4'h2,  //
        LRS = 4'h3,  // Logical Right Shift
        LLS = 4'h4,  // Logical Left Shift
        ARS = 4'h5,  // Arithmetic Right Shift
        ROL = 4'h6,  // Rotate Left
        XOR = 4'h7,  // 

        

        /************* Arithmetic ******************/
        ADD = 4'h8,
        NEG = 4'h9, // 2's Compilment not
        GEQ = 4'hA, // Greater than or equal to
        LT  = 4'hB, // Less than
        EQ  = 4'hC,
        INC = 4'hD, 
        DEC = 4'hE,
        ABS = 4'hF // Absolute value
    } opcodes_t;






endpackage
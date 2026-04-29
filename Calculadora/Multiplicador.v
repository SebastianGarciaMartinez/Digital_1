module multiplicador #(
    parameter N = 8
)(
    input clk,
    input reset,
    input start,
    input signed [N-1:0] A_in,
    input signed [N-1:0] B_in,
    output reg signed [2*N-1:0] P,
    output reg done
);


reg [N-1:0] A, B;
reg [2*N-1:0] acumulador;
reg [$clog2(N):0] contador;

reg signo;

// Estados
parameter IDLE   = 0,
          INIT   = 1,
          CHECK  = 2,
          ADD    = 3,
          SHIFT  = 4,
          FINAL  = 5,
          DONE   = 6;

reg [2:0] estado, next_estado;


// Lógica secuencial (estado)

always @(posedge clk or posedge reset) begin
    if (reset)
        estado <= IDLE;
    else
        estado <= next_estado;
end


// Lógica combinacional (transiciones)

always @(*) begin
    case (estado)

        IDLE:
            next_estado = (start) ? INIT : IDLE;

        INIT:
            next_estado = CHECK;

        CHECK:
            if (contador == 0)
                next_estado = FINAL;
            else if (B[0] == 1)
                next_estado = ADD;
            else
                next_estado = SHIFT;

        ADD:
            next_estado = SHIFT;

        SHIFT:
            next_estado = CHECK;

        FINAL:
            next_estado = DONE;

        DONE:
            next_estado = IDLE;

        default:
            next_estado = IDLE;

    endcase
end


// Datapath 

always @(posedge clk or posedge reset) begin
    if (reset) begin
        A <= 0;
        B <= 0;
        acumulador <= 0;
        contador <= 0;
        signo <= 0;
        P <= 0;
        done <= 0;
    end else begin
        case (estado)

            IDLE: begin
                done <= 0;
            end

            INIT: begin
                
                signo <= A_in[N-1] ^ B_in[N-1];

                // complemento a 2 si negativo
                A <= (A_in[N-1]) ? -A_in : A_in;
                B <= (B_in[N-1]) ? -B_in : B_in;

                acumulador <= 0;
                contador <= N;
            end

            ADD: begin
                acumulador <= acumulador + A;
            end

            SHIFT: begin
                A <= A << 1;
                B <= B >> 1;
                contador <= contador - 1;
            end

            FINAL: begin
                if (signo)
                    P <= -acumulador;
                else
                    P <= acumulador;
            end

            DONE: begin
                done <= 1;
            end

        endcase
    end
end

endmodule

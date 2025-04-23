module detector_borda (
    input wire clk,
    input wire rst,
    input wire [1:0] entrada,
    output wire [1:0] detector
);
    
//insira seu código aqui

       reg [1:0] atual, anterior;
       

       // Lógica de detecção de borda de subida.

       wire [1:0] borda;
       assign borda = ~anterior & atual;
       assign detector = borda;

       //Bloco sequencial com reset assincrono

       always @(posedge clk or posedge rst) begin
           if (rst) begin
                anterior <= 2'b00;
                atual <= 2'b00;

            end else begin

                atual <= entrada;
		anterior <= atual;

	end

	// teste
   end
endmodule

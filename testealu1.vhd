--   Autor: Sylvio Mello e Felipe Casalecchi
--   Data: Janeiro de 2022
--
--   Primeiro projeto de laboratório de Sistemas Digitais 2021.2
--

   library IEEE;
	use IEEE.std_logic_1164.all; -- Para trabalharmos com std_logic e std_logic_vectors
	use IEEE.std_logic_unsigned.all; -- Para conseguirmos fazer operações aritméticas
	use IEEE.numeric_std.all; -- Para usarmos o unsigned
	
	entity testealu1 is port
	(
	   A,B         :  in   std_logic_vector(3 downto 0); -- Entradas de 4 bits
		O           : out   std_logic_vector(3 downto 0); -- Saída de 4 bits
		selection   :  in   std_logic_vector(2 downto 0); -- Seleção de 3 bits
		carry_out   : out std_logic;
		overflow    : out std_logic;
      negativo    : out std_logic;
		zero        : out std_logic
	);
	end testealu1;
	
	architecture hardware of testealu1 is -- declaração da arquitetura
	signal result: std_logic_vector(4 downto 0); -- signal result para trabalharmos no carry out
	begin
	process(A,B,selection, result) -- começo do processo que passará pelos casos do input de seleção
	begin
			negativo <= '0'; -- começando o flag negativo em 0
			case selection is
			
			when "000" => result <= std_logic_vector((unsigned('0' & A) + unsigned(B))); -- colocando o "zero à esquerda" de A para preenchermos o vetor result
							  O <= result(3 downto 0); -- resultado da soma

			when "001" => -- subração
			if (A >= B) then -- subtração positiva
				O <= A   -   B;
			else             -- subração negativa
				O <= B - A;
				negativo <= '1'; -- flag negativa acesa
			end if;

			when "010" => O <= not A + 1; -- complemento de 2 de A
			
			when "011" => O <= A + 1; -- incremento de 1 de A
			
			when "100" => O <= A  AND  B;
			
			when "101" => O <= A OR B;
			
			when "110" => -- troca de sinal de A
				O <= A;
				negativo <= '1';
			
			when "111" => O <= B + 1; -- incremento de 1 de B
			
			when others => O <= "ZZZZ"; -- caso venha input indesejado, sai alta impedância
			
			end case;
			carry_out <= result(4); -- determinação do carry_out
	end process;
	
	end hardware;
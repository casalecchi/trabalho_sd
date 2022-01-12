LIBRARY ieee;
USE ieee.std_logic_1164.ALL; -- Para trabalharmos com std_logic e std_logic_vectors
  
ENTITY testealu1_tb IS -- Declaração da entidade "vazia"
END testealu1_tb;
  
ARCHITECTURE behavior OF testealu1_tb IS -- Começando o testbench
  
 COMPONENT testealu1 -- Declarando a componente do Device Under Test(DUT)
 PORT(
		A,B         :  in   std_logic_vector(3 downto 0); -- Entradas de 4 bits
		O           : out   std_logic_vector(3 downto 0); -- Saída de 4 bits
		selection   :  in   std_logic_vector(2 downto 0); -- Seleção de 3 bits
		carry_out   : out std_logic;
		overflow    : out std_logic;
      negativo    : out std_logic;
		zero        : out std_logic
 );
 END COMPONENT;
  
 
 -- Inputs
 signal A         : std_logic_vector(3 downto 0) := (others => '0');
 signal B         : std_logic_vector(3 downto 0) := (others => '0');
 signal selection : std_logic_vector(2 downto 0) := (others => '0');
 
 -- Outputs
 signal O        : std_logic_vector(3 downto 0);
 signal carry_out: std_logic;
 signal overflow : std_logic;
 signal negativo : std_logic;
 signal zero     : std_logic;
  
BEGIN
  
 -- Instanciando o Device Under Test (DUT)
 dut: testealu1 PORT MAP (
 A => A,
 B => B,
 selection => selection,
 O => O,
 carry_out => carry_out,
 overflow => overflow,
 negativo => negativo,
 zero => zero
 );
 
 -- Processo de estímulo
 stim_proc: process
 begin
 -- Segurar o estado de reset por 100 ns
 wait for 100 ns;
 
 -- Começando os testes e definindo os vetores para testar
 
 A <= "1111";
 B <= "0001";
  
 selection <= "000";
 wait for 100 ns;
 selection <= "001";
 wait for 100 ns;
 selection <= "010";
 wait for 100 ns;
 selection <= "011";
 wait for 100 ns;
 selection <= "100";
 wait for 100 ns;
 selection <= "101";
 wait for 100 ns;
 selection <= "110";
 wait for 100 ns;
 selection <= "111";
 end process;
 
END;

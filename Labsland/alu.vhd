library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;
 
entity alu is
port (
    SW : in std_logic_vector(10 downto 0);
    HEX7, HEX5, HEX3, HEX2 : out std_logic_vector(6 downto 0);
    LEDR: out std_logic_vector(8 downto 5)
);
end alu;

architecture main of alu is
    
    signal A, B : integer range 0 to 15;
    signal sel : std_logic_vector(2 downto 0);
    signal result : std_logic_vector(4 downto 0);
    signal carry_out : std_logic;
    signal overflow : std_logic;
    signal negativo : std_logic;
    signal zero : std_logic;
    
begin
    
    A <= to_integer(unsigned(SW(10 downto 7)));
    B <= to_integer(unsigned(SW(6 downto 3)));
    sel <= SW(2 downto 0);
    
process(A, B, sel, result)
begin
    
    negativo <= '0';
    
    case sel is
        when "000" =>
            result <= std_logic_vector(to_unsigned(A + B, 5)); -- adição FUNCIONANDO
        when "001" =>
            if (A - B >= 0) then
                result <= std_logic_vector(to_unsigned(A - B, 5)); -- subtração FUNCIONANDO
            else
                result <= not std_logic_vector(to_unsigned(A - B - 1, 5)); -- subtração 
                negativo <= '1'; -- resolver problema da flag negativa fica acessa
            end if;
        when "010" =>
            result <= std_logic_vector(to_unsigned(-A, 5)); -- not A + 1 FUNCIONANDO
        when "011" =>
            result <= std_logic_vector(to_unsigned(A + 1, 5)); -- incremento de 1 no A FUNCIONANDO
        when "100" =>
            result <= std_logic_vector(to_unsigned(A, 5)) and std_logic_vector(to_unsigned(B, 5)); -- A and B FUNCIONANDO
        when "101" =>
            result <= std_logic_vector(to_unsigned(A, 5)) or std_logic_vector(to_unsigned(B, 5)); -- A or B FUNCIONANDO
       when "110" =>
            result <= std_logic_vector(to_unsigned(A, 5)); -- troca de sinal AJUSTAR
            negativo <= '1';
       when "111" =>
            result <= std_logic_vector(to_unsigned(B + 1, 5)); -- incremento de 1 no B FUNCIONANDO
        when others => 
            NULL;
    end case;
    
    if (result = "00000") then
        zero <= '1';
    else
        zero <= '0';
    end if;
    
    carry_out <= result(4);
    
end process;
    
    LEDR(8) <= carry_out;
    LEDR(7) <= negativo;
    LEDR(6) <= overflow;
    LEDR(5) <= zero;
    
    with result(3 downto 0) select
        HEX2 <= "1000000" when "0000" | "1010",
                "1111001" when "0001" | "1011",
                "0100100" when "0010" | "1100",
                "0110000" when "0011" | "1101",
                "0011001" when "0100" | "1110",
                "0010010" when "0101" | "1111",
                "0000010" when "0110",
                "1111000" when "0111",
                "0000000" when "1000",
                "0011000" when "1001",
                "0111111" when others;
    
    with result(3 downto 0) select     
        HEX3 <= "1000000" when "0000" | "0001" | "0010" | "0011" | "0100" 
                | "0101" | "0110" | "0111" | "1000" | "1001",
                "1111001" when "1010" | "1011" | "1100" | "1101" | "1110" 
                | "1111",
                "0111111" when others;
    
    with SW(6 downto 3) select
        HEX5 <= "1000000" when "0000",
                "1111001" when "0001",
                "0100100" when "0010",
                "0110000" when "0011",
                "0011001" when "0100",
                "0010010" when "0101",
                "0000010" when "0110",
                "1111000" when "0111",
                "0000000" when "1000",
                "0011000" when "1001",
                "0001000" when "1010",
                "0000011" when "1011",
                "1000110" when "1100",
                "0100001" when "1101",
                "0000110" when "1110",
                "0001110" when "1111",
                "0111111" when others;
                
    with SW(10 downto 7) select
        HEX7 <= "1000000" when "0000",
                "1111001" when "0001",
                "0100100" when "0010",
                "0110000" when "0011",
                "0011001" when "0100",
                "0010010" when "0101",
                "0000010" when "0110",
                "1111000" when "0111",
                "0000000" when "1000",
                "0011000" when "1001",
                "0001000" when "1010",
                "0000011" when "1011",
                "1000110" when "1100",
                "0100001" when "1101",
                "0000110" when "1110",
                "0001110" when "1111",
                "0111111" when others;
    
end main;
library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

-- 17 bits
entity rom is
	port(
		clk      : in std_logic;
		endereco : in unsigned(6 downto 0);
		dado     : out unsigned(16 downto 0)
		);
end entity;

architecture a_rom of rom is
	type mem is array (0 to 127) of unsigned(16 downto 0);
	constant conteudo_rom : mem := (
			-- caso endereco => conteudo
			0  => "00000000000000000",	--nop
			1  => "00000000000000000",	--nop
			2  => "00000000000000000",	--nop
			3  => "11100000000000101",	--jmp para 5
			4  => "00000000000000000",
			5  => "00000000000000000",	--nop
			6  => "00000000000000000",	--nop
			7  => "11100000000000110",	--jmp para 6; fica em loop 
			8  => "00000000000000000",
			9  => "00000000000000000",
			10 => "00000000000000000",
			-- abaixo: casos omissos => (zero em todos os bits)
			others => (others=>'0')
			);
			
	begin
		process(clk)
			begin
				if(rising_edge(clk)) then
					dado <= conteudo_rom(to_integer(endereco));
				end if;
		end process;
		
end architecture;

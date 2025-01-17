library ieee;

use ieee.std_logic_1164.all;

use ieee.std_logic_unsigned.all;

use ieee.numeric_std.all;



entity memData is

    port(address: in std_logic_vector(31 DOWNTO 0);

        Clock: in std_logic;

        memWrite: in std_logic;

        writeData: in std_logic_vector(31 DOWNTO 0);

        memRead: in std_logic;

        read_Data: out std_logic_vector(31 DOWNTO 0));

end memData;



architecture dtm of memData is

    type memType is array(0 to 100) of std_logic_vector(7 DOWNTO 0);

    signal memory: memType;

    begin


    process(Clock)

	begin

		if (Clock'EVENT and Clock = '0') then

			if (memWrite = '1') then

				memory(to_integer(unsigned(address))    ) <= writeData(31 DOWNTO 24);

				memory(to_integer(unsigned(address)) + 1) <= writeData(23 DOWNTO 16);

				memory(to_integer(unsigned(address)) + 2) <= writeData(15 DOWNTO 8);

				memory(to_integer(unsigned(address)) + 3) <= writeData(7 DOWNTO 0);

			end if;
		end if;

			if (memRead = '1') then 

				read_data <= 

					memory(to_integer(unsigned(address))    ) & 

					memory(to_integer(unsigned(address)) + 1) & 

					memory(to_integer(unsigned(address)) + 2) & 

					memory(to_integer(unsigned(address)) + 3);

			else 

				read_Data <= "ZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZ";

			end if;

	end process;

end;
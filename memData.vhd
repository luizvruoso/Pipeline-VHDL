library ieee;

use ieee.std_logic_1164.all;

use ieee.std_logic_unsigned.all;

use ieee.numeric_std.all;



entity memData is

    port(address: in std_logic_vector(0 to 31);

        Clock: in std_logic;

        memWrite: in std_logic;

        writeData: in std_logic_vector(0 to 31);

        memRead: in std_logic;

        read_Data: out std_logic_vector(0 to 31);

        mem0: out std_logic_vector(0 to 31);

        mem4: out std_logic_vector(0 to 31);

        mem8: out std_logic_vector(0 to 31);

        mem12: out std_logic_vector(0 to 31);

        mem16: out std_logic_vector(0 to 31));

end memData;



architecture dtm of memData is

    type memType is array(0 to 100) of std_logic_vector(0 to 7);

    signal memory: memType;

    begin

    mem0 <= 

        memory(0) &

        memory(1) &

        memory(2) &

        memory(3);

        

    mem4 <=

        memory(4) &

        memory(5) &

        memory(6) &

        memory(7);



    mem8 <= 

        memory(8) &

        memory(9) &

        memory(10) &

        memory(11);



    mem12 <=

        memory(12) &

        memory(13) &

        memory(14) &

        memory(15);



    mem16 <= 

        memory(16) &

        memory(17) &

        memory(18) &

        memory(19);



    process(Clock)

	begin

		if (Clock'EVENT and Clock = '0') then

			if (memWrite = '1') then

				memory(to_integer(unsigned(address))    ) <= writeData(0  to 7 );

				memory(to_integer(unsigned(address)) + 1) <= writeData(8  to 15);

				memory(to_integer(unsigned(address)) + 2) <= writeData(16 to 23);

				memory(to_integer(unsigned(address)) + 3) <= writeData(24 to 31);

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
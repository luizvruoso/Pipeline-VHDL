LIBRARY ieee;
Use ieee.std_logic_1164.all;


PACKAGE components is 

COMPONENT bancoRegistradores IS
	GENERIC(Code : Integer :=5;
				N : Integer:=32);
	Port(
		Clock :IN STD_LOGIC;
		readRegister1 					:IN STD_LOGIC_VECTOR(Code-1 DOWNTO 0);
		regWrite							:IN STD_LOGIC;
		readRegister2 					:IN STD_LOGIC_VECTOR(Code-1 DOWNTO 0);
		writeRegister					:IN STD_LOGIC_VECTOR(Code-1 DOWNTO 0 ); -- data out para saida do 2
		writeData						:IN STD_LOGIC_VECTOR(N-1 DOWNTO 0 );
		readData1						:OUT	STD_LOGIC_VECTOR(N-1 DOWNTO 0 ); --rout para sair read data 1
		readData2						:OUT 	STD_LOGIC_VECTOR(N-1 DOWNTO 0 ) -- rout para sair read data 2 
	);

END component;

COMPONENT instructionMemory IS
	port(
		endereco: in std_logic_vector(0 to 31);
		instrucao: out std_logic_vector(0 to 31)
);
END COMPONENT;

COMPONENT ProgramCounter IS
port	(
			clock:	in  std_logic;
			pc_upd:	in  std_logic_vector(0 to 31);
			pc:		out std_logic_vector(0 to 31) 
		);
		
END COMPONENT;

COMPONENT Adder is 
	port (reg1: in std_logic_vector(31 downto 0);
			reg2: in std_logic_vector(31 downto 0);	
			Adder_out: out std_logic_vector(31 downto 0)
			);
end COMPONENT;

END components;
library ieee;
USE ieee.std_logic_1164.all ;
USE ieee.std_logic_unsigned.all;

use ieee.numeric_std.all;

entity instructionMemory is
	port(
		endereco: in std_logic_vector(0 to 31);
		instrucao: out std_logic_vector(0 to 31) := "00000000000000000000000000000000");
end instructionMemory;

architecture InstMemory of instructionMemory is
			type byte is array(0 to 384) of std_logic_vector(0 to 7);
			signal memoria: byte;
			
			begin
				memoria(0)<= "00000100";
				memoria(1)<= "00000000";
				memoria(2)<= "00000000";
				memoria(3)<= "00000101";
				memoria(4)<= "00000100";
				memoria(5)<= "00100001";
				memoria(6)<= "00000000";
				memoria(7)<= "00000100";
				memoria(8)<= "00001100";
				memoria(9)<= "01000010";
				memoria(10)<= "00000000";
				memoria(11)<= "00000000";
				memoria(12)<= "11111100";
				memoria(13)<= "00000000";
				memoria(14)<= "00000000";
				memoria(15)<= "00000000";
				memoria(16)<= "11111100";
				memoria(17)<= "00000000";
				memoria(18)<= "00000000";
				memoria(19)<= "00000000";
				memoria(20)<= "00010000";
				memoria(21)<= "00000011";
				memoria(22)<= "00000000";
				memoria(23)<= "00000000";
				memoria(24)<= "11111100";
				memoria(25)<= "00000000";
				memoria(26)<= "00000000";
				memoria(27)<= "00000000";
				memoria(28)<= "11111100";
				memoria(29)<= "00000000";
				memoria(30)<= "00000000";
				memoria(31)<= "00000000";
				memoria(32)<= "11111100";
				memoria(33)<= "00000000";
				memoria(34)<= "00000000";
				memoria(35)<= "00000000";
				memoria(36)<= "11111100";
				memoria(37)<= "00000000";
				memoria(38)<= "00000000";
				memoria(39)<= "00000000";
				memoria(40)<= "11111100";
				memoria(41)<= "00000000";
				memoria(42)<= "00000000";
				memoria(43)<= "00000000";
				memoria(44)<= "00001000";
				memoria(45)<= "00100001";
				memoria(46)<= "00000000";
				memoria(47)<= "00000001";
				memoria(48)<= "00000000";
				memoria(49)<= "00000011";
				memoria(50)<= "00000000";
				memoria(51)<= "00000001";
				memoria(52)<= "11111100";
				memoria(53)<= "00000000";
				memoria(54)<= "00000000";
				memoria(55)<= "00000000";
				memoria(56)<= "11111100";
				memoria(57)<= "00000000";
				memoria(58)<= "00000000";
				memoria(59)<= "00000000";
				memoria(60)<= "11111100";
				memoria(61)<= "00000000";
				memoria(62)<= "00000000";
				memoria(63)<= "00000000";
				memoria(64)<= "11111100";
				memoria(65)<= "00000000";
				memoria(66)<= "00000000";
				memoria(67)<= "00000000";
				memoria(68)<= "00011100";
				memoria(69)<= "00100010";
				memoria(70)<= "00000000";
				memoria(71)<= "00000110";
				memoria(72)<= "11111100";
				memoria(73)<= "00000000";
				memoria(74)<= "00000000";
				memoria(75)<= "00000000";
				memoria(76)<= "11111100";
				memoria(77)<= "00000000";
				memoria(78)<= "00000000";
				memoria(79)<= "00000000";
				memoria(80)<= "11111100";
				memoria(81)<= "00000000";
				memoria(82)<= "00000000";
				memoria(83)<= "00000000";
				memoria(84)<= "11111100";
				memoria(85)<= "00000000";
				memoria(86)<= "00000000";
				memoria(87)<= "00000000";
				memoria(88)<= "00100100";
				memoria(89)<= "00000000";
				memoria(90)<= "00000000";
				memoria(91)<= "00001011";
				memoria(92)<= "11111100";
				memoria(93)<= "00000000";
				memoria(94)<= "00000000";
				memoria(95)<= "00000000";
				memoria(96)<= "11111100";
				memoria(97)<= "00000000";
				memoria(98)<= "00000000";
				memoria(99)<= "00000000";
				memoria(100)<= "00010100";
				memoria(101)<= "01000000";
				memoria(102)<= "00000000";
				memoria(103)<= "00000000";
				memoria(104)<= "00000000";
				memoria(105)<= "00000010";
				memoria(106)<= "00000000";
				memoria(107)<= "00000011";
				memoria(108)<= "11111100";
				memoria(109)<= "00000000";
				memoria(110)<= "00000000";
				memoria(111)<= "00000000";
				memoria(112)<= "11111100";
				memoria(113)<= "00000000";
				memoria(114)<= "00000000";
				memoria(115)<= "00000000";
				memoria(116)<= "11111100";
				memoria(117)<= "00000000";
				memoria(118)<= "00000000";
				memoria(119)<= "00000000";
				memoria(120)<= "11111100";
				memoria(121)<= "00000000";
				memoria(122)<= "00000000";
				memoria(123)<= "00000000";
				memoria(124)<= "11111100";
				memoria(125)<= "00000000";
				memoria(126)<= "00000000";
				memoria(127)<= "00000000";
				memoria(128)<= "00000000";
				memoria(129)<= "00000011";
				memoria(130)<= "00110000";
				memoria(131)<= "00000100";
				memoria(132)<= "00000100";
				memoria(133)<= "00000101";
				memoria(134)<= "00000000";
				memoria(135)<= "00000101";
				memoria(136)<= "11111100";
				memoria(137)<= "00000000";
				memoria(138)<= "00000000";
				memoria(139)<= "00000000";
				memoria(140)<= "11111100";
				memoria(141)<= "00000000";
				memoria(142)<= "00000000";
				memoria(143)<= "00000000";
				memoria(144)<= "11111100";
				memoria(145)<= "00000000";
				memoria(146)<= "00000000";
				memoria(147)<= "00000000";
				memoria(148)<= "11111100";
				memoria(149)<= "00000000";
				memoria(150)<= "00000000";
				memoria(151)<= "00000000";
				memoria(152)<= "11111100";
				memoria(153)<= "00000000";
				memoria(154)<= "00000000";
				memoria(155)<= "00000000";
				memoria(156)<= "00000000";
				memoria(157)<= "11000101";
				memoria(158)<= "00111000";
				memoria(159)<= "00000010";
				memoria(160)<= "00011000";
				memoria(161)<= "00001000";
				memoria(162)<= "00000000";
				memoria(163)<= "00000000";
				memoria(164)<= "11111100";
				memoria(165)<= "00000000";
				memoria(166)<= "00000000";
				memoria(167)<= "00000000";
				memoria(168)<= "11111100";
				memoria(169)<= "00000000";
				memoria(170)<= "00000000";
				memoria(171)<= "00000000";
				memoria(172)<= "11111100";
				memoria(173)<= "00000000";
				memoria(174)<= "00000000";
				memoria(175)<= "00000000";
				memoria(176)<= "11111100";
				memoria(177)<= "00000000";
				memoria(178)<= "00000000";
				memoria(179)<= "00000000";
				memoria(180)<= "11111100";
				memoria(181)<= "00000000";
				memoria(182)<= "00000000";
				memoria(183)<= "00000000";
				memoria(184)<= "00100000";
				memoria(185)<= "00000000";
				memoria(186)<= "00000000";
				memoria(187)<= "00000000";
				memoria(188)<= "11111100";
				memoria(189)<= "00000000";
				memoria(190)<= "00000000";
				memoria(191)<= "00000000";
				memoria(192)<= "11111100";
				memoria(193)<= "00000000";
				memoria(194)<= "00000000";
				memoria(195)<= "00000000";

			process (endereco)
			begin
				instrucao <= memoria(to_integer(unsigned(endereco))) &  memoria(to_integer(unsigned(endereco)) + 1) & memoria(to_integer(unsigned(endereco)) + 2) & memoria(to_integer(unsigned(endereco)) + 3);
			end process;
			
end;
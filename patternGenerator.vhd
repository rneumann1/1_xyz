--The component ’patternGenerator’ creates a new pseudo-random pattern on request (nextPattern = '1'). 
--The current pattern is held in a register. 
--The next pattern np is computed from the current Pattern cp by the following formula (given in VHDL syntax):
--  np <= "0001" when reset = '1' else
--        (cp(0) xor cp(1)) & cp(3 downto 1) when mode = '1' else
--        (cp(0) xor cp(3)) & cp(3 downto 1);
--The control nextPattern may be assumed to synchronously appear to the clock for one clock period. 
--


library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity patternGenerator is
 generic (WIDTH_PATTERN: natural := 4      -- width of pattern
          ); 
 port(
  reset, clk: in std_logic;                 -- system clock and reset
  nextPattern,                              -- request for next pattern
  mode: in std_logic;                       -- variation of generated pattern
  pattern: out std_logic_vector(3 downto 0) -- the pattern
  );
end patternGenerator;

architecture behv of patternGenerator is
 subtype Pattern_t is std_logic_vector(WIDTH_PATTERN-1 downto 0);
-- add your code here
-- the following is only inserted to allow archiving
begin
 pattern <= (others => '0');
end behv;
 
library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity levelTimer is
 generic(MAX_LEVEL: natural := 8);        -- maximal level value
 port (clk, reset: in std_logic;          -- as usual: system clock and resize
       clk1KHz: in std_logic;             -- the 1KHz clock
       startTimer: in std_logic;          -- starts the timer
       level: in unsigned(3 downto 0);    -- level of game reached
		 testMode: in std_logic;            -- test pin: time will be 1 s
		 levelTime: out unsigned(15 downto 0); -- level time in ms
		 timeOver: out std_logic);          -- output: time elapsed
end levelTimer;

architecture cntr of levelTimer is
begin
-- add your code here
-- the following is only inserted to allow archiving
 timeOver <= '0';
 levelTime <= to_unsigned(0,16);
end cntr; 
  
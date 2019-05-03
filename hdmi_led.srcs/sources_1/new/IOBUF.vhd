library ieee;
    use ieee.std_logic_1164.all;
library unisim;
   use unisim.vcomponents.all;

entity iobuf is
  port (
    O                                     : out std_logic;                                -- Output (from buffer)
    IO                                    : inout std_logic;                              -- Port pin
    I                                     : in  std_logic;                                -- Inuput (to buffer)
    T                                     : in  std_logic);                               -- Tristate control
end iobuf;

architecture rtl of iobuf is

begin

  --IO <= I when T = '0' else 'Z';
  --O <= IO;
OBUFT_inst : OBUFT

    port map (
                O => IO, -- Buffer output (connect directly to top-level port)
                I => I, -- Buffer input
                T => T -- 3-state enable input
            );
IBUF_inst : IBUF
    port map (
                O => O, -- Buffer output
                I => IO -- Buffer input (connect directly to top-level port)
            );


end rtl;
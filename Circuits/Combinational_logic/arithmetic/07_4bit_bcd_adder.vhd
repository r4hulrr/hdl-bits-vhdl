library ieee;
use ieee.std_logic_1164.all;

entity top_module is
  port (
    a    : in  std_logic_vector(15 downto 0);
    b    : in  std_logic_vector(15 downto 0);
    cin  : in  std_logic;
    cout : out std_logic;
    sum  : out std_logic_vector(15 downto 0)
  );
end entity;

architecture rtl of top_module is
  component bcd_fadd is
    port (
      a    : in  std_logic_vector(3 downto 0);
      b    : in  std_logic_vector(3 downto 0);
      cin  : in  std_logic;
      cout : out std_logic;
      sum  : out std_logic_vector(3 downto 0)
    );
  end component;

  signal c : std_logic_vector(4 downto 0);
begin
  c(0) <= cin;
  cout <= c(4);

  -- 4-digit BCD ripple-carry adder (LSB digit = i=0)
  gen_digits : for i in 0 to 3 generate
    u_bcd_fadd : bcd_fadd
      port map (
        a    => a(4*i+3 downto 4*i),
        b    => b(4*i+3 downto 4*i),
        cin  => c(i),
        cout => c(i+1),
        sum  => sum(4*i+3 downto 4*i)
      );
  end generate;

end architecture;

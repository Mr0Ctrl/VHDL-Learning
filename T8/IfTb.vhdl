entity IfTb is end entity;

architecture sim of IfTb is 
    --Signal declaration
    signal CountUp : integer := 0;
    signal CountDown : integer := 10;

begin

    process is 
        -- variable decleration
    begin
        -- Strt of the process "thread"
        CountUp <= CountUp +1;
        CountDown <= CountDown -1;

        wait for 10 ns;

    end process;

    process is
    begin

        if CountUp > CountDown then
            report "Up Larger";
        elsif CountUp < CountDown then
            report "Down Larger";
        else 
            report "Equal";
        end if;

        wait on CountUp,CountDown;

    end process;


end architecture;
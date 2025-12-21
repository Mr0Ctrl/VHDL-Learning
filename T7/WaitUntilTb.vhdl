entity WaitUntilTb is end entity;

architecture sim of WaitUntilTb is 
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

        wait on CountUp,CountDown;
        report "CountUp = " & integer'image(CountUp) & 
                ", CountDown = " & integer'image(CountDown);
    end process;

    process is
    begin

        wait until CountUp = CountDown;
        report "Jackpot!!";
    end process;

end architecture;
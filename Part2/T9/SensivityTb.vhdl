entity SensivityTb is end entity;

architecture sim of SensivityTb is 
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

        wait for 100 ns;

    end process;

    process is
    begin

        if CountUp = CountDown then
            report "Process A: Jackpot";
        end if;

        wait on CountUp,CountDown;

    end process;
    
    -- equivalent process using sensiivity list
    process (CountUp,CountDown) is
    begin

        if CountUp = CountDown then
            report "Process B: Jackpot";
        end if;

    end process;

end architecture;
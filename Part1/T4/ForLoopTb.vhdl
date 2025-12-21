entity ForLoopTb is end entity;

architecture sim of ForLoopTb is begin

    process is begin
        -- Strt of the process "thread"
        report "Hello";

        for i in 1 to 10 loop
            report "i=" & integer'image(i);
            wait for 10 ns;
        end loop;

        report "Exit";
        wait;
        --The process will loop backto start            
    end process;

end architecture;
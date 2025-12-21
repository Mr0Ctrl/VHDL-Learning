entity LoopTb is end entity;

architecture sim of LoopTb is begin

    process is begin
        -- Strt of the process "thread"
        report "Hello";

        loop
            report "Wait For";
            wait for 10 ns;
            exit;
        end loop;

        report "Exit";
        wait;
        --The process will loop backto start            
    end process;

end architecture;
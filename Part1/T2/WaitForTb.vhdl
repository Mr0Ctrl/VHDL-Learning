entity WaitForTb is
end entity;

architecture sim of WaitForTb is begin

    process is begin
        -- Strt of the process "thread"

        report "Wait For";

        wait for 10 ns;

        --The process will loop backto start            
    end process;

end architecture;
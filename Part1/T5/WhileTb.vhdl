entity WhileTb is end entity;

architecture sim of WhileTb is begin

    process is 
        variable i : integer := 0;
    begin
        -- Strt of the process "thread"
        report "Hello";

        while i < 10 loop
            report "i=" & integer'image(i);
            i := i + 1 ;
            wait for 10 ns;
        end loop;

        report "Exit";
        wait;
        --The process will loop backto start            
    end process;

end architecture;
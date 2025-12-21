entity SignalTb is end entity;

architecture sim of SignalTb is 
    --Signal declaration
    signal MySignal : integer := 0;
begin

    process is 
        -- variable decleration
        variable MyVariable : integer := 0;
    begin
        -- Strt of the process "thread"
        report "Hello";

        while MyVariable < 10 loop
            
            MyVariable := MyVariable + 1 ;
            MySignal <= MySignal + 1 ;

            report "MyVariable=" & integer'image(MyVariable) &
                    ", MySignal=" & integer'image(MySignal);

            wait for 10 ns;
        end loop;

        report "Exit";
        wait;
        --The process will loop backto start            
    end process;

end architecture;
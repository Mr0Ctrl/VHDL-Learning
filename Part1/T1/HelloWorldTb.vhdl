entity HelloWorldTb is
end entity;

architecture sim of HelloWorldTb is begin

    process is begin

        report "Hello World!";
        wait;

    end process;

end architecture;
library ieee;
use ieee.std_logic_1164.all;

entity cpu is
    generic (
        larguraBarramentoEnderecos  : natural := 4;
        larguraBarramentoDados      : natural := 7
    );
    port
    (
        clk : IN  STD_LOGIC;
		  -- Instrucao
		  ROM : IN std_logic_vector(17 downto 0);
		  
		  
        outDecoder : out std_logic_vector(larguraBarramentoEnderecos-1 downto 0);
		  dataOut : out std_logic_vector(larguraBarramentoEnderecos -1 downto 0);
		  baseT : in std_logic;
		  buttons : in std_logic_vector(2 downto 0);
		  habilitaBotaoOut : out std_logic
		  
    );
end entity;

architecture estrutural of cpu is

    -- Declaração de sinais auxiliares
--	 signal entradaA_MUX, entradaA_MUX, saida_MUX, entrada_somador, saida_somador : STD_LOGIC_VECTOR(larguraBarramentoDados-1 DOWNTO 0);
--    signal seletor_MUX : STD_LOGIC;

	-- Imediado
	signal imediato : std_logic_vector(6 downto 0);
	-- Registradores
	signal enderecoA, enderecoB, enderecoC : std_logic_vector(3 downto 0);
	-- Saidas
	signal saidaAbanco, saidaBbanco : std_logic_vector(larguraBarramentoDados-1 downto 0);
	
	-- Entradas e acessos
	signal entrada0ula, dataIn, saidaula : std_logic_vector(larguraBarramentoDados-1 DOWNTO 0);
	signal enableWriteBanco : std_logic;
	
	-- Signal da UC
	signal selMuxJump, selInUla, selDataIn, selBotoes, enableWrite, resetCondReg : std_logic;
	-- O opCode eh oq entra na unidade, a operacaoULA eh a q entra na ULA. Essencialmente sao a msm csa
	signal opCode, operacaoULA : std_logic_vector(2 DOWNTO 0);
	
	-- Signals gerais
	signal CondRegOut : std_logic;
	
	
	
    -- ...

begin
	opCode <= ROM(17 downto 15); -- 010
	enderecoA <= ROM(14 downto 11); -- XXX 1010
	enderecoB <= ROM(10 downto 7); -- XXX XXXX 1011
	enderecoC <= ROM(6 downto 3); -- XXX XXXX XXXX 1100
	
	imediato <= ROM(14 downto 11) & ROM(2 downto 0); -- XXX 1010 XXXX XXXX 101 ou seja, 1010101
	
   -- Exemplos de instanciação de componentes
	 
	-- Instanciação da Unidade de Controle de Fluxo de Dados
	 UC : entity work.UC 
    port map
    (
        opCode						=> opCode,
		  inCondReg					=> CondRegOut,
		  selMuxJump				=> selMuxJump,
		  selInUla					=> selInUla,
		  selDataIn					=> selDataIn,
		  selBotoes					=> selBotoes,
		  enableWrite				=> enableWrite,
		  resetCondReg				=> resetCondReg,
		  Operation					=> operacaoULA
		  
    );

    -- Instanciação de Banco de Registradores
    BR : entity work.bancoRegistradores 
    generic map (
        larguraDados    => larguraBarramentoDados
    )
    port map
    (
        clk                 => clk,
        enderecoA           => enderecoA,
        enderecoB           => enderecoB,
        enderecoC           => enderecoC,
        dadoEscritaC        => dataIn,
        escreveC            => enableWriteBanco,
        saidaA              => saidaAbanco,
        saidaB              => saidaBbanco
    );
	 
	 -- Instanciação de MUXImediato(0) cm Reg A(1)
	 MUXImediato : entity work.mux2 
    generic map (
        size    => larguraBarramentoDados
    )
    port map
    (
        a1            => imediato,
        a2            => saidaAbanco,
        sel             => selInUla,
        b               => entrada0ula
    );
	 
	 -- Instanciação de MUXImediato(0) cm Reg A(1)
	 MUXDataIn : entity work.mux2 
    generic map (
        size    => larguraBarramentoDados
    )
    port map
    (
        a1            => "000000" & baseT, -- Base de tempo eh 1 ou 0, mas a entrada tem q ser 7 bits
        a2            => saidaula,
        sel             => selDataIn,
        b               => dataIn
    );
	 
	 
	 

--    -- Instanciação de Banco de Registradores
--    PC : entity work.registradorGenerico  
--    -- generic map (
--    -- );
--    port map
--    (
--        clk         => clk,
--        enable      => enable_pc,
--        reset       => reset_pc,
--        DIN         => entrada_pc,
--        DOUT        => saida_pc
--    );
--	 
--	 
--    -- Instanciação de MUX
--    MUX1 : entity work.muxGenerico2 
--    generic map (
--        larguraDados    => larguraBarramentoDados
--    );
--    port map
--    (
--        entradaA_MUX            => entradaA_MUX,
--        entradaB_MUX            => entradaB_MUX,
--        seletor_MUX             => seletor_MUX,
--        saida_MUX               => saida_MUX
--    );
--    
--    -- ...
--
--    -- Instanciação de Somador com Constante
--    SOMADOR1 : entity work.soma4 
--    generic map (
--        larguraDados    => larguraBarramentoDados;
--        incremento      => 4
--    );
--    port map
--    (
--        entrada         => entrada_somador,
--        saida           => saida_somador
--    );
--    
--    -- Completar com a instanciação de demais 
--    -- componentes necessários

end architecture;
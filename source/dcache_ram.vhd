
-- this is provided as a guide to build your cache. It is by no means unfallable.
-- you may need to update vector bit ranges to match specifications in lab handout.
--
-- THIS IS NOT ERROR FREE CODE, YOU MUST UPDATE AND VERIFY SANITY OF LOGIC/INTERFACES
--
library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity dcache_ram is
	port(
		CLK					:	in	std_logic;
		nReset			:	in	std_logic;
		WrEn				:	in	std_logic;
    assertValidity : in std_logic;

		snoopFlag : in std_logic;
		snoopAddr : in std_logic_vector(31 downto 0);
		snoopHit : out std_logic;
		snoopData : out std_logic_vector(31 downto 0);
    -- MSI protocol     
    invalidateAddr : in std_logic_vector(31 downto 0);
    invalidateAddrFlag : in std_logic;

		Tag					:	in	std_logic_vector (24 downto 0);
		Index				:	in	std_logic_vector (03 downto 0);
		WordOffset : in std_logic;
		InputWord	:	in 	std_logic_vector (31 downto 0);
		InputWordOffset : in std_logic;
		MEM_memWrite : in std_logic;
		OutputWord	:	out std_logic_vector (31 downto 0);
		currentTag	:	out std_logic_vector (24 downto 0);
		Dirty				:	out	std_logic;
		Valid    : out std_logic;
		Hit					:	out	std_logic
  );
end dcache_ram;

architecture struct of dcache_ram is 
-- setup data types here if you want to use them
  type validBits is array (0 to 15) of std_logic;
  signal validArray : validBits; 
  type dirtyBits is array (0 to 15) of std_logic;
  signal dirtyArray, nextDirtyArray : dirtyBits;
  type tagBits is array (0 to 15) of std_logic_vector(24 downto 0);
  signal tagArray : tagBits;
  type setBits is array (0 to 15) of std_logic_vector(63 downto 0); -- Word 0 = <63:32>, Word 1 = <31 downto 0>
  signal setArray : setBits;
  signal indexInteger, snoopIndexInteger, invalidateAddrIndexInteger : integer range 0 to 15;
  signal nextSetArray : std_logic_vector(63 downto 0);
begin

-- If you use an external ram file for the cache you do not need this cache_reg.
cache_reg: process(CLK, nReset, WrEn)
begin 
	if nReset = '0' then
		for i in 0 to 15 loop 
				-- reset cache valid, dirty, and replacement bits here
		  validArray(i) <= '0';
		  dirtyArray(i) <= '0';
		  tagArray(i) <= (others => '0');
		  setArray(i) <= (others => '0');
		end loop;
	elsif rising_edge(CLK) then
    dirtyArray <= nextDirtyArray;
		if WrEn = '1' then
		 	if(assertValidity = '1') then
    		 	validArray(indexInteger) <= '1';
  		 	end if;
		 	tagArray(indexInteger) <= Tag;
		 	setArray(indexInteger) <= nextSetArray;
		end if;
		if(invalidateAddrFlag = '1') then
		  if((tagArray(invalidateAddrIndexInteger) = invalidateAddr(31 downto 7)) and (validArray(invalidateAddrIndexInteger) = '1')) then
		    validArray(invalidateAddrIndexInteger) <= '0';  
		  end if;
		end if;
	end if;
end process cache_reg;

dirtyBitsProcess : process( CLK, nReset, WrEn, invalidateAddrFlag, invalidateAddr)
begin
  nextDirtyArray <= dirtyArray;
  if(nReset = '0') then
    nextDirtyArray <= dirtyArray;  
  elsif(invalidateAddrFlag = '1') then
	  if(tagArray(invalidateAddrIndexInteger) = invalidateAddr(31 downto 7)) then
		    nextDirtyArray(invalidateAddrIndexInteger) <= '0';  
		end if;
  elsif((validArray(indexInteger) = '1') and (MEM_memWrite = '1')) then
    nextDirtyArray(indexInteger) <= '1';
  end if;
end process;

nextSetArray <= (setArray(indexInteger)(63 downto 32) & InputWord) when (InputWordOffset = '1') else (InputWord & setArray(indexInteger)(31 downto 0));

cache_lookup: process(WrEn, Tag, Index, WordOffset, InputWord, InputWordOffset)
begin
	-- check ways valid and tag bits,
	-- on match select cache block to return.
	-- update replacement bits
	-- update dirty valid on write. This depends on write policy.
	
end process cache_lookup;

indexInteger <= to_integer(unsigned(Index)); -- convert the index to a integer so we can use it to look up values in the array

  
--OutputWord <= setArray(indexInteger)(63 downto 32) when ((WordOffset = '0') and (validArray(indexInteger) = '1') and (tagArray(indexInteger) = Tag)) else setArray(indexInteger)(31 downto 0) when ((WordOffset = '1') and (validArray(indexInteger) = '1') and (tagArray(indexInteger) = Tag)) else x"BAD1BAD1";
OutputWord <= setArray(indexInteger)(63 downto 32) when ((WordOffset = '0') and (validArray(indexInteger) = '1')) 
              else setArray(indexInteger)(31 downto 0) when ((WordOffset = '1') and (validArray(indexInteger) = '1'))
              else x"BAD7BAD7";
Dirty <= dirtyArray(indexInteger);
Valid <= validArray(indexInteger);
Hit <= '1' when ((Tag = tagArray(indexInteger)) and (validArray(indexInteger) = '1')) else '0';
currentTag <= tagArray(indexInteger);

invalidateAddrIndexInteger <= to_integer(unsigned(invalidateAddr(6 downto 3)));

snoopIndexInteger <= to_integer(unsigned(snoopAddr(6 downto 3))); -- convert the index to a integer so we can use it to look up values in the array
snoopData <= setArray(snoopIndexInteger)(63 downto 32) when (snoopAddr(2) = '0') else setArray(snoopIndexInteger)(31 downto 0);
snoopHit <= '1' when ((snoopFlag = '1') and (tagArray(snoopIndexInteger) = snoopAddr(31 downto 7)) and (validArray(snoopIndexInteger) = '1')) else '0';
end struct;


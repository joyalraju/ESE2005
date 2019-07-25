LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
entity game is
PORT(clock, r:in bit;
     n,s,e,w,v: in bit;
sw,win,die,s0,s1,s2,s3,s4,s5,s6:out bit);
end entity game;
architecture operation of game is
type state_type is (Ccacophony,TTunnel,RRiver,SStash,DDen,GGraveyard,VVault,gameout);
signal State : State_Type;
begin
process(clock,r,n,s,e,w)
begin
if (r='1') then	
State<= Ccacophony;
s0<='1';
s1<='0';
s2<='0';
s3<='0';
s4<='0';
s5<='0';
s6<='0';
win<='0';
die<='0';
sw<='0';
else if(clock'EVENT AND clock='1') then
case state is
when Ccacophony =>
if (e='1')  and  (n='0')  and  (s='0')  and (w='0') then
State <= TTunnel;
s0<='0';
s1<='1';
s2<='0';
s3<='0';
s4<='0';
s5<='0';
s6<='0';
win<='0';
die<='0';
sw<='0';
else
State <= Ccacophony;  
s0<='1';
s1<='0';
s2<='0';
s3<='0';
s4<='0';
s5<='0';
s6<='0';
win<='0';
die<='0';
sw<='0';
end if;
when TTunnel =>
if  (s='1') and (n='0') and (e='0') and (w='0') then
State <= RRiver;
s0<='0';
s1<='0';
s2<='1';
s3<='0';
s4<='0';
s5<='0';
s6<='0';
win<='0';
die<='0';
sw<='0';
else if (w='1') and  (n='0') and (s='0') and (e='0') then
State <= Ccacophony;
s0<='1';
s1<='0';
s2<='0';
s3<='0';
s4<='0';
s5<='0';
s6<='0';
win<='0';
die<='0';
sw<='0';
else
State <= TTunnel;
s0<='0';
s1<='1';
s2<='0';
s3<='0';
s4<='0';
s5<='0';
s6<='0';
win<='0';
die<='0';
sw<='0';
end if;
end if;
when RRiver =>
if (e='1') and (n='0') and (s='0') and (w='0') then
State <= DDen;
s0<='0';
s1<='0';
s2<='0';
s3<='0';
s4<='1';
s5<='0';
s6<='0';
win<='0';
die<='0';
sw<='0';
else if (n='1') and (s='0') and (e='0') and (w='0') then
state<=TTunnel;
s0<='0';
s1<='1';
s2<='0';
s3<='0';
s4<='0';
s5<='0';
s6<='0';
win<='0';
die<='0';
sw<='0';
else if  (w='1') and (n='0') and(s='0') and (w='0') then
State <= SStash;
s0<='0';
s1<='0';
s2<='0';
s3<='1';
s4<='0';
s5<='0';
s6<='0';
win<='0';
die<='0';
sw<='1';
else
State <= RRiver;
s0<='0';
s1<='0';
s2<='1';
s3<='0';
s4<='0';
s5<='0';
s6<='0';
win<='0';
die<='0';
sw<='0';
end if;
end if;
end if;
when DDen =>
if (e='1') and (n='0') and (w='0') and (s='0') and (v='0') then
State <=GGraveyard;
s0<='0';
s1<='0';
s2<='0';
s3<='0';
s4<='0';
s5<='1';
s6<='0';
win<='0';
die<='1';
sw<='0';
else if (e='1') and (n='0') and (s='0') and(w='0')  and (v='1') then
state<=VVault;
s0<='0';
s1<='0';
s2<='0';
s3<='0';
s4<='0';
s5<='0';
s6<='1';
win<='1';
die<='0';
sw<='0';
end if;
end if;
when SStash =>
if (e='1') and (n='0') and (w='0') and (s='0') then
State <= RRiver;
s0<='0';
s1<='0';
s2<='1';
s3<='0';
s4<='0';
s5<='0';
s6<='0';
win<='0';
die<='0';
sw<='0';
else
State <= SStash;
s0<='0';
s1<='0';
s2<='0';
s3<='1';
s4<='0';
s5<='0';
s6<='0';
win<='0';
die<='0';
sw<='1';
end if;
when others => NULL;
end case;
end if;
end if;
end process;
end architecture operation;


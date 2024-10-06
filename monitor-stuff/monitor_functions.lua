function write_characters(s,monitor,speed)
	for i =1, #s do
		local c = s:sub(i,i)
		monitor.write(c)
		sleep(speed)
	end
end

function reign(monitor,speed)
	argument = [[Is this the Region, this the Soil, the Clime,
Said then the lost Arch-Angel, this the seat
That we must change for Heav'n, this mournful gloom
For that celestial light? Be it so, since he
Who now is Sovran can dispose and bid
What shall be right: fardest from him is best
Whom reason hath equald, force hath made supream
Above his equals. Farewel happy Fields
Where Joy for ever dwells: Hail horrours, hail
Infernal world, and thou profoundest Hell
Receive thy new Possessor: One who brings
A mind not to be chang'd by Place or Time.
The mind is its own place, and in it self
Can make a Heav'n of Hell, a Hell of Heav'n.
What matter where, if I be still the same,
And what I should be, all but less then he
Whom Thunder hath made greater? Here at least
We shall be free; th' Almighty hath not built
Here for his envy, will not drive us hence:
Here we may reign secure, and in my choyce
To reign is worth ambition though in Hell:
Better to reign in Hell, then serve in Heav'n.]]
	write_characters(argument,monitor,speed)
end

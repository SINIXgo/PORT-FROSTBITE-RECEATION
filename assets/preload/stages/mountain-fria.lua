function onCreate()

	makeLuaSprite( 'fondo', 'yo_y_los_insanos', -180, -70)
	scaleObject('fondo', 1.23, 1.23);
	setLuaSpriteScrollFactor('fondo', 1, 1)
	addLuaSprite('fondo', false)

	setProperty('fondo.visible', true)

		makeAnimatedLuaSprite('pika', 'pikaculo', 930, 560)
luaSpriteAddAnimationByPrefix('pika', 'pika', 'Freakachu IDLE0', 18, true);
	scaleObject('pika', 1.08, 1.08)
		addLuaSprite("pika", false)

	setProperty('pika.visible', false)

		makeAnimatedLuaSprite('poke', 'Typhlosion', 490, 760)
luaSpriteAddAnimationByPrefix('poke', 'poke','Typhlosion jijijija', 16, true);
	scaleObject('poke', 1.5, 1.5)
		addLuaSprite("poke", true)

	setProperty('poke.visible', true)

		makeLuaSprite('Termometro', 'Thermometer', 20, 160);
		addLuaSprite('Termometro', false);
		setObjectCamera('Termometro', 'hud');
		scaleLuaSprite('Termometro', 1, 1);

		makeLuaSprite('Frio', 'frio', -10, 0);
		addLuaSprite('Frio', false);
		setObjectCamera('Frio', 'hud');
		scaleLuaSprite('Frio', 10.3, 10.3);

		makeLuaSprite('negro', 'Pikachu', -10, 0);
		addLuaSprite('negro', true);
		scaleLuaSprite('negro', 18.3, 18.3);

	setProperty('negro.visible', false)

		makeLuaSprite('boo', 'Pikachu', -10, 0);

		addLuaSprite('boo', true);

		setObjectCamera('boo', 'hud');
		scaleLuaSprite('boo', 1.3, 1.3);

	setProperty('boo.visible', false)
end

function onEvent(name,value1,value2)

	if name == 'Play Animation' then 
		
		if value1 == 'fondo1' then
			setProperty('pika.visible', true);
		end
		if value1 == 'screamer1' then
			setProperty('boo.visible', true);
		end
		if value1 == 'screamer2' then
			setProperty('boo.visible', false);
		end
		if value1 == 'negro' then
			setProperty('negro.visible', true);
		end
	end
end
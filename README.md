# Blood Chalice

You and your friends are powerful vampires, masters of the night. 

But at the light of day, you are all weak, vulnerable. Two days ago you found a old artefact that could remove the light of the sun. The vampire eternal desire. The name of this artefact is 'The Blood Chalice'.

In order to fulfil the dark ritual you need to make a sacrifice of 50 blood units. The only way to adquire such amount of blood is to hunt the humans in the near city.

But dangers lurks in the shadows. The order of the Holy Knights has been seen in the city. They swore to destroy evil and a big army is coming. They sent Scouts regularly. They will attack you on sight. 

Zombies are coming too. And they are even worse than Knights, for they may be weaker, but they hunt humans too and if they kill them they will turn into zombies. They are a plague.

In 400 turns it will be daylight. The army of knights will be in town by then and no matter where you hide you will die. You must fulfil the ritual before 400 turns.


## The map
              


	####################################################################################
	# C 1   2  #                         H
	#          #               #####                                    H
	#   3   4                                         H            #######
	############                                                   #  H H#
	#                                  ####                        #     #        H
	#                      #####       ######                      ##   ##
	#                 ###########              ###
	#      ##                                   ###
	#      ##                  Z                      ##############               H
	#      ##          #####                 K        #      #  H  #       H
	#   H  ##              #####                                   #
	#            H            H                 	               #
	#                 #                 #####         #      #     #              H
	####################################################################################

## Gameplay

You and your friends will be vampires. Each turn you will be able to move, fight, drink blood and transfer blood to the chalice. 

You can move your PC – playable character; YOU – through the map using the arrows of keyboard. The map is tile based, so you can move x number of tiles in any direction each turn. In the case of the vampire, it's 5 tiles.

In the map you will find NPC – non playable characters – like Peasants , Knights and Zombies. You will interact with each oen of then by moving your character to them. 

If you collide with a Peasant you will drink one unit of his blood. Once you drink all his blood the Peasant dies. They have 3 blood points.

If you collide with a Knight or a Zombie you will deal damage to them. You receive 1 unit of blood if you kill a Knight, but 0 if you kill a zombie.

If you collide with the Blood Chalice you will pour the blood you had managed to gather inside the chalice.

All NPC move when it is their turn to move. At first they move randomly, wandering through the streets. But they can think too.  

If a Zombie sees a Knight, Peasant or Vampire he will chase him and attack him until he eats him. If that happens, the human will turn into a zombie. Vampires won't turn into zombies.

If a Knight sees a Vampire or a Zombie he will chase him down and attack him.

If a Peasant sees a Vampire or a Zombie he will run in the opposite direction.

That behaviour happens only if they see. The vision is defined for each character class. For example a vision of 6 tiles means that in a 6x6 square surrounding him he can see the characters. He won't see any other characters in the map.

Each character has a certain number of points of life – HP. When that number reaches to 0 they die. 

Vampires regenerate +1 point of life every turn. Also if they acquire blood and they are injured that blood will instead be converted to HP.

So for example if you character has 10/10 points of life and he eats an entire human he will gain 3 blood points. But if he is injured – 8/10 – he will regain 2 life points and 1 blood point.

Peasants regenerate 1 point of blood every 3 turns.

Humans do not regenerate life points. They can't heal combat injures in one night, obviously.

Zombies do not regenerate points of life neither. What is life to them anyways? :) 

Each turn an event will happen. They will mostly be bad things.

* Holy Knight Scout: A new Knight enters the game at a random position.
* Necromancer: A new zombie enters the game at a random position.
* Immigration: A new Human enter the game at a random position.     

## Characters Chart

* 1,2,3,4  are the vampire players.  
	* Attack: 3 damage	
	* Move: 5 tiles/turn.
	* Hit points: 10.
        * Vision: 10 tiles.
	
* K: Knights: Scouts from the Order of the Holy Knights
	* Attack: 1 damage
	* Move: 3 tiles/turn
	* Hit points: 5.   
	* Vision: 6 tiles.  
        * Blood points: 1.         # Only if you kill him                 
	
* H: Peasants: Common people.
	* Attack: 0 damage.
	* Move: 2 tiles/turn.
	* Hit points: 2.
	* Vision: 6 tiles.
        * Blood points: 3.
	
* Z: A Zombie.  
	* Attack: 1 damage.
	* Move: 2 tiles/turn.
	* Hit points: 2.
	* Vision: 5 tiles.	
        * Blood points: 0.
	
* C: The Blood Chalice. If a vampire touch the Chalice he transfer to it all the blood he has collected.
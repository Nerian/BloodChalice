Challenge Exercise: Exponential Chaos
=====================================

_written by: Shane Emmons_

My wife and I play a lot of board games. After getting beat, time and time
again, I decided it was time to find some games where we could work together.
After experimenting with a few, we quickly found our two favourites: Pandemic
and Forbidden Island. But now that we've played them so much, we're looking for
more. That's where you come in. 

During this assignment, you are going to create
your own cooperative board game using similar mechanics to those in Pandemic
and Forbidden Island. You should attempt to model the game and let a single
player play a few turns via the console. You don't need fancy graphics or
visual design.

## Examples of chaotic cooperative games with exponential elements

Below are some links to videos and/or rules for several games that you can draw
inspiration from.

Pandemic:

- http://www.youtube.com/watch?v=5JxMh1FP4b0
- http://www.zmangames.com/boardgames/pandemic.htm
- http://www.youtube.com/watch?v=6vaJhiht8NA&feature=fvst

Forbidden Island:

- http://www.youtube.com/watch?v=aYVOTPsWeN4

Ghost Stories: 

- http://boardgamegeek.com/boardgame/37046/ghost-stories

Red November: 

- http://boardgamegeek.com/boardgame/36946/red-november

## Exercise Summary

- Design and model a game with the following features:
  - A map which can be represented as a graph structure
  - Rules that result in exponentially increasing danger as the game progresses
  - Resources which players must collect repeatedly in sets to win the game
  - Rules that create tension between slowing down immediate danger and
    collecting all the needed resources
- Create your own unique theme, don't copy the scenarios from the example games
- Implement at least a single player mode which demonstrates the game setup and the
  different actions that can take place on a turn.

# Blood Chalice

You and your friends are vampires in the same coven. There are vampire hunters wanting to kill you all, humans that you need to eat and a horde of zombies spreading chaos. Oh, and you need to fill a chalice with blood too :)

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
     
## People

* 1,2,3,4  are the players.  
	* Attack: 3 dmg	
	* Move: 5 squares/turn.
	* Hit points: 10
	
* V: Knights: They will attack any zombie or vampire they see
	* Attack: 1 dmg
	* Move: 3 squares/turn
	* Hit points: 5   
	* Vision: 6 squares.                         
	
* H: Common humans. They are food for vampires and zombies. They provide up to 2 points of blood.
	* Attack: 0 dmg
	* Move: 2 squares/turn
	* Hit points: 2
	* Vision: 6 squares
	
* Z: A Zombie.  
	* Attack: 1 dmg
	* Move: 3 squares/turn
	* Hit points: 2
	* Vision: 6 squares	
	
* C: The Blood Chalice. If a vampire touch the Chalice he transfer to it all the blood he has collected.    

## Combat

Fighting happens when two rival PJ collide with each other. He who collides with the other is who makes the damage.

PJ moves randomly until they see other PJ.

## Blood

Blood can be used to heal yourself and to fill the Blood Chalice. In order to win the game you need to fill the chalice with 50 blood points.                                                                                                   

In order to get the blood a vampire needs to collide with a human. Then the human will lose 1 point of life and you will either win 1 point of life if you are injured or 1 point of blood if you are not.

## Objective

In the Coven the is a Blood Chalice. You need to fill it with 50 blood points. All blood points are transferred to the Chalice wherever a player moves to its position.
	                                    
In 400 turns the day light will kill you all. That is the time limit.
	
## Events

Each turn an event will happen. They will mostly be bad things.

* The only good vampire is a dead vampire: A new Vampire Hunter enters the game.
* Necromancer: A new zombie enters the game.
* Immigration: A new Human enter the game.
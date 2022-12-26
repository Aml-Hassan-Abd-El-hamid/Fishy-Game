# Fishy-Game
Help our player eat as much fishes as you can and avoid getting killed by sharks and underwater bombs!
<br>
## Game description:<br><br>
The game starts with the main page where you can choose which mode you want to play war or peace, and can go to the options page. <br>
<img src="https://github.com/Aml-Hassan-Abd-El-hamid/Fishy-Game/blob/main/26.12.2022_22.51.22_REC.png" width="470" height="270" >
<br>In the option page, you can chose the shape of the fish that you want to play with and also you can choose the sea that you want to play your game in.<br>
<img src="https://github.com/Aml-Hassan-Abd-El-hamid/Fishy-Game/blob/main/op.png" width="470" height="270" >

<br>In both of the 2 modes you have to eat 30 fish to win the game, and every 5 fish you eat, makes you grow!<br>
In the peace mode, you have 2 enemies: the shark which makes you lose once it eats you! and the stinky fish which makes you rotate and prevent you from eating anything.<br><img src="https://github.com/Aml-Hassan-Abd-El-hamid/Fishy-Game/blob/main/stinky.png" width="170" height="170" > Stiky fish<br>

In the war mode, your only enemy is the bombs that come from the warship, you have to avoid them at all costs!<br> 

A demo video bfor our game: https://youtu.be/sUe1R777zTM


## Code Description:

### **Language: ** java

### Versions of Processing 3:

```
-we run this code on those versions of processing:
    -Processing 3.5.3 
    -Processing 3.5.4
```
We used different oop techniques:<br>
- We used the concept of " Inheritance " 
  where class "Shark" and class "Food" extend from class "Fishs"(parent)
- We also made sure to apply the abstraction concept.<br>
### To help you understand the code 

If you are new to processing3, you need to know that the setup function will be called only 1 time and that is why we use it to load all the images at once, load the sound and also initializing our fishes hashmaps.<br><br>
the start_page class is the only class which is clled at the draw function - which is looping all the game - and it calls all the other classes based on the page_flag that's raised.<br><br>
Initially the page_flag = 0 so the start page will be showed, if the player pressed "options" page_flag will be equal to 700 and the options class will be called.<br> if the player pressed "start peace" page_flag will be equal to -8 and the Body and Player classes will be called.<br>  if the player pressed "start war" page_flag will be equal to -7 and the Body, Player and War  classes will be called.<br> 





<pre><code>
       ____    _____    _____   ____  ____                                           <br/>
      //|/’   //   ))  //   \\  '||'  '||'                                      __   <br/>
     // ||    ||   '  //    //   ||    ||        _____ __   _    ___   ___   __//_.  <br/>
    //==||     '===.  ||    '    ||    ||       //  |7 '||  ||  //  ))((  ' ' //     <br/>
   //   \\         || ||         ||    ||       ||  ||  ||  || ||===’  '=.   // ._   <br/>
 .//     \\_. ((___// \\____./  _||_  _||_      \\__||  \\__/L \\___. .__))  \\__))  <br/>
                                                    ||<br/>
                                                    |L.                      </code></pre> 
Text-based (and ascii-based) adventure web game made with Godot

# The plot
The story takes place in a typical medieval-fantasy village called **Txtown**. One morning, the Queen makes an announcemente to all of her subjects: a powerful magic curse is leading to the town, a curse that only ASCII worlds can have: slowly, but inexorably, everything is turning into **not-translatable characters** (Like � or ▭).

The Queen is sure that the non-translatable pest is caused by somebody, an infector who spreads the curse to damage nearby kingdoms, and capturing them will stop the plague; she therefore put a huge bounty on the head of this mysteryous person, and whoever will bring her enough proofs will become a hero AND a very rich person.

In all this, you are just a common villager. Will you spend the day hunting and completing random side quests? Or will you help and find the infector? (Actually, is there an infector at all? Is there a plague at all? Will this random object be useful for some quest?)

<pre><code>
                        /\      <br>
                       /()\     <br>
                    |\/    \/|  <br>
         __        _|/ |^^| \|_ <br>
     *?\/(*        \|  ('')  |/          *) _     <br>
      ('’)          |  \--/  |         *?Y V(*    <br>
      >||< 'o,     _|_/ )( \_|_         ('o')  'o,<br>
     ( /\ \%      |@@|_(/\)_|@@|        >/Y\<__%  <br>
       |\ /     __|__|_/__\_|__|__     (/___\ /   <br>
     ._|/_.  _-'------------------'-_  ._\|/_.    </code></pre> 

# The gameplay
ASCII Quest is basically a text adventure, where you click on an option to perform an action, but there's also a time factor: in fact, the game world reacts to the game time, as any real word would (for example, if in the game it's 12:30, most places will be closed for lunch). 

Some actions will require time to be completed. The time taken by an action is usually displayed near the option, like that:

<pre><code>Do option 1                (+10m)<br>
Do option 2 instead        (+30m)</code></pre> 

In this example, option 1 would take 10 minutes to be completed, while option 2 would take 30.
 
**IMPORTANT: certain actions may lie about the time they take, so that you won't be able to assume their outcome.**

In fact, Let's say you got in this situation:
<pre><code>You have three potions in front of you:<br>
one of them is harmless and tastes like chocolate, the others will make you faint for several hours.<br>
What do you do?<br><br>

Drink potion 1             (+10m)<br>
Drink potion 2             (+several hours)<br>
Drink potion 3             (+several hours)</code></pre> 
You (the player) know potion 1 is the safe one, because of those time labels. This is "guessing the outcome" and, while making the game easier, it's also rather anticlimatic. For that reason, in the game, potions 2 and 3 won't have "+ several hours" in their label, but "+10m", like potion 1, even if they WILL actually use several hours.

<pre><code>
                         _.---._                        /\     <br>
                       _(       )_                     /  \    <br>
        /\            (           )                    /  \    <br>
       /  \          (             )                  /    \   <br>
       /  \          (             )                  /    \   <br>
      /    \    .__.  (_         _)   ___            /      \  <br>
      /    \    ('')    (_______)   _(   )  __       /      \  <br>
     /______\   /  \      \ V /    (      ) \_\/7   /________\ <br>
________||_____( || )_____|___\___(________)___)________||_________</code></pre> 

©️ 2021, Chiara Calzolari - All Rights Reserved
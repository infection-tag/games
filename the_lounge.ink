A game by Nishant Kompella.
Welcome to the Lounge!
->activity
TODO: Add more options

== activity ==
What would you like to do here?
*Mess with chance 
    ->chance
*Strike up a conversation 
    ->conversation
*Leave the lounge 
    ->leave_lounge
*Learn more 
    ->learn_more

==leave_lounge ==
    You left the lounge. Come back soon! ->DONE 

==chance==
    **A coin 
        ->coin
    **A die 
        ->die
TODO: Add a blackjack/lottery option?? Bingo???

== bingo ==
    ->activity

== die ==
How many faces?
        ***6
            You rolled a 6-sided die. It landed on {~1| 2| 3| 4| 5| 6}. 
                ->die
        ***10
            You rolled a 10-sided die. It landed on {~1| 2| 3| 4| 5| 6| 7| 8| 9| 10}. 
                ->die
        ***15
            You rolled a 15-sided die. It landed on {~1| 2| 3| 4| 5| 6| 7| 8| 9| 10| 11| 12| 13| 14| 15}. 
                ->die
        ***20
            You rolled a 20-sided die. It landed on {~1| 2| 3| 4| 5| 6| 7| 8| 9| 10| 11| 12| 13| 14| 15| 16| 17| 18| 19| 20}. 
                ->die
        ***Go back to the chance area 
                ->chance
        ***Go back 
                ->activity
        
== coin ==
You tossed a coin. It landed on {~Heads| Tails}.
            ****Flip again 
                ->coin
            ****Go back 
                ->chance
            ****Play with dice 
                ->die
            ****Leave the chance area
                ->activity
        
==conversation==
TODO: add a random character chooser to talk to.
    Okay! Finding someone random to talk to...
    You are talking to {~a nice old man| a basketball coach| a soccer mom| A frazzled woman with a pink purse| A businessman with a suit and tie and briefcase}.
    **Hello.
        Partner: {~Why, hello there!| Hey!| Howdy!| Hello!} 
        What would you like to discuss?
        ***Have you seen any good movies lately?
            ->movie_chat
        ***What brings you here?
            ->other_chat
    **Goodbye.
        Partner: {~A bit rude, don't you think? Very well, goodbye.| Goodbye.| Nice to meet you.| See you!| 'Later.} 
        ->activity
    
==learn_more == //info about me, and the game, and my other games.
    This is an interactive fiction game written in the INK language in the Inky code editor.
    **Learn more about Ink and Inky.
        To learn more about Ink, go to: www.inklestudios.com/ink/ ->END
    **Learn more about the developer.
        Nishant Kompella is not a game developer. In fact, the only things he has to teach himself Ink are vague screenshots. He has no talent at all. He writes interactive fiction games during school hours and is, consequently, failing his classes. He has written other games, but they suck. ->END
        
== movie_chat ==
Partner: Uh, yeah, I just saw {~Back to the Future| Inception| Casablanca| The Shawshank Redemption| The Godfather| GoodFellas}.
            ****Nice! I have seen that movie too! 
                Oh! Cool! {~Look, I have to go.| See you!}
                Your Partner has left.
                *****Talk to someone else
                    ->conversation
                *****Go back.
                    ->activity
                TODO: Add more of this convo to this.
            ****Oh. I have not seen that movie before.
                Oh! Well, I liked it.
                    *****Chat about something else 
                        ->other_chat
                    *****Chat about another movie 
                    ->movie_chat
                                
TODO: Figure something out here.
== other_chat ==
    Well, I'm here {~because I wanted to {~chill| socailize| play games| chat}| because my friends are here}.
    Have you played any video games lately? I have recently played {~Uncharted 4| Spider-Man| Hitman| Super Mario Oddessy}.
    ->activity
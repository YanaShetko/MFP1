//
//  main.m
//  Higher or Lower
//  thaks Ray W
//  Created by Yana on 06.11.2018.
//  Copyright © 2018 Yana. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {

        int answer = 0;     // stores the correct answer
        int guess = 0;      // stores the player's guess
        int turn = 0;       // stores the number of turn
        
        // use a built-in random number generator, arc4random, which generates random numbers.
        answer = arc4random() % 100 + 1;      // to scale our values back between 1 and 100
        // NSLog(@"The random value is %i", answer);   // shows what value is
        
        while (guess != answer) {
            turn++;
            
        NSLog(@"Guess #%i: Enter a number between 1 and 100", turn);
        // use function for accepting input from the user to use in our app
        scanf("%i", &guess);

            if (guess > answer){    // is guess greater than answer?
                NSLog(@"Lower!");   // do it if the condition above is true
            }
            else if (guess < answer) {  // is guess less than answer?
                NSLog(@"Higher!");      // do it if the condition above is true
            }
            // will execute if none of the preceding conditions were true
            else {
                NSLog(@"Correct! The answer was %i", answer);
            }
        }
        NSLog(@"It took you %i tries", turn);   // display the current value of "turn"

    }
    return 0;
}

/* chrtox - character to hexidecimal
 * Copyright (C) 2024 E.M. Xelendbach
 */

#include <stdbool.h>
#include <stdio.h>

int main()
{   int character;
    bool should_separate = false;
    while((character = fgetc(stdin)) != EOF)
    {   if(should_separate) printf(" ");
        else should_separate = true;
        printf("%02x", (unsigned char)character);
    }
    printf("\n");
    return 0;
}

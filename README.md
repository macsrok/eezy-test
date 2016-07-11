# eezy-test

This is my implimentation of the eezy-test.

The only special deployment instruction is the 500px api key must be set as the evniorment variable FIVEHUNDREDPXKEY on any machine running this code.

If you wish to tally the click counts you may run the following at the rails console.
`Photo.print_click_count search_term` where search_term is the term you with to tally.

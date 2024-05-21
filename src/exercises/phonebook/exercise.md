# Phonebook

Write a phone book application in ksh.

The application should present a menu to the user with the following entries:
1) insert a name. 2) delete a name. 3) search for a name. 4) show current phonebook. 5) show number of entries in current phonebook. 6) update a name. 7) exit.

The user will select the operation required.
1. insert a name - will receive a name, check that it is not in the current phonebook and
will emit an error and will return to the loop if that is the case. If the name is a new
one then it will request a phone number and will insert that name into the phonebook.
2. delete a name - will receive a name, check that it is in the current phonebook and
proceed to delete it from the current phonebook.
3. search for a name - will receive a name, check that it is in the current phonebook,
find the phone number related to it and will show it on the screen (only the number
is to be shown).
4. show current phonebook - will print the content of the current phonebook.
5. show number of entries in current phonebook - will only show the number of entries
in the current phonebook.
6. update a name - will receive a name, will check that the name is in the current
phonebook, then will receive a phone number and will update that entry to this phone number.
7. exit - will exit the application with a "success" return code.

Technical instructions
* Use select for the menu.
* Use exit to exit the application.
* Use PS3 environment var to customize the prompt.
* Create an empty phonebook if one doesn't exist.
* Only hardcode the name of the phonebook file ONCE in your application.
* Use case for handling the user input.
* Use /dev/null to avoid unnecessary output from tools you are using.
* The phonebook should be stored on the HARD DRIVE.

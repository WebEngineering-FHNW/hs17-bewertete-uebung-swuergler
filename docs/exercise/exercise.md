# WebEngineering Module, Graded Exercise

## Commit Proposal

Matriculation Number: 16-660-631

Project idea short description: 
If you're in a group, there tasks that no one wants to do
or feels responsible for (Clean blackboard, empty trash or whatever).
Often the same person is doing this job.

This web application should be a simple solution for this problem.

* Every user can add tasks with a small description
* All the created tasks should be visible for the users
* The Administrator of the group can randomly and automatically assign the tasks
* Every user can view the assigned tasks


## Project confirmation

Confirmed.

This problem is usually called "tragedy of the commons" where the Swiss word
is probably "Allmende" (this might be a good name for your project).
I look very much forward to see your solution.


## Project delivery <to be filled by student>

How to start the project: (if other than `grailsw run-app`)

How to test the project:  (if other than `grailsw test-app`)

Project description:      (if other than `/about/index`) Errors form the validator because of reference to the css file with ${ressource}, doesn't work with normal href

External contributions:   –  

Other comments:           –  

I'm particular proud of:  Design


## Project grading 

Description given as part of the app (not as static html).
Some issues with html validity (e.g. div as child of ul).
Kudos for trying to use the semantic tag "content" but it is misplaced here since it 
covers the navigation, not the content.

The application works fine. 
NB: When logged in as non-admin, the "assign open tasks" button is shown but leads to
access denied when clicked on. I assume that this is by design - but it is better UX
to not show the button in such cases or even better, showing it disabled.
What is somehow missing is a "my tasks" view.

Functionality:
Create/List for task domain plus user, role, and user/role mapping for role-based security.
Two filters for task list: all/unassigned.
Admin: random assignment of tasks.
Access restrictions based on roles.
Custom error pages.
User input is correctly html-escaped when rendered (avoids XSS attacks).

Engineering:
Commit log is ok.
Minimal tests for user/role.
HTML validation tends to have some issues (ul nesting in navigataion, role="alert"?).
Commenting is sparse but the code is pretty much self-explaining.
Naming is ok.
The views tend to have more duplication than needed.
There are a few dependencies but those are mostly standard (spring security) or
for beautification only.
NB: I like the way that you coded the TaskController.

I award an extra point for the technical challenge of using role-based security,
which we did not cover in the module.
Another extra point is awarded for the design of the landing page. 

Congratulations!
You have created good-looking, multi-user, distributed, DB-based web application
from scratch all on your own. It would have been perfect had it come with better
testing and more attention to html validity.

Total Grade: 5.9







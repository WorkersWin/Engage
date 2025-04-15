# TODO


## Sign Ups
* Switch from HTTP basic auth to controller-based password

## Campaigns

* Title:string, Description:text, kickoff_date, launch_date, completion_date, outcome:text, successful:boolean, active:boolean

## Committees

* Name:string, Description:text, formed_date:date, disbanded_date:date
* CommitteeMembers: contacts:references, committees:references, joined_date:date, active:boolean
** We can enhance it if necessary to track people joining and leaving and rejoining.

## Communications

* contact communicated with contact

## Communication Types

* voice/video call, text, email, face to face, etc.

## Contacts

* reports_to: manager:references (contacts)
* phone contact opt-in boolean and date
* email contact opt-in boolean and date
* text message contact opt-in boolean and date
* See above: Contact methods per employee need to be tracked (phone # most importantly if we need to do a phone tree)
* Name autocomplete
* Cleaner way to add assessment
* Ability to assign a specific member as the main contact for potential recruits
* Contact-specific notes
* Charts / breakdowns of support by teams are great.
* Management / reporting structures are independent of "units" or teams.
* Created_by: user_id (to track who entered the record)
* Visualization of org is very very helpful.
* Org changes frequently and the structure of the org can change overnight. We need a mode where we can confirm things are the same and change things that are different.

## Events

* attendees using autocomplete
* event host / owner / location / note
* need to display datetime in user's local time
* Search with name autocomplete
* Calendar view of events

## Issues

## Locations

* code, name, city, state, country, description

## Notes

* Creation
* Linking to contacts, tasks, meetings, assessments, etc.

## Organizations

## Reports

* Weekly campaign tracking stuff
* OC members
* Active, inactive, former

## Tasks

* Task creation
* Tasks can be assigned to multiple contacts
* Reminders



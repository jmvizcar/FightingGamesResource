# README

This is was created as a supplement to Fighting Games Glossary (FGG) with visual examples. However by the time the project neared completion, FGG had implemented that feature into their website. As such I have chosen to sunset this site and upload it for documentation purpose.

## Specs
### Ruby Version
This project was built with Ruby 3.0.3 and Rails 6.1

### System dependencies
The project was built to have no dependencies other than Ruby, Rails, and sqlite3.

### Database
The database for the project is composed of 5 databases that interconnect with one another. The five being:
  * Games
  * Terminology
  * Developers
  * Series
  * Consoles

With the remaining files being foreign keys linking the databases together.
#### Database seed
The seed file to create the database has also been provided so one may be able to freely create a copy of the initial database.

## Deployment
Running the "rails server" command will launch the site.

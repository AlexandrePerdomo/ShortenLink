# README

### Developer Challenge

This folder is a solution to the technical challenge proposed by WizVille.

## Configuration

=> Install Ruby 3.0.0 : ``` rbenv install 3.0.0 ``` for rbenv users

=> Install bundler : ``` gem install bundler -v 2.2.8 ```

=> run bundler : ```bundle install ```

=> start rails server : ```rails s ```

## Models

=> Link : id, code, url, timestamps. Each link get a unique code. The url saved is the one where shorten link will redirect.

=> LinkVisit : id, link_id, timestamps. LinkVisits are items used to handle colmn chart tracks. Each time a shorten link is followed, a LinkVisit item will be generated.

## Actions

With this app, you can easily shorten your links. All informations are registred in cookies, no authentication is required.

=> Link can be created by giving an url and press "Create Link" button. This action check if URL is valid.

=> Link can be deleted by clicking the trash icon.

=> Link visits can be followed by clicking the bar chart icon.

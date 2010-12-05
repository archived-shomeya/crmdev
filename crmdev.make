api = 2
core = 7.x

projects[entity][subdir] = contrib
projects[entity][type] = module
projects[entity][download][type] = git
projects[entity][download][url] = http://github.com/fago/entity.git
projects[entity][download][revision] = "DRUPAL-7--1"

projects[rules][subdir] = contrib
projects[rules][type] = module
projects[rules][download][type] = git
projects[rules][download][url] = http://github.com/fago/rules.git
projects[rules][download][revision] = "DRUPAL-7--2"

projects[addressfield][subdir] = contrib
projects[addressfield][version] = 1.0-alpha1

projects[ctools][subdir] = contrib
projects[ctools][type] = module
projects[ctools][download][type] = cvs
projects[ctools][download][module] = contributions/modules/ctools
projects[ctools][download][revision] = "HEAD"

projects[views][subdir] = contrib
projects[views][type] = module
projects[views][download][type] = cvs
projects[views][download][module] = contributions/modules/views
projects[views][download][revision] = "DRUPAL-7--3"

projects[crm][type] = module
projects[crm][download][type] = git
; The following line specifies the main Drupal crm repository on GitHub as
; the download source. To retrieve a different version, you can alter the URL,
; even using a private GitHub URL.
projects[crm][download][url] = git://github.com/shomeya/crm.git
projects[crm][download][revision] = "7.x-1.x"

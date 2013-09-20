delayed_touch_associations
==========================

Delayed Job integration for the touch option of ActiveRecord belongs_to association


## Installation

Add to your Gemfile:

        gem 'delayed_touch_associations'


## Usage

Inside your ActiveRecord model:

        include DelayedTouchAssociations

Be sure to include the module AFTER all the associations are defined.
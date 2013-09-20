delayed_touch_associations
==========================

Delayed Job integration for the touch option of ActiveRecord belongs_to association


## Installation

Add to your Gemfile:

        gem 'delayed_touch_associations'


## Usage

        include DelayedTouchAssociations

Be sure to include the model AFTER all the associations are defined.
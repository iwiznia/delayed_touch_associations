delayed_touch_associations
==========================

Delayed Job integration for the touch option of ActiveRecord belongs_to association.

This gem delays all the touch callbacks defined by the touch option of all the belongs_to associations in the models it's included.
It calls the delay method defined in delayed_job when the callback is triggered, minimizing the time it takes to save the record.

## Installation

Add to your Gemfile:

        gem 'delayed_touch_associations'


## Usage

Inside your ActiveRecord model:

        include DelayedTouchAssociations

Be sure to include the module AFTER all the associations are defined.
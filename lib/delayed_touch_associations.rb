require "delayed_touch_associations/version"

module DelayedTouchAssociations
  extend ActiveSupport::Concern

  included do
    self.reflect_on_all_associations.select {|a| a.options[:touch] }.each do |association|
      touch = association.options[:touch]
      method_name = "belongs_to_touch_after_save_or_destroy_for_#{association.name}"
      define_method(method_name) do
        record = send(association.name)

        unless record.nil?
          if touch == true
            record.delay.touch
          else
            record.delay.touch(touch)
          end
        end
      end
    end
  end
end

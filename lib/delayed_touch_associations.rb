require "delayed_touch_associations/version"

module DelayedTouchAssociations
  extend ActiveSupport::Concern

  included do
    self.reflect_on_all_associations.select {|a| a.options[:touch] }.each do |association|
      method_name = "belongs_to_touch_after_save_or_destroy_for_#{association.name}"
      define_method(method_name) do |delayed = false|
        if delayed
          super()
        else
          self.delay.send(method_name, true)
        end
      end
    end
  end
end

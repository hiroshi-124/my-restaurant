class ApplicationRecord < ActiveRecord::Base
  self.abstract_class = true
  enum answer_to_return: {"電話" => 0, "メール" => 1}
end

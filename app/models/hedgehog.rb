class Hedgehog < ActiveRecord::Base
    validates :name, presence: true
    validates :age, presence:true
    validates :age, inclusion: {in:1..40}
end

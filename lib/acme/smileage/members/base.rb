require "date"

module Acme
  class Smileage
    module Members
      class Base
        attr_reader :first_name_ja, :family_name_ja
        attr_reader :first_name_en, :family_name_en
        attr_reader :birthday, :blood_type, :hometown
        attr_reader :emoticon, :join_date, :graduate_date

        def name_ja
          self.family_name_ja + self.first_name_ja
        end

        def name_en
          self.first_name_ja + " " + self.family_name_ja
        end

        def active?(date=nil)
          return true unless self.graduate_date

          date ||= Date.today
          self.join_date <= date and date <= self.graduate_date
        end

        def graduated?(date=nil)
          return false unless self.graduate_date

          date ||= Date.today
          self.graduate_date < date
        end
      end
    end
  end
end

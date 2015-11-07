class Label < ActiveRecord::Base
 # #2
   has_many :labelings
 # #3
   belongs_to :labelable, polymorphic: true
   def self.update_labels(label_string)
     new_labels = []
     unless label_string.nil? || label_string.empty?
       label_string.split(",").each do |label|
       label_name = label.strip
       new_label = Label.find_or_create_by(name: label_name)
       new_labels << new_label
     end
   end
   new_labels
 end
 # #4
   has_many :topics, through: :labelings, source: :labelable, source_type: :Topic
 # #5
   has_many :posts, through: :labelings, source: :labelable, source_type: :Post
 end

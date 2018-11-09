# == Schema Information
#
# Table name: responses
#
#  id               :bigint(8)        not null, primary key
#  user_id          :integer          not null
#  answer_choice_id :integer          not null
#  created_at       :datetime         not null
#  updated_at       :datetime         not null
#

class Response < ApplicationRecord
  
  belongs_to :answer_choice,
    primary_key: :id,
    foreign_key: :answer_choice_id,
    class_name: :AnswerChoice
    
  belongs_to :respondant,
    primary_key: :id,
    foreign_key: :user_id,
    class_name: :User
    
  has_one :question,
    through: :answer_choice,
    source: :question
    
  def sibling_responses
    self.question.responses.where.not(id: self.id)
  end
  
  def respondant_already_answered?
    sibling_responses.exists?(user_id: respondant.id)
  end
  
  def no_rigging
    self.question
  end
    
end

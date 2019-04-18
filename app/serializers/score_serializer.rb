class ScoreSerializer < ActiveModel::Serializer
  attributes :id, :user_id, :user_score
end

class Task < ApplicationRecord
  validates :name, length: { maximum: 25, minimum: 1 } 
  validates :status, presence: true

  enum status: {
    to_do: 'A fazer',
    in_progress: 'Em progresso',
    completed: 'Concluída'
  }, _suffix: true
end
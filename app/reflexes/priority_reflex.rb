# frozen_string_literal: true

class PriorityReflex < ApplicationReflex

  def change
    note = Note.find(element.dataset[:id])
    note.update(priority: element.dataset[:priority])
  end
end

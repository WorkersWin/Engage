class AddNoteReferenceToAssessments < ActiveRecord::Migration[7.0]
  def change
    add_reference :assessments, :note, index: true
  end
end

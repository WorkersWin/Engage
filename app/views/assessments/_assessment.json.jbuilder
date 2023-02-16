json.extract! assessment, :id, :assessed_on, :assessment_level_id, :assessor_id, :assessee_id, :created_at, :updated_at
json.url assessment_url(assessment, format: :json)

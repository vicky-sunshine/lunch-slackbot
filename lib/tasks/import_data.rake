namespace :import_data do

  desc 'lunch choices'
  task lunch: :environment do
    YAML.load_file('lib/tasks/lunch.yml').each do |item|
      data = item.split(',')
      attributes = { name: data[0], location: data[1] }
      Lunch.create(attributes) 
    end
  end

end

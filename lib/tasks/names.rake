namespace :names do
    task seed: :environment do    
        Test.destroy_all    
        namearray = ['Matt', 'Giovanni', 'Bob']
        namearray.each do |namez|    
            Test.create!(
            name: namez    
        )       
        end    
    end
end

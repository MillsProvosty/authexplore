require 'rails_helper'

RSpec.describe 'user Index page', type: :feature do
  describe 'As a visitor on the user index' do
    before :each do
      @martin = User.create!(name: "Martin", email: "Martin@email.com")
      @martha = User.create!(name: "Martha", email: "Martha@email.com")
      @mills = User.create!(name: "Mills", email: "Mills@email.com")
      @michael = User.create!(name: "Michael", email: "Michael@email.com")

      visit users_path
    end

    describe 'I see a list of all users in teh database' do
      it 'shows each users name and email' do
        within("#user-#{@martin.id}") do
          expect(page).to have_content(@martin.name)
          expect(page).to have_content(@martin.email)
        end

        within("#user-#{@martha.id}") do
          expect(page).to have_content(@martha.name)
          expect(page).to have_content(@martha.email)
        end

        within("#user-#{@mills.id}") do
          expect(page).to have_content(@mills.name)
          expect(page).to have_content(@mills.email)
        end

        within("#user-#{@michael.id}") do
          expect(page).to have_content(@michael.name)
          expect(page).to have_content(@michael.email)
        end
      end
    end
  end
end

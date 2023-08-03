require 'capybara'

World(Capybara::DSL)

module Pages
    include Capybara::DSL
    include RSpec::Matchers

    class SignUp
    	def fill_in_fields
    		timestamp = Time.now.to_i.to_s
        	
        	# click the agreement checkbox first to prevent DOM updates due to field interactions from hiding it
        	find('.//label[@for="signUpAgreement"]').click 

        	find('.//button[@class="close_btn_thick"]').click

            find('.//label[@for="radioPersonal"]').click

            find_field('First and Last Name').set('Test User')
            find_field('Email').set('test_email' + timestamp + '@test.com')
            find_field('Username').set('t_u_' + timestamp)

            find_field('Password').set('Test#password2')
    	end
    	
        def valid_signup
        	fill_in_fields
            
            submit_form
        end
        
        def submit_form
        	find('.//button[@type="submit"]').click.click # single click usually doesnt work on this button
        end
        
        def verify_error_message(requiredField)
        	expect(page).to have_content 'Please correct the following errors:'
        	expect(page).to have_content 'Error: ' + requiredField + ' is required.'
        end
        
        def clear_field(field)
        	find_field(field).set('')
        end
    end
    
    class MyChoiceEnrollment
    	def verify_signed_in
    		Capybara.using_wait_time(10) do
				expect(page).to have_xpath('.//span[text()="Log Out" and @class="ups-icon_text"]')
			end
    	end
    end
end

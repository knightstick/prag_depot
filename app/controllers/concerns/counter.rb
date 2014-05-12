module Counter
	extend ActiveSupport::Concern

	private

		def count_visits
			session[:counter] = 0 if session[:counter].nil?
			session[:counter] += 1
		end

		def reset_counter
			session[:counter] = 0
		end
end
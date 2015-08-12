class Account < ActiveRecord::Base
	#validates :company, presence: true, uniqueness: true
	#validates :subdomain, presence: true, uniqueness: true, exclusion: { in: %w(www) }
	after_create :create_tenant
	private
	def create_tenant
		Apartment::Tenant.create(subdomain)
	end
end
# frozen_string_literal:true

Sequel.extension :at_time_zone

correct_sql = "SELECT created_at AT TIME ZONE 'America/New_York'"
correct_qualified_sql =
	"SELECT items.created_at AT TIME ZONE 'America/New_York'"

describe 'Sequel::Extensions::AtTimeZone' do
	before do
		@db = Sequel.mock
	end

	describe 'Sequel::Identifier#at_time_zone' do
		it 'should return correct SQL inside `select { }`' do
			@db.select { created_at.at_time_zone('America/New_York') }.sql
				.should.equal correct_sql
		end

		it 'should return correct SQL with Sequel.[]' do
			@db.select(Sequel[:created_at].at_time_zone('America/New_York')).sql
				.should.equal correct_sql
		end
	end

	describe 'Sequel::QualifiedIdentifier#at_time_zone' do
		it 'should return correct SQL inside `select { }`' do
			@db.select { items[:created_at].at_time_zone('America/New_York') }.sql
				.should.equal correct_qualified_sql
		end

		it 'should return correct SQL with Sequel.[]' do
			@db.select(
				Sequel[:items][:created_at].at_time_zone('America/New_York')
			).sql.should.equal correct_qualified_sql
		end
	end
end

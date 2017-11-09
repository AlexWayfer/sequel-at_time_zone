# frozen_string_literal: true

module Sequel
	module Extensions
		module AtTimeZone
			VERSION = '0.0.0'
		end
	end

	module SQL
		## Patch Identofier
		class Identifier
			def at_time_zone(time_zone)
				Sequel.lit(
					':column AT TIME ZONE :time_zone', column: self, time_zone: time_zone
				)
			end
		end

		## Patch QualifiedIdentifier
		class QualifiedIdentifier
			def at_time_zone(time_zone)
				Sequel.lit(
					':column AT TIME ZONE :time_zone', column: self, time_zone: time_zone
				)
			end
		end
	end
end

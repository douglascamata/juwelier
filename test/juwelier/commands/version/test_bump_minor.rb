require 'test_helper'

class Juwelier
  module Commands
    module Version
      class TestBumpMinor < Test::Unit::TestCase

        should "call bump_minor on version_helper in update_version" do
          mock(version_helper = Object.new).bump_minor

          command = Juwelier::Commands::Version::BumpMinor.new
          command.version_helper = version_helper

          command.update_version
        end
      end
    end
  end
end

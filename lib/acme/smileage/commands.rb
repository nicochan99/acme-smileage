require "acme/smileage/commands/oricon"

module Acme
  class Smileage
    module Commands
      class Main < Thor
        desc "oricon", "Show oricon data"
        subcommand "oricon", Acme::Smileage::Commands::Oricon
      end
    end
  end
end

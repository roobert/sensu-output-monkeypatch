require "sensu-output-monkeypatch/version"

module Sensu
  module Plugin
    class Check
      class CLI < Sensu::Plugin::CLI
        def output(msg=@message)
          puts msg
        end
      end
    end
  end
end

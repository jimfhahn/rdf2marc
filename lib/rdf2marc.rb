# frozen_string_literal: true

require 'zeitwerk'
require 'dry-struct'
require 'dry-types'
require 'marc'
require 'sparql'
require 'linkeddata'
require 'byebug'

loader = Zeitwerk::Loader.new
loader.push_dir(File.absolute_path("#{__FILE__}/.."))
loader.setup

module Rdf2marc
end
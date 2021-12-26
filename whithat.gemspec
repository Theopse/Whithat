#!/usr/bin/env ruby
# encoding: utf-8
# -*- coding: utf-8 -*-
# vim:set fileencoding=utf-8:
# frozen_string_literal: true

# = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = =
# This File is From Theopse (Self@theopse.org)
# Licensed under BSD-2-Caluse
# File:	whithat.gemspec (Whithat/whithat.gemspec)
# Content:	NIF
# Copyright (c) 2021 Theopse Organization All rights reserved
# = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = =

# require_relative "Library"
# require_relative "Source"

libs = [File.expand_path('../Library', __FILE__), File.expand_path('../Source', __FILE__)]
libs.each { |lib| $LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib) }

require "whithat.rb"

Gem::Specification.new do |spec|
	spec.name          = "whithat"
	spec.version       = Whithat::VERSION
	spec.authors       = ["Rintim"]
	spec.email         = ["rintim@foxmail.com"]

	spec.summary       = ""
	spec.description   = ""
	spec.homepage      = "https://www.theopse.org/projects/whithat"
	spec.required_ruby_version = ">= 3.0.2"

	spec.metadata["allowed_push_host"] = ""

	spec.metadata["homepage_uri"] = spec.homepage
	spec.metadata["source_code_uri"] = "https://gitlab.com/theopse/whithat"
	spec.metadata["changelog_uri"] = "https://www.theopse.org/projects/whithat/changelog.md"

	# Specify which files should be added to the gem when it is released.
	# The `git ls-files -z` loads the files in the RubyGem that have been added into git.
	spec.files = Dir.chdir(File.expand_path(__dir__)) do
		`git ls-files -z`.split("\x0").reject do |f|
			(f == __FILE__) || f.match(%r{\A(?:(?:test|spec|features)/|\.(?:git|travis|circleci)|appveyor)})
		end
	end
	spec.bindir        = "exe"
	spec.executables   = spec.files.grep(%r{\Aexe/}) { |f| File.basename(f) }
	spec.require_paths = %w[lib src Library Source]

	# Uncomment to register a new dependency of your gem
	# spec.add_dependency "example-gem", "~> 1.0"

	# For more information and examples about making a new gem, checkout our
	# guide at: https://bundler.io/guides/creating_gem.html
end

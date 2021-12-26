#!/usr/bin/env ruby
# encoding: utf-8
# -*- coding: utf-8 -*-
# vim:set fileencoding=utf-8:
# frozen_string_literal: true

# = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = =
# This File is From Theopse (Self@theopse.org)
# Licensed under BSD-2-Caluse
# File:	cli.rb (Whithat/Library/cli.rb)
# Content:	Whithat Application Main Module
# Copyright (c) 2021 Theopse Organization All rights reserved
# = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = =

libs = [File.expand_path('../../Library', __FILE__), File.expand_path('../../Source', __FILE__)]
libs.each { |lib| $LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib) }

require "whithat.rb"
require "result.rb"

module Whithat::CLI
	# @param [Array(String)] args
	# @return [Integer]
	def self.main(args)
		puts "NFI"
		return Whithat::Result::Failure
	end
end
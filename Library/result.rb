#!/usr/bin/env ruby
# encoding: utf-8
# -*- coding: utf-8 -*-
# vim:set fileencoding=utf-8:
# frozen_string_literal: true

# = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = =
# This File is From Theopse (Self@theopse.org)
# Licensed under BSD-2-Caluse
# File:	result.rb (Whithat/Library/result.rb)
# Content:
# Copyright (c) 2021 Theopse Organization All rights reserved
# = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = =

begin "Get Library Paths"
	libs = [File.expand_path('../../Library', __FILE__), File.expand_path('../../Source', __FILE__)]
	libs.each { |lib| $LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib) }
end

begin "Load Required Module"
	require "whithat.rb"
end

module Whithat::Result
	Success = 0
	Failure = 1
end
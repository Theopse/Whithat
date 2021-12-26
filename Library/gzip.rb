#!/usr/bin/env ruby
# encoding: utf-8
# -*- coding: utf-8 -*-
# vim:set fileencoding=utf-8:
# frozen_string_literal: true

# = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = =
# This File is From Theopse (Self@theopse.org)
# Licensed under BSD-2-Caluse
# File:	gzip.rb (Whithat/Library/gzip.rb)
# Content:	Gzip Simplified Methods
# Copyright (c) 2021 Theopse Organization All rights reserved
# = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = =

begin "Get Library Paths"
	libs = [File.expand_path('../../Library', __FILE__), File.expand_path('../../Source', __FILE__)]
	libs.each { |lib| $LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib) }
end

begin "Load Required Module"
	require "whithat.rb"
	require "zlib"
	require "stringio"
end

module Whithat::Gzip

	begin "Modify String Class"
		refine String do
			begin :G
				begin [:gunzip, 0]
					def gunzip
						return String.new if self.empty?
						StringIO.open(self) do |aStringIO|
							# Make sure to close the reader
							aReader = Zlib::GzipReader.new(aStringIO)
							result = aReader.read
							aReader.close
							result
						end
					end
				end

				begin [:gzip, 0]
					def gzip
						result = String.new
						unless self.empty? then
							StringIO.open(result) do |aStringIO|
								aWriter = Zlib::GzipWriter.new(aStringIO)
								aWriter.write(self)
								aWriter.close
							end
						end
						result
					end
				end
			end
		end
	end

end
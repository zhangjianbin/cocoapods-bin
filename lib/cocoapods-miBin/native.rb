# frozen_string_literal: true

require 'cocoapods'

if Pod.match_version?('~> 1.4')
  require 'cocoapods-miBin/native/podfile'
  require 'cocoapods-miBin/native/installation_options'
  require 'cocoapods-miBin/native/specification'
  require 'cocoapods-miBin/native/path_source'
  require 'cocoapods-miBin/native/analyzer'
  require 'cocoapods-miBin/native/installer'
  require 'cocoapods-miBin/native/pod_source_installer'
  require 'cocoapods-miBin/native/linter'
  require 'cocoapods-miBin/native/resolver'
  require 'cocoapods-miBin/native/source'
  require 'cocoapods-miBin/native/validator'
  require 'cocoapods-miBin/native/acknowledgements'
  require 'cocoapods-miBin/native/sandbox_analyzer'
  require 'cocoapods-miBin/native/podspec_finder'
end

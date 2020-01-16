# frozen_string_literal: true

require 'cocoapods-miBin/native/sources_manager'

Pod::HooksManager.register('cocoapods-miBin', :pre_install) do |_context, _|
  require 'cocoapods-miBin/native'
end

Pod::HooksManager.register('cocoapods-miBin', :source_provider) do |context, _|
  sources_manager = Pod::Config.instance.sources_manager
  podfile = Pod::Config.instance.podfile

  if podfile
    # 添加二进制私有源 && 源码私有源
    added_sources = [sources_manager.code_source, sources_manager.binary_source]
    if podfile.use_binaries? || podfile.use_binaries_selector
      added_sources.reverse!
   end
    added_sources.each { |source| context.add_source(source) }
  end
end

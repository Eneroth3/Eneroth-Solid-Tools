#-------------------------------------------------------------------------------
#
#    Author: Julia Christina Eneroth
# Copyright: Copyright (c) 2018
#   License: MIT
#
#-------------------------------------------------------------------------------

require "extensions.rb"

# Eneroth Extensions
module Eneroth

# Solid Tools Extension
module SolidTools

  path = __FILE__
  path.force_encoding("UTF-8") if path.respond_to?(:force_encoding)

  PLUGIN_ID = File.basename(path, ".*")
  PLUGIN_DIR = File.join(File.dirname(path), PLUGIN_ID)

  REQUIRED_SU_VERSION = 14

  EXTENSION = SketchupExtension.new(
    "Eneroth Solid Tools",
    File.join(PLUGIN_DIR, "main")
  )
  EXTENSION.creator     = "Julia Christina Eneroth"
  EXTENSION.description = "Solid tools designed to feel native to SketchUp."
  EXTENSION.version     = "3.0.0"
  EXTENSION.copyright   = "2018, #{EXTENSION.creator}"
  Sketchup.register_extension(EXTENSION, true)

end
end

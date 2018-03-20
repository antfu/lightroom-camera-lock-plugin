local function sectionsForTopOfDialog(f, _)
  return {
    -- Section for the top of the dialog.
    {
      title = LOC "$$$/InfoProvider/PluginManager=Camera Lock",
      f:row {
        spacing = f:control_spacing(),
        f:static_text {
          title = "This is an open source Lightroom plugin for marking 'locked' file on your camera to Lightroom.",
          fill_horizontal = 1
        }
      }
    }
  }
end

return {
  sectionsForTopOfDialog = sectionsForTopOfDialog
}

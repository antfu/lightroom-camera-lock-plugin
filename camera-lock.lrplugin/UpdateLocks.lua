
import "LrTasks".startAsyncTask(
  function()
    local catalog = import "LrApplication".activeCatalog()
    local photos =
      catalog:findPhotos {
      -- searchDesc = {
      --   criteria = "rating",
      --   operation = ">",
      --   value = 3
      -- }
    }
    catalog:withWriteAccessDo("Update Camera Locks", function()
      for _, photo in ipairs(photos) do
        if photo:checkPhotoAvailability() then
          local path = photo:getRawMetadata("path")
          if import "LrFileUtils".isWritable(path) == false then
            photo:setRawMetadata('pickStatus', 1)
          end
        end
      end
    end)
  end
)

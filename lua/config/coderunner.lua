local M = {}

function M.setup()
  require("code_runner").setup{
    filetype = {
      java = "cd $dir && javac $fileName && java $fileNameWithoutExt",
      c = "cd $dir && gcc $fileName -o $fileNameWithoutExt && ./$fileNameWithoutExt && rm $fileNameWithoutExt",
      python = "python -u",
      rust = "cd $dir && rustc $fileName && $dir/$fileNameWithoutExt"
    }
  }
end

return M

-- bootstrap lazy.nvim, LazyVim and your plugins
require("config.lazy")

require("lazy").setup({
  -- Your existing plugins...
  { import = "plugins/bash" },
})

function RunCurrentFile()
  local file = vim.fn.expand("%:p")
  local filename = vim.fn.expand("%:t:r") -- filename without extension
  local ext = vim.fn.expand("%:e")
  local cmd = ""

  if ext == "c" then
    cmd = string.format("gcc '%s' -o /tmp/%s && /tmp/%s", file, filename, filename)
  elseif ext == "cpp" then
    cmd = string.format("g++ '%s' -o /tmp/%s && /tmp/%s", file, filename, filename)
  elseif ext == "java" then
    -- Check for Maven project
    local pom_path = vim.fn.findfile("pom.xml", ".;")
    if pom_path ~= "" then
      local main_class = "com.example.App" -- Default maven class
      cmd = string.format("mvn compile exec:java -Dexec.mainClass=%s", main_class)
    else
      -- Handle plain IntelliJ-style project: compile src/*.java, run Main
      local src_dir = vim.fn.getcwd() .. "/src"
      local main_class = filename -- assumes current file has main()
      cmd = string.format("javac %s/*.java && java -cp %s %s", src_dir, src_dir, main_class)
    end
  elseif ext == "py" then
    cmd = string.format("python3 '%s'", file)
  else
    vim.notify("Unsupported file type: " .. ext, vim.log.levels.ERROR)
    return
  end

  require("toggleterm.terminal").Terminal
    :new({
      cmd = cmd,
      direction = "float",
      close_on_exit = false,
      hidden = true,
      cwd = vim.fn.getcwd(),
    })
    :toggle()
end

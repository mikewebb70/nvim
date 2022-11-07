local status, comment = pcall(require, "Comment")
if not comment then
  return
end

comment.setup()

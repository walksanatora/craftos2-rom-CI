--CI library for CraftosPC CI situations
status = {}
status.ok = 0
status.error = 1

fs.makeDir("/.ci")

function exit(status, message)
    local ci_file = fs.open("/.ci/status","wb")
    ci_file.write(tostring(status))
    ci_file.write("\t")
    ci_file.write(message or "")
    ci_file.close()
    os.shutdown()
end
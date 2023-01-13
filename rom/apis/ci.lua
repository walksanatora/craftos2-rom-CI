--CI library for CraftosPC CI situations
fs.makeDir("/.ci")

function exit(status)
    local ci_file = fs.open("/.ci/status","wb")
    ci_file.write(tostring(status))
    ci_file.close()
    os.shutdown()
end
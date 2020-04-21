library(mindr)


mm(
  from = "./mindbp/steps.Rmd",
  type = "file",
  root = "BP STEPS",
  to = "test.mm",
  options = markmapOption(
    color = 'category20b',
    linkShape = 'bracket'
  )
)


mm(
  from = "./mindbp/steps.Rmd",
  type = "file",
  root = "BP STEPS",
  to = "STEPS.mm"
)

library(webshot)
install_phantomjs()


webshot("./bp-steps.html",
        "bp-steps.pdf", 
        delay = 20)


mm(
  from = "./mindbp/statement.Rmd",
  type = "file",
  root = "STEPS 语句",
  to = "test.mm",
  options = markmapOption(
    color = 'category20b',
    linkShape = 'bracket'
  )
)

mm(
  from = "./mindbp/flow-control.Rmd",
  type = "file",
  root = "STEPS 流控制",
  to = "test.mm",
  options = markmapOption(
    color = 'category20b',
    linkShape = 'bracket'
  )
)

mm(
  from = "./mindbp/defines.Rmd",
  type = "file",
  root = "DEFINEs 库",
  to = "test.mm",
  options = markmapOption(
    color = 'category20b',
    linkShape = 'bracket'
  )
)

mm(
  from = "./mindbp/defines.Rmd",
  type = "file",
  root = "GROUPs 库",
  to = "test.mm",
  options = markmapOption(
    color = 'category20b',
    linkShape = 'bracket'
  )
)


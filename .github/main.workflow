workflow "Accessibility checks" {
  on = "deployment_status"
  resolves = ["a11y axe test"]
}


action "a11y axe test" {
  uses = "docker://nextgentravel/a11y-multiple-page-checker:latest"
}


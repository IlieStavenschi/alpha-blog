# Pin npm packages by running ./bin/importmap

pin "application", preload: true
pin "@hotwired/turbo-rails", to: "turbo.min.js", preload: true
pin "@hotwired/stimulus", to: "stimulus.min.js", preload: true
pin "@hotwired/stimulus-loading", to: "stimulus-loading.js", preload: true
pin_all_from "app/javascript/controllers", under: "controllers"
pin "bootstrap", to: "https://cdn.skypack.dev/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js", preload: true
pin "jquery", to: "https://cdn.skypack.dev/jquery", preload: true
pin "popper.js", to: "https://cdn.skypack.dev/@popperjs/core", preload: true


// Configure your import map in config/importmap.rb. Read more: https://github.com/rails/importmap-rails
import "@hotwired/turbo-rails";
import "controllers";
import * as bootstrap from "bootstrap";
import $ from "jquery";
import { createPopper } from "popper.js";

window.bootstrap = bootstrap;
window.$ = window.jQuery = $;
window.createPopper = createPopper;

import Rails from "@rails/ujs";
import * as ActiveStorage from "@rails/activestorage";
import "channels";

Rails.start();
ActiveStorage.start();

import "bootstrap/dist/js/bootstrap.bundle";
import "@fortawesome/fontawesome-free/js/all";
import "../src/application.scss";

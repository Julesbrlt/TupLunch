// Import and register all your controllers from the importmap via controllers/**/*_controller
import { application } from "controllers/application"
import FavoritesController from "./favorites_controller"
import CounterController from "./counter_controller"
import { eagerLoadControllersFrom } from "@hotwired/stimulus-loading"
eagerLoadControllersFrom("controllers", application)
application.register("favorites", FavoritesController)
application.register("counter", CounterController)

(in-package :cl-user)


(defpackage :bodge-ode.def
  (:use :cl :asdf))

(in-package :bodge-ode.def)

(defsystem bodge-ode
  :description "Thin wrapper around Open Dynamics Engine for cl-bodge system"
  :version "0.0.1"
  :author "Pavel Korolev"
  :mailto "dev@borodust.org"
  :license "MIT"
  :depends-on (alexandria cffi cl-autowrap cl-plus-c)
  :serial t
  :components ((:file "packages")
               (:file "libode")
               (:file "autowrap")
               (:file "main")
               (:module spec
                        :components ((:static-file "lib.h")))))
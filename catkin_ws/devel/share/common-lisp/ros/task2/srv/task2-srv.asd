
(cl:in-package :asdf)

(defsystem "task2-srv"
  :depends-on (:roslisp-msg-protocol :roslisp-utils )
  :components ((:file "_package")
    (:file "hello" :depends-on ("_package_hello"))
    (:file "_package_hello" :depends-on ("_package"))
  ))
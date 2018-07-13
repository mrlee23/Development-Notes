(require 'org)
(setq org-publish-project-alist
		  `(("Org"
		     :base-directory "./"
		     :base-extension "org"
		     :publishing-directory ,(expand-file-name "../gh-pages")
		     :publishing-function org-html-publish-to-html
		     :override t
		     :headline-levels 4
		     :recursive t
		     :auto-preamble nil
		     )
		    ("Publish"
		     :components ("Org"))
		    ))
(org-publish "Publish")

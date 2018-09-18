(require 'org)
(setq org-publish-project-alist
		  `(("Static"
		     :base-directory "./"
		     :base-extension "js\\|css"
		     :recursive t
		     :publishing-directory ,(expand-file-name "./assets")
		     :publishing-function org-publish-attachment
		     )
		    ("Org"
		     :base-directory "./"
		     :base-extension "org"
		     :publishing-directory ,(expand-file-name "./gh-pages")
		     :publishing-function org-html-publish-to-html
		     :override t
		     :headline-levels 4
		     :recursive t
		     :auto-preamble nil
		     )
		    ("Publish"
		     :components ("Static" "Org"))
		    ))
(org-publish "Publish")

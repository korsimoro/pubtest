# Yes Deployment MkDocs

**thank you for your patience while search and navigation load** :D

This is for testing purposes, and practice working with MkDocs.

---

Because of the way MkDocs works, it's best to use the `master` branch for your markdown and configuration, and publish to `gh-pages`.

Reason being, every time you make a change, MkDocs `touches` every single file in the build... meaning when I was building in the master branch I would see those 1000 files change, every time I made an edit.

This way, the UX of my editor is way less clogged, and it makes the project easier to contribute to.. because otherwise mydocs writes over your configuration files on github so others only see the finished site files.

* [https://www.mkdocs.org/](https://www.mkdocs.org/)
* [/mkdocs/mkdocs/wiki/MkDocs-Plugins](https://github.com/mkdocs/mkdocs/wiki/MkDocs-Plugins)
* [MkDocs Material Components - Cheat Sheet](https://yakworks.github.io/mkdocs-material-components/cheat-sheet/)
* [mkdocs.readthedocs.io](https://mkdocs.readthedocs.io)
* [mkdocs/mkdocs/wiki/MkDocs-Plugins](https://github.com/mkdocs/mkdocs/wiki/MkDocs-Plugins)
* [mkdocs-awesome-pages-plugin](https://github.com/lukasgeiter/mkdocs-awesome-pages-plugin)
* [mkdocs.plugins/](https://www.wheelodex.org/entry-points/mkdocs.plugins/)
* [metadata-for-markdown-mkdocs/](https://blogs.pjjk.net/phil/metadata-for-markdown-mkdocs/)
* [https://gristlabs.github.io/mkdocs-windmill/](https://gristlabs.github.io/mkdocs-windmill/#)
  * [gristlabs/mkdocs-windmill](https://github.com/gristlabs/mkdocs-windmill)
* [https://python-markdown.github.io/extensions/](https://python-markdown.github.io/extensions/)
  * [Python-Markdown/markdown/wiki/Third-Party-Extensions](https://github.com/Python-Markdown/markdown/wiki/Third-Party-Extensions)
* [https://python-markdown.github.io/extensions/smarty/](https://python-markdown.github.io/extensions/smarty/)
* [injecting-pdf-html-page/](https://scalified.com/2018/01/16/injecting-pdf-html-page/)


## Commands

* `mkdocs new [dir-name]` - Create a new project.
* `mkdocs serve` - Start the live-reloading docs server.
* `mkdocs build` - Build the documentation site.
* `mkdocs help` - Print this help message.
* `mkdocs gh-deploy` - Build and Push to GitHub. (assuming you've set the repository in mkdocs.yml and you have SSL enabled, otherwise it just builds)

## Project layout

    mkdocs.yml    # The configuration file.
    docs/
        index.md  # The documentation homepage.
        ...       # Other markdown pages, images and other files.

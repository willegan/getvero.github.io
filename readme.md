# help.getvero.com

This is the Vero help resource.

All submissions are welcome. To submit a change, fork this repo, commit your changes, and send us a [pull request](http://help.github.com/send-pull-requests/).

## Setup

Ruby 1.9.3 or above is required to build the site.


```sh
$ gem install jekyll
```

Clone this project and start the jekyll server

```sh
$ jekyll serve
```

Jekyll has [some nice documentation](http://jekyllrb.com/docs/usage/) to get you started.

## Styleguide

As our docs are using markdown, there is no much styling to do. Most of it is already done.:

    ---
    layout: articles
    title:  "Page title"
    categories: "categories goes here"
    ---
    # Page title

    Content

    ## Subtitle

    {% include highlighted.html content="This content will be inserted in a highlighted section" %}


**Note**: Find all the [markdown syntax here](http://daringfireball.net/projects/markdown/syntax)

## Development

When you are adding a new articles, create a file under the _articles folder with the following format: **file-name.md**.

```sh
$ jekyll serve
Configuration file: /projects/vero-docs/_config.yml
            Source: /projects/vero-docs
       Destination: /projects/vero-docs/_site
      Generating...
                    done.
 Auto-regeneration: enabled for '/projects/vero-docs'
Configuration file: /projects/vero-docs/_config.yml
    Server address: http://127.0.0.1:4000/help/
  Server running... press ctrl-c to stop.
```

Open **http://127.0.0.1:4000/help/** in your favourite browser.

This command starts a web server as well as watching your files being edited, so there's no need to stop and restart jekyll.

## Deploy

When happy with your changes run the following commands:

```sh
$ git add .
$ git commit -m "Description of what you have done"
$ git push
```
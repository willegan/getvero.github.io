# help.getvero.com

This is the Vero help resource.

All submissions are welcome. To submit a change, fork this repo, commit your changes, and send us a [pull request](http://help.github.com/send-pull-requests/).

## Setup

Ruby 1.9.3 or above is required to build the site.


  sh
  $ gem install jekyll

Clone this project and start the jekyll server

  sh
  $ jekyll serve

Jekyll has [some nice documentation](http://jekyllrb.com/docs/usage/) to get you started.

## Testing locally

To get started, run `jekyll serve`, and you should see the following in your console:

    sh
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

Open **http://127.0.0.1:4000/help/** in your favourite browser.

This command starts a web server as well as watching your files being edited, so there's no need to stop and restart jekyll.

## Adding articles

When creating a new article, add a file under the `/_articles` folder with the following format: **file-name.md**.

This file needs a manifest at the top that follows the format below:

    ---
    layout: articles
    title:  "Page title"
    categories: "getting-started 'some other category'"
    ---

You should put the article in a primary category. Add the category `getting-started` where an article also relates to getting new users started. Add the category `common-issue` where an article is a question raised by customers regularly. *Note: CATEGORIES ARE CASE SENSITIVE.*

Handling images, links and code snippets are typically done using `yml` files, located in `/_data`. For example, when referencing the Vero homepage, you should use the merge tag `{{link.vero.home}}`. In this way we can easily change links across our entire help documentation.

Images are stored in the folders `/assets/screenshots` (for Vero application screenshots) or `/assets/images` for other images. You should reference the location of these files in the `screenshots.yml` or `images.yml` files in `/_data`. Here's an example of an image loading the ALT tag and file from the `screenshots.yml` file:

    ![{{site.data.screenshots.unbounce.script['title']}}]({{site.data.screenshots.unbounce.script.image}})

From here, your article will be added to the index upon refresh.

## Styleguide and rules

The docs use Markdown, allowing easy handling of most styles. You can find a copy of all the available [Markdown syntax here](http://daringfireball.net/projects/markdown/syntax)

For clarity, we ask you to observe a few rules:

-   **Don't use How To**. You should not use 'How to' in the title of an article. For example, *"How to create a segment"* can be better written *"Create a segment"*. This is for clarity.
-   **Use markdown code blocks appropriately**. Indent large snippets of code with four spaces.
-   **Show inline code for data attributes**. Use the \` character to create inline code snippets. For example, when talking about a user property *first_name*, you should use `first_name`, as this is a data property. 
-   **Use *italics* for the names of objects in the UI**. Such as segment or campaign names i.e. *Paying_Customers*
-   **Use bold styles when mentioning buttons or actions taken in the UI**. For example: Press the **Save** button.
-   **Use screenshots wisely**. If the help doc is mentioning a button to press for example, take a small screenshot of the button rather than the whole screen. Try to only show the relevant elements in larger screenshots. Its better to show more zoomed in image than the whole screen. See the examples below:
    ![Good image](/assets/readme/goodimage.png?raw=true)
    ![Bad image](/assets/readme/badimage.png?raw=true)
-   **Try to make sure the space around images is even**.

We have also created a few custom snippets. The primary snippet is the `highlighted.html` snippet. You can insert a block of highlighted text like so:

    {% include highlighted.html content="This content will be inserted in a highlighted section" %}

Happy help docs!

## Deploy

When happy with your changes run the following commands:

```sh
$ git add .
$ git commit -m "Description of what you have done"
$ git push
```
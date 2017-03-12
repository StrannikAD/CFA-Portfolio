# Planning my portfolio
1. Answer Questions
  * What am I building?
  * Who am I building it for?
  * What features for I need to have?
2. User Stories
3. Model the Database
4. Think through the pages I need in my application.


## Questions

1. I am building a porfolio: a place where I can share examples of my work, blog and have people contact me.
2. I am building it for myself, the community and potential employers.
3. Features I want to include:
* Posts
  * Create / Edit /Destroy
  * Markdown
  * Syntax highlighting
  * Comments (Disqus)

* Projects
  * Create / Edit /Destroy

* Contact
  * Contact Form
  * Sendgrid

* User (Devise)


## User Stories

* As a user, I want to be able to tell visitors about myself so that visitors and potentials employers can get a better sense for what I am like.
* As a user, I want to show the visitors and potential employers examples of my work, or stuff I've built.
* As a user, I want to show the visitors and potential employers examples of my work, or stuff I've built.
* As a user, I want to be able to have visitors contact me through a form on my site.
* As a user I want to be able to create posts so that I can share what I am learning on my blog.
* As a user, I want to be able to edit & destroy post, so that I can manage my blog.

## Modeling the Data

**Post**
  * title:string
  * content:text

**Project**
  * title:string
  * description:text
  * link:string

**User**


## Think through the pages I need in my application.

- Home
- Posts#index
- Post#Show
- Projects
- Projects#Show
- Contact

# Template to Build business sites from

## TO DO
- ~~Move all *common* page data to the main PagePresenter so that its children can inherit the basics and expand upon it when necessary.~~
- ~~Footer component.~~
- email/info capture frame that takes in one piece of info at a time.
- ~~transitions and animations~~

### ChatGPT Questions and Suggestions Part 1

Here are a few areas where I’d love to get your input—so we can make sure this foundation really fits your long-term goals:

1. Presenter Scope & Complexity

~~Are you comfortable having all your page data live in these presenter classes? At what point would you consider extracting smaller objects (e.g. a HeroComponent PORO or a ViewComponent) instead of piling everything onto one presenter?~~

~~How do you plan to test these presenters? Do you have a strategy (unit tests, snapshot tests) to catch regressions as you tweak partials or data shapes?~~

2. Inline Overrides vs. Defaults

We talked about using .merge(...) to override a couple of values inline. How often do you anticipate doing that? Do you think you’ll end up with a lot of one-off overrides, or will most pages really share the same defaults?

If you find yourself overriding the same property on multiple pages, would it make sense to add that into your base presenter instead?

3. Partial Organization & Naming

Right now everything lives under app/views/shared/. As your library of partials grows, do you see benefit in grouping by feature (e.g. /components/hero/_banner.html.erb, /layouts/header.html.erb), or even switching to a component-based directory structure?

How strict do you want to be about naming conventions? (e.g. always *_section on presenters, always _section.html.erb on partials?)

4. Routing & Page Configuration

With the dynamic show action, page slugs map directly to presenters and templates. How will you handle cases where a page needs a custom controller behavior (e.g. an AJAX endpoint, or special before_action)?

Do you plan to store any of this page metadata in the database (CMS-style), or is everything going to stay hard-coded in presenters?

5. Performance & Caching

Some of these sections—like feature lists or pricing tables—are static once deployed. Would you want to cache individual presenter methods or partials in memory or via fragment caching?

Have you thought about Tailwind’s PurgeCSS step and how unused CSS might be pruned as your component library grows?

6. Styling & Accessibility

Are you planning to add any global design-system rules (colors, spacing scale) that should live in a theme file, so individual partials just reference semantic classes?

How will you audit for accessibility? Do you want to bake in ARIA labels or role attributes centrally in your partials, or handle them case by case?

7. Internationalization & Content

If you ever need multiple languages, would you hand off the entire presenter hash through I18n.t, or localize individual strings inside the views?

Do you expect any of these text blocks (headlines, descriptions) to be editable by non-developers? If so, how might you surface that content—via YAML, a headless CMS, or some other data store?

8. Future Page Patterns

As you spin up more bespoke pages, do you see the need for layout-specific presenters (e.g. AdminPagePresenter vs MarketingPagePresenter)?

Would you ever want to define nested sections (a section that itself renders other sections), and if so, how do you want to structure that in your presenter API?

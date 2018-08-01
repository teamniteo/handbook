# Git conventions and best practices

To make sure that your commits and your Pull Requests contain everything for a successful review, follow the conventions below:

### Git commit

A single commit contains only a single "unit of work". For example, if you are adding a new section to this Handbook, but then notice a typo in some other section, the typo should be in a separate commit.

The commit message should look like this:

> Short, imperative summary of changes, up to 72 chars
>
> More detailed explanatory text. Wrap it to 72 characters.
> The blank line separating the summary from the body is critical;
> tools like GitHub can get confused if you omit it.
>
> In big repos, you can use a `[tag]` prefix in the summary, if you
> wish.
>
> The summary is all about "What does this commit do?" while the body is
> "Why does it do this?" and "Why was this approach chosen over others?"
>
> Further paragraphs come after blank lines.
>
> It is critical that you explain *why* you did the change. Don't state
> the obvious "File updated", "Text removed". Imagine you are reading
> this message after two years; how would you explain your future self
> the reason for this change?
>
>   - Bullet points are okay, too
>
>   * Typically a hyphen or asterisk is used for the bullet,
>     preceded by a single space, with blank lines in
>     between.
>
> At the bottom of the commit message, reference the Issue(s) to which
> this commit belongs, in the format below. If referencing an Issue in the
> repo that this commit is in, it's fine to just use the issue number.
> Otherwise, use the long format with organization/repo prefix.
>
> Refs #123.
> Refs niteoweb/operations#123.

Bonus karma points for reading [this detailed essay about good commits](https://chris.beams.io/posts/git-commit/).

A few examples of excellent commits:
 * TODO
 * TODO
 * TODO


### Pull Request

When your commit is ready to be applied to code/text inside GitHub, you need to present it with a Pull Request.
Similarly to commits, a Pull Request should only include commits on a single topic. For example, if you are adding a new section to this Handbook, but then notice that some other section is also missing, that second section should be in a separate Pull Request.

That said, the typo from above, which comes in its own commit, can be added to your Pull Request. In other words, a Pull Request contains one "main" commit where things happen and up to a few "trivial cleanup" commits, such as typo fixes.

When you hit the `Create pull request` button, put on your reviewer hat and double-check your changes via GitHub Web UI; it uses different color schemes than your local editor and you might catch problems you did not see when looking at your changes in your editor.

Similarly to commits, Pull Requests should look like this:

> Short, up to 72 characters summary of changes
>
> The beef of the Pull Request can be copied over from your "main" commit.
> However, remember to also include description of any cleanup that you have
> done in additional "trivial cleanup" commits.
>
> Like with commit messages, remember to reference the Issue to which the
> Pull Request belongs.
>
> Refs #123.
> Refs niteoweb/operations#123.

A few examples of excellent Pull Requests:
 * https://github.com/niteoweb/ebn/pull/3520
 * TODO
 * TODO

In repositories where deployment involves database migrations and build verifications, we use a
`PULL_REQUEST.md` template to provide delivery verification steps.


### Keep Nitean in the loop

It's important to regularly push your local changes to GitHub, even when they are only a work-in-progress. And post a short comment to the related GitHub issue(s). There are several benefits to doing so:
* You have a backup of your work in case of a stupid mistake (whoooops I just deleted the whole folder) or a hardware failure.
* If you get sucked into some other task, it's easier to switch back to the original one, because you know where you've left it.
* Other Niteans can spot fundamental problems in your approach and help you get back on the right track before spending days painting yourself into a corner.
* Other Niteans can take over your work if you are suddenly unavailable for whatever reason, business or personal.

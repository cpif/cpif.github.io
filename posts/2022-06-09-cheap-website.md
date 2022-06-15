---
abstract: "How to get a free website."
year: 2022
month: 06
day: 09
title: A Free Website
---

I just searched for "web hosting" and clicked the first result.
It happened to be GoDaddy, and I looked at their "Economy Plan":
you pay *only* $215 today.

That's stupid.

Here's an easy, quick way to get a free website.

# Domain Name

First, visit [Freenom]. Search for your desired website name and
click "Check Availability." Hopefully some results are available.

Freenom is kind of tricky; it looks like you can select one of
the domains from the search results, but this won't work. What
you have to do is this: once you find a domain name that sounds
good, you have to search *again*, for that domain. So, for
example, if you searched `my-website` and `my-website.tk` showed
up in the search results, you have to go back and search for
`my-website.tk`. Then and only then will you be able to select
it.

Next you'll want to make a burner email account to sign up with
-- I trust you know how to do that all by yourself. Put that in
and verify your email. Then it'll ask you for your name and
address; if I were you I'd put some bogus information here, too
-- they won't check it. Somewhere during this process, it'll ask
you how long you want the domain for. The longest you can have it
for free is 12 months, which is a perfect amount of time for your
site to exist.

Now, from your dashboard, click "Manage Freenom DNS." Under "Add
Records," you should see four fields. Leave "Name" blank, set
"Type" to "A" and "TTL" to "3600" (if they aren't already), and
type "185.199.108.153" into "Target."

Click "+ More Records," then repeat three times, adding
"185.199.109.153," "185.199.110.153," and "185.199.111.153" to
the "Target" fields.

Step 1 complete! Now let's set up your site.

# GitHub

Now go to [GitHub]. Create an account with your burner email. You
can make the username anything you like, but let's say you pick
`my-website`.

Click "Create New Repository." Now, this next step is important:
if your username is `my-website`, you'll want to name your
repository `my-website.github.io`. The rest of the fields you can
fill out any way you like. Make sure the repository is set to
"Public," not "Private." Save and submit.

The next screen will be kind of cluttered and confusing, but find
and click "creating a new file."

Name this file `index.html`. If you know HTML, go ahead and enter
it here. If you don't, put in the following:

```
<!doctype html>
<html>
<head>
<title>My Website</title>
</head>
<body>
<h1>Welcome to my website</h1>
<p>I'm happy to see you here!</p>
</body>
</html>
```

Save and submit.

Now, go to "Settings." From there, find "Pages" in the left-hand
menu. Under "Custom Domain," enter the domain name you got from
Freenom earlier and hit "Save."

The next step involves getting over some glitchiness with GitHub
and Freenom talking to each other. You want to check "Enforce
HTTPS," under the "Custom Domain" box. 

If you can't check it, refresh the page. If that doesn't help,
wait fifteen minutes and refresh again. If that doesn't help,
click "Remove" next to "Custom Domain" and reenter everything.
Keep doing this until "Enforce HTTPS" works.

Then wait some more.

Once GitHub has issued you an HTTPS certificate and accepted that
your domain is properly configured... *voilà*! You have your own
website!

# Going Further

From the GitHub repository you created, you can make more `.html`
files with additional content. You'll have to learn HTML to
handle that part. I recommend W3Schools if you need help.

Phooey to you, GoDaddy.

[Freenom]: https://www.freenom.com/
[GitHub]: https://github.com/

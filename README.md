# leagify blog

This is the source code (using the [Hugo Static Site Templating engine](https://gohugo.io/)) for the [Leagify github pages site](https://leagify.github.io/).

The code is split into two repositories. The source code is here, and the public-facing code is on the [organization github page](https://github.com/Leagify/leagify.github.io).

This follows the example listed in the Hugo docs here: https://gohugo.io/hosting-and-deployment/hosting-on-github/#host-github-user-or-organization-pages

The purpose is to provide more information about what Leagify is, and how people can participate in it.

## Development

You can develop this site using GitHub Codespaces:

1. Open this repository in GitHub Codespaces
2. Wait for the development environment to set up (Hugo will be installed automatically)
3. Run `hugodev` in the terminal to start the development server (this is a preconfigured alias)
4. Make your changes to the Markdown files
5. Preview your changes in the browser (Codespaces will prompt you to open the preview)

### Local Development

If running locally:
```bash
hugo server
```

### GitPod (Legacy)

If running in GitPod, running the server requires a slightly different command: `hugo server --baseUrl $(gp url 1313) --appendPort=false`

Once the above command is running, make sure to expose port 1313.

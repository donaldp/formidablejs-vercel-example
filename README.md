# Formidable Example

This repo is a brief example of using an Formidablejs app that can be deployed with Vercel.

## Deploy Your Own

Deploy your own Formidable project with Vercel.

[![Deploy with Vercel](https://vercel.com/button)](https://vercel.com/import/project?template=https://github.com/donaldp/formidablejs-vercel-example)

_Live Example: https://formidablejs-vercel-example.vercel.app/_

### How I Created This Example

To get started with Formidable, you can use the [`craftsman new hello-world`](https://www.formidablejs.org/docs/) command to initialize a new project:

Install the `craftsman` cli globally with:

```shell
npm install -g @formidablejs/craftsman
```

You can then create a new project with:

```shell
$ craftsman new hello-world
```

### Vercel Configuration

Before you deploy your app, you'll need to know your project ID and org ID. You can get them from Vercel. You can find your project ID from your project settings, and your org ID from your [account settings](https://vercel.com/account). Alternatively, you can link your project to Vercel. This can be done by using `npx vercel link`. This will create a `.vercel` folder with the `project.json` file which contains the `projectId` and `orgId`.

You will also need a token from Vercel. You can generate one from your Vercel account settings.

### Github Configuration

To setup automatic deployments, you will need to go to your Github project settings, and add the folllowing secrets:

`VERCEL_ORG_ID` - to your Vercel org ID

`VERCEL_PROJECT_ID` - to your Vercel project ID

`VERCEL_TOKEN` - to your Vercel token

#### Formidable Environment Variables

You will need to add the following environment variables to your Github project:

`APP_NAME` - the name of your application, .e.g. `Formidable Example`.

`APP_ENV` - the environment of your application, .e.g. `development`.

`APP_KEY` - the key of your application, run `craftsman key` to generate one.

`APP_DEBUG` - set to `true` to enable debug mode. Debug mode is disabled by default.

`APP_URL` - the url of your application, .e.g. `https://formidablejs-vercel-example.vercel.app`. You can skip this if you don't know your application url.

### Deploying

Assuming your default branch is `dev`, your application should now be deployed to Vercel.

You can change the branch name under the `.github/workflows/deploy.yml` file.

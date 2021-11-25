# Starter Template for Small Projects or Static Websites

This is a starter template for small projects or static websites.

Here Tailwind CSS is set up and configured with PostCSS and Vite (A build tool that significantly improves the front-end development experience).

Follow the getting started guide below to build a static web page with Tailwind CSS. At the end you can also optimize for production to end up with a very tiny bundle size that can be served on a website.

## Getting Started

1. Clone the repository

```
git clone {{ git repository }} {{ project folder name }}
```

Alternatively you can download the zip file and unzip it.

2. Open the project in Visual Studio Code.

3. Open a new terminal in Visual Studio Code and install the project dependencies

```
npm install
```

4. Build the initial css using Tailwind CSS

```
npm run generate
```

5. Run the project using the Vite server

```
npm run develop
```

## How to Use

1. Go to the `index.html` and remove the `<h1>` element and start building your project.

2. If you need to add more HTML pages, add them to the `root` folder.

3. To extract classes and use the `@apply` directive, edit the custom css file in `src > tailwind.css` file. Add any amount of custom css in this file then run `npm run generate` to generate a new `style.css` file.

**NOTE:** DO NOT edit the file `style.css` directly. The css in that file is generated from `src > tailwind.css` using Tailwind CSS when you type the `npm run generate` command.

## Optimize for production

When it is time to deploy the project to production, simply run the following command

```
npm run build
```

An application bundle will be produced that is suitable to be served over a static hosting service. It is also important to note that `vite preview` (run using the script command `npm run serve`) is intended for previewing the build locally and not meant as a production server.

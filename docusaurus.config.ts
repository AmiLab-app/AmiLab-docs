import {themes as prismThemes} from 'prism-react-renderer';
import type {Config} from '@docusaurus/types';
import type * as Preset from '@docusaurus/preset-classic';

const logoSvg = `
  <svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 32 32">
    <defs>
      <radialGradient id="mark" cx="30%" cy="30%" r="90%">
        <stop offset="0%" stop-color="#e8788f"/>
        <stop offset="100%" stop-color="#4f46e5"/>
      </radialGradient>
    </defs>
    <rect width="32" height="32" rx="10" fill="url(#mark)"/>
    <rect x=".5" y=".5" width="31" height="31" rx="9.5" fill="none" stroke="#fff" stroke-opacity=".25"/>
  </svg>
`;
const logoDataUri = `data:image/svg+xml,${encodeURIComponent(logoSvg)}`;

const config: Config = {
  title: 'AmiLab',
  tagline: 'Design amigurumi patterns with a live 3D preview',
  favicon: logoDataUri,

  future: {
    v4: true,
  },

  url: 'https://docs.amilab.app',
  baseUrl: '/',

  organizationName: 'AmiLab-app',
  projectName: 'AmiLab-docs',

  onBrokenLinks: 'throw',

  markdown: {
    hooks: {
      onBrokenMarkdownLinks: 'warn',
    },
  },

  i18n: {
    defaultLocale: 'en',
    locales: ['en', 'en-GB', 'de', 'nl', 'ja'],
    localeConfigs: {
      en: { label: 'English (US)', htmlLang: 'en-US' },
      'en-GB': { label: 'English (UK)', htmlLang: 'en-GB' },
      de: { label: 'Deutsch', htmlLang: 'de' },
      nl: { label: 'Nederlands', htmlLang: 'nl' },
      ja: { label: '日本語', htmlLang: 'ja' },
    },
  },

  headTags: [
    {
      tagName: 'link',
      attributes: { rel: 'preconnect', href: 'https://fonts.googleapis.com' },
    },
    {
      tagName: 'link',
      attributes: { rel: 'preconnect', href: 'https://fonts.gstatic.com', crossorigin: 'anonymous' },
    },
    {
      tagName: 'link',
      attributes: {
        rel: 'stylesheet',
        href: 'https://fonts.googleapis.com/css2?family=Merriweather:ital,wght@0,400;0,700;1,400;1,700&family=Plus+Jakarta+Sans:wght@400;500;600;700&family=JetBrains+Mono:wght@400;500&display=swap',
      },
    },
  ],

  presets: [
    [
      'classic',
      {
        docs: {
          sidebarPath: './sidebars.ts',
          editUrl: 'https://github.com/AmiLab-app/AmiLab-docs/edit/main/',
        },
        blog: false,
        theme: {
          customCss: './src/css/custom.css',
        },
      } satisfies Preset.Options,
    ],
  ],

  themeConfig: {
    docs: {
      sidebar: {
        autoCollapseCategories: true,
      },
    },
    image: 'img/amiLab-social-card.png',
    colorMode: {
      defaultMode: 'light',
      disableSwitch: false,
      respectPrefersColorScheme: true,
    },
    navbar: {
      title: 'AmiLab',
      logo: {
        alt: 'AmiLab Logo',
        src: logoDataUri,
      },
      items: [
        {
          to: '/docs/tutorials/overview',
          activeBaseRegex: '/docs/tutorials/',
          position: 'left',
          label: 'Tutorials',
        },
        {
          to: '/docs/how-to/overview',
          activeBaseRegex: '/docs/how-to/',
          position: 'left',
          label: 'How-to Guides',
        },
        {
          to: '/docs/explanations/overview',
          activeBaseRegex: '/docs/explanations/',
          position: 'left',
          label: 'Explanations',
        },
        {
          to: '/docs/reference/overview',
          activeBaseRegex: '/docs/reference/',
          position: 'left',
          label: 'Reference',
        },
        {
          type: 'localeDropdown',
          position: 'right',
        },
        {
          href: 'https://github.com/AmiLab-app/AmiLab-docs',
          label: 'GitHub',
          position: 'right',
        },
        {
          href: 'https://amilab.app/app.html',
          label: 'Open app',
          position: 'right',
          className: 'navbar__app-button',
        },
      ],
    },
    footer: {
      style: 'dark',
      links: [
        {
          title: 'Documentation',
          items: [
            { label: 'Tutorials', to: '/docs/tutorials/overview' },
            { label: 'How-to Guides', to: '/docs/how-to/overview' },
            { label: 'Explanations', to: '/docs/explanations/overview' },
            { label: 'Reference', to: '/docs/reference/overview' },
          ],
        },
        {
          title: 'Contribute',
          items: [
            {
              label: 'Open an Issue',
              href: 'https://github.com/AmiLab-app/AmiLab-docs/issues',
            },
          ],
        },
        {
          title: 'More',
          items: [
            {
              label: 'Open AmiLab',
              href: 'https://amilab.app/app.html',
            },
            {
              label: 'GitHub',
              href: 'https://github.com/AmiLab-app/AmiLab-docs',
            },
          ],
        },
      ],
      copyright: `Copyright © ${new Date().getFullYear()} AmiLab. Designed in the browser, made by hand.`,
    },
    prism: {
      theme: prismThemes.github,
      darkTheme: prismThemes.dracula,
    },
  } satisfies Preset.ThemeConfig,
};

export default config;

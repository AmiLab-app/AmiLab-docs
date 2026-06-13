import {themes as prismThemes} from 'prism-react-renderer';
import type {Config} from '@docusaurus/types';
import type * as Preset from '@docusaurus/preset-classic';

const config: Config = {
  title: 'AmiLab',
  tagline: 'Design amigurumi patterns with a live 3D preview',
  favicon: 'img/favicon.ico',

  future: {
    v4: true,
  },

  url: 'https://AmiLab-app.github.io',
  baseUrl: '/AmiLab-docs/',

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
        href: 'https://fonts.googleapis.com/css2?family=Merriweather:wght@400;600;700&family=Plus+Jakarta+Sans:wght@400;500;600;700&family=JetBrains+Mono:wght@400;500&display=swap',
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
        src: 'img/logo.svg',
      },
      items: [
        { type: 'doc', docId: 'tutorials/overview', position: 'left', label: 'Tutorials' },
        { type: 'doc', docId: 'how-to/overview', position: 'left', label: 'How-to Guides' },
        { type: 'doc', docId: 'explanations/overview', position: 'left', label: 'Explanations' },
        { type: 'doc', docId: 'reference/overview', position: 'left', label: 'Reference' },
        {
          type: 'localeDropdown',
          position: 'right',
        },
        {
          href: 'https://github.com/AmiLab-app/AmiLab-docs',
          label: 'GitHub',
          position: 'right',
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
              label: 'GitHub',
              href: 'https://github.com/AmiLab-app/AmiLab-docs',
            },
          ],
        },
      ],
      copyright: `Copyright © ${new Date().getFullYear()} AmiLab. Built with Docusaurus.`,
    },
    prism: {
      theme: prismThemes.github,
      darkTheme: prismThemes.dracula,
    },
  } satisfies Preset.ThemeConfig,
};

export default config;

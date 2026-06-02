import type {SidebarsConfig} from '@docusaurus/plugin-content-docs';

const sidebars: SidebarsConfig = {
  docsSidebar: [
    'intro',
    'getting-started',
    {
      type: 'category',
      label: 'Features',
      items: [
        'features/editor',
        'features/3d-preview',
        'features/pattern-output',
      ],
    },
    'crochet-notation',
    'contributing',
  ],
};

export default sidebars;

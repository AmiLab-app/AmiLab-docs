import type {ReactNode} from 'react';
import clsx from 'clsx';
import Link from '@docusaurus/Link';
import Heading from '@theme/Heading';
import styles from './styles.module.css';

type CardItem = {
  title: string;
  link: string;
  description: ReactNode;
};

const CardList: CardItem[] = [
  {
    title: 'Tutorials',
    link: '/docs/tutorials/overview',
    description: (
      <>
        Step-by-step guided paths. Start here if you are new to AmiLab —
        follow a complete workflow from project creation to finished pattern.
      </>
    ),
  },
  {
    title: 'How-to Guides',
    link: '/docs/how-to/overview',
    description: (
      <>
        Task-specific recipes for common workflows. Need to adjust stitches
        or export a pattern? Find the solution in one page.
      </>
    ),
  },
  {
    title: 'Explanations',
    link: '/docs/explanations/overview',
    description: (
      <>
        Deep dives into how AmiLab works under the hood. Understand the
        algorithms, rendering, and design decisions.
      </>
    ),
  },
  {
    title: 'Reference',
    link: '/docs/reference/overview',
    description: (
      <>
        Quick look-up for UI elements, keyboard shortcuts, file formats, and
        terminology. Facts at your fingertips.
      </>
    ),
  },
];

function Card({title, link, description}: CardItem) {
  return (
    <div className={clsx('col col--3')}>
      <Link to={link} className={styles.cardLink}>
        <div className={clsx('card', styles.card)}>
          <div className="card__body">
            <Heading as="h3">{title}</Heading>
            <p>{description}</p>
          </div>
        </div>
      </Link>
    </div>
  );
}

export default function HomepageFeatures(): ReactNode {
  return (
    <section className={styles.features}>
      <div className="container">
        <div className="row">
          {CardList.map((props, idx) => (
            <Card key={idx} {...props} />
          ))}
        </div>
      </div>
    </section>
  );
}

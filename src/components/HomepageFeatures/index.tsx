import type {ReactNode} from 'react';
import clsx from 'clsx';
import Link from '@docusaurus/Link';
import Heading from '@theme/Heading';
import styles from './styles.module.css';

type CardItem = {
  title: string;
  kicker: string;
  link: string;
  description: ReactNode;
};

const CardList: CardItem[] = [
  {
    title: 'Tutorials',
    kicker: '01 / Learn',
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
    kicker: '02 / Solve',
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
    kicker: '03 / Understand',
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
    kicker: '04 / Look up',
    link: '/docs/reference/overview',
    description: (
      <>
        Quick look-up for UI elements, keyboard shortcuts, file formats, and
        terminology. Facts at your fingertips.
      </>
    ),
  },
];

function Card({title, kicker, link, description}: CardItem) {
  return (
    <div className={clsx('col col--3')}>
      <Link to={link} className={styles.cardLink}>
        <div className={clsx('card', styles.card)}>
          <div className="card__body">
            <span className={styles.cardKicker}>{kicker}</span>
            <Heading as="h3" className={styles.cardTitle}>
              {title}
            </Heading>
            <p>{description}</p>
            <span className={styles.cardArrow} aria-hidden="true">
              →
            </span>
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
        <div className={styles.sectionIntro}>
          <p className={styles.eyebrow}>
            <span className={styles.eyebrowDot} aria-hidden="true" />
            Find your path
          </p>
          <Heading as="h2">Choose what you need right now.</Heading>
          <p>
            Learn a complete workflow, solve one task, understand a concept,
            or check a precise detail.
          </p>
        </div>
        <div className="row">
          {CardList.map((props, idx) => (
            <Card key={idx} {...props} />
          ))}
        </div>
      </div>
    </section>
  );
}

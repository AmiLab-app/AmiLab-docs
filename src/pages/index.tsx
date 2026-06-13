import type {ReactNode} from 'react';
import clsx from 'clsx';
import Link from '@docusaurus/Link';
import useDocusaurusContext from '@docusaurus/useDocusaurusContext';
import Layout from '@theme/Layout';
import HomepageFeatures from '@site/src/components/HomepageFeatures';
import Heading from '@theme/Heading';

import styles from './index.module.css';

const previewImage = '/AmiLab-docs/img/hero-preview.png';

function HomepageHeader() {
  const {siteConfig} = useDocusaurusContext();

  return (
    <header className={styles.heroBanner}>
      <div className={clsx('container', styles.heroInner)}>
        <div className={styles.heroCopy}>
          <p className={styles.eyebrow}>
            <span className={styles.eyebrowDot} aria-hidden="true" />
            AmiLab documentation
          </p>
          <Heading as="h1" className={styles.heroTitle}>
            Design the shape.
            <br />
            Learn the <em>workflow.</em>
          </Heading>
          <p className={styles.heroSubtitle}>
            {siteConfig.tagline}. Follow focused guidance from your first
            piece to advanced shaping, color, and composition workflows.
          </p>
          <div className={styles.buttons}>
            <Link
              className={clsx('button button--lg', styles.primaryButton)}
              to="/docs/tutorials/overview">
              Start learning <span aria-hidden="true">→</span>
            </Link>
            <Link
              className={clsx('button button--lg', styles.secondaryButton)}
              to="/docs/reference/overview">
              Browse reference
            </Link>
          </div>
          <p className={styles.heroNote}>
            Start with a tutorial, or go directly to the task you need.
          </p>
        </div>

        <div className={styles.heroVisual}>
          <figure className={styles.previewCard}>
            <figcaption className={styles.previewBar}>
              <span className={styles.previewTag}>Live preview</span>
            </figcaption>
            <img
              className={styles.previewImage}
              src={previewImage}
              alt="A crocheted sphere rendered in the AmiLab 3D preview"
              width="900"
              height="640"
            />
          </figure>
          <div className={styles.previewBadge}>
            from <strong>shape</strong> to pattern
          </div>
        </div>
      </div>
    </header>
  );
}

export default function Home(): ReactNode {
  const {siteConfig} = useDocusaurusContext();
  return (
    <Layout
      title={siteConfig.title}
      description="AmiLab documentation — tutorials, how-to guides, explanations, and reference for designing amigurumi patterns with a live 3D preview.">
      <HomepageHeader />
      <main>
        <HomepageFeatures />
      </main>
    </Layout>
  );
}

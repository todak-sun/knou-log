async function start(fileName = 'TEST') {
  window.crawler = {};
  /**
   * @typedef {Object} PageMap
   * @property {boolean} loaded
   * @property {HTMLAnchorElement} downloader
   */
  const padL = (num, length, alt = '0') => (`${num}`.length >= length ? `${num}` : `${new Array(length - `${num}`.length).fill(alt).join('')}${num}`);

  const dom = {
    /**
     * @type {HTMLDivElement}
     */
    viewer: document.querySelector('#viewer'),
    /**
     * @type {HTMLDivElement}
     */
    viewContainer: document.querySelector('#viewerContainer'),
  };

  const pages = Array.from(dom.viewer.querySelectorAll('.page'));
  const MAX_PAGE_SIZE = pages.length;

  dom.viewContainer.scrollTo(0, 0);

  /**
   * @type {Record<number, PageMap>}
   */
  const pageMap = pages.reduce((acc, page) => {
    const pageNum = parseInt(page.getAttribute(`data-page-number`));
    acc[pageNum] = {};
    return acc;
  }, {});

  const program = setInterval(() => {
    const height = dom.viewContainer.getBoundingClientRect().height;
    dom.viewContainer.scrollTo({
      left: 0,
      top: dom.viewContainer.scrollTop + height,
    });

    pages
      .filter((page) => {
        const pageNum = parseInt(page.getAttribute(`data-page-number`));
        const loaded = page.getAttribute(`data-loaded`) === 'true' ? true : false;
        return !pageMap[pageNum].loaded && loaded;
      })
      .forEach((page) => {
        const pageNum = parseInt(page.getAttribute(`data-page-number`));
        const loaded = page.getAttribute(`data-loaded`) === 'true' ? true : false;
        const downloader = document.createElement('a');
        downloader.download = `${fileName}_${padL(pageNum, 5)}.png`;
        downloader.href = page.querySelector('canvas').toDataURL('image/png', 1.0);
        pageMap[pageNum] = { loaded, downloader };
        downloader.click();
      });

    if (pageMap[MAX_PAGE_SIZE].loaded) {
      clearInterval(program);
    }
  }, 1000);

  window.program.stopCrawler = () => clearInterval(program);
  window.program.pageMap = pageMap;
}
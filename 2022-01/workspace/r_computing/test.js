const fs = require(`fs/promises`);
const log = console.log;

async function run() {
  const content = await fs.readFile('./test.csv', {encoding: 'utf-8'});

  const arr = content.split(/\n/).map((row) => {
    return row.split(/,/).map((str) => str.trim());
  });

  const headers = arr.shift();
  const result = arr.reduce((acc, row) => {
    const item = headers.reduce((item, keyName, index) => {
      if (keyName === `states`) {
        item[keyName] = row[index];
      } else {
        item[keyName] = Number(row[index]);
      }
      return item;
    }, {});
    acc.push(item);
    return acc;
  }, []);

  const filtered = result.filter((item) => item[`Assault`] > 159).map((item) => item[`Murder`]);

  log(filtered.reduce((acc, curr) => (acc += curr)) / filtered.length);
}

run();

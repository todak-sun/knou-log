const {promisify} = require(`util`);
const exec = promisify(require(`child_process`).exec);

const {readdir, stat} = require(`fs/promises`);
const path = require(`path`);

const PROGRAM = path.join(`C:`, `Users`, `tjsdy`, `Desktop`, `AutoDownload`, `ImageMagick-7.1.0-portable-Q8-x64`, `magick.exe`);

class Arguments {
  #memo = {};
  constructor(args) {
    this.#memo = args.reduce((acc, curr) => {
      if (curr.includes(`--`)) {
        const [key, value] = curr.replace(/\-\-/gi, '').split(`=`);
        acc[key] = value;
      }
      return acc;
    }, {});
  }

  get(key) {
    return this.#memo[key];
  }
}

async function start(args) {
  // const dd = await stat(PATH);
  // console.log(dd);

  const programParams = new Arguments(args);

  const inPath = programParams.get(`in`);
  const outPath = programParams.get(`out`) || inPath;
  const fileName = programParams.get(`name`) || `test.pdf`;

  const fileNames = await readdir(inPath);

  const imageFileNames = fileNames
    .filter((fileName) => fileName.endsWith(`.png`))
    .map((imageFileName) => path.join(inPath, imageFileName))
    .join(' ');

  console.log(`OUTPUT : ${path.join(outPath, fileName)}`);

  try {
    await exec(`${PROGRAM} convert ${path.join(inPath, '*.png')} ${path.join(outPath, fileName)}`);
  } catch (e) {
    console.dir(e);
    console.error(e);
  }
}

start(process.argv.slice(2));

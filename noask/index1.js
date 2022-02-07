const robot = require('robotjs');
const Jimp = require('jimp');

const padL = (num, length, alt = '0') => (`${num}`.length >= length ? `${num}` : `${new Array(length - `${num}`.length).fill(alt).join('')}${num}`);


async function run(title = 'TEST') {
  const MAX_PAGE = 6;
  for (let i = 1; i <= MAX_PAGE; i++) {
    const bitmap = robot.screen.capture(1280, 80, 940, 1260);
    await saveImage(bitmap, `./results/${title}/${padL(i, 5)}.png`);
    robot.moveMouse(3392, 712);
    robot.mouseClick();
    await wait(1000 * 1.5);
  }
}

run()

/**
 *
 * @param {robot.Bitmap} capture
 * @returns
 */
function saveImage(capture, path) {
  return new Promise((res, rej) => {
    try {
      const image = new Jimp(capture.width, capture.height);
      let pos = 0;
      image.scan(0, 0, image.bitmap.width, image.bitmap.height, (x, y, index) => {
        image.bitmap.data[index + 2] = capture.image.readUInt8(pos++);
        image.bitmap.data[index + 1] = capture.image.readUInt8(pos++);
        image.bitmap.data[index + 0] = capture.image.readUInt8(pos++);
        image.bitmap.data[index + 3] = capture.image.readUInt8(pos++);
      });
      image.write(path, res);
    } catch (e) {
      console.error(e);
      rej(e);
    }
  });
}

function wait(time) {
  return new Promise((res, rej) => {
    setTimeout(() => {
      res();
    }, time);
  });
}

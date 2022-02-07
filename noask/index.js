const robot = require('robotjs');
const Jimp = require('jimp');

console.log(robot.getMousePos());


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

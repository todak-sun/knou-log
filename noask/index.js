const robot = require('robotjs');

console.log(robot.getMousePos());
robot.moveMouse(1411, 636);


const image = robot.screen.capture(0, 0, 100, 100);


// robot.setMouseDelay(2);

// const TWO_PI = Math.PI * 2;
// const SCREEN_SIZE = robot.getScreenSize();
// const height = SCREEN_SIZE.height / 2 - 10;
// const width = SCREEN_SIZE.width;

// for (let x = 0; x < width; x++) {
//   let y = height * Math.sin((TWO_PI * x) / width) + height;
//   robot.moveMouse(x, y);
// }

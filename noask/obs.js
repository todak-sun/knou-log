const robot = require('robotjs');

console.log(`mouse pos : `, robot.getMousePos());
console.log(robot.getScreenSize());

robot.moveMouse(3335, 654);

setInterval(async () => {
  const endTime = new Date(`2022-04-25T07:10:00.000Z`);
  // const endTime = new Date(`2022-04-25T01:59:00.000Z`);
  const now = new Date();
  const done = endTime < now;
  if (done) {
    // 녹화 중단
    robot.moveMouse(3335, 654);
    await wait(3000);
    robot.mouseClick();
    await wait(3000);

    // // 나가기
    robot.moveMouse(3342, 739);
    await wait(3000);
    robot.mouseClick();
    await wait(3000);

    process.exit(0);
  } else {
    console.log(`현재시간 : ${now.toLocaleString()}, 종료시간 : ${endTime.toLocaleString()}`);
  }
}, 5000);

function wait(time) {
  return new Promise((res, rej) => {
    setTimeout(() => {
      res();
    }, time);
  });
}

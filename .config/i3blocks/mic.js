const { exec } = require('child_process');

exec('pactl list sources', (err, stdout) => {
  const muteMic = stdout.match(/(Mute: .*$)/gm)
  if (muteMic[1]) {
    let mic = 'OFF'
    if (muteMic[1].match(/(yes|no)/)[0] === 'no') {
      mic = 'ON'
    }

    console.log(mic)
  }
})

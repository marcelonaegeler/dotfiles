const { exec } = require('child_process');

exec('pactl list sinks', (err, stdout) => {
  const volume = stdout.match(/(Volume: .*$)/gm)
  if (volume[0]) {
    console.log(volume[0].match(/(\d{1,3}%)/)[0])
  }
})

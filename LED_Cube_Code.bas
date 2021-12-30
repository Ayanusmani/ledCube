'This program willrun the LED cube
'was written by : Ayan Usmani
'Date :06/20/2019
'Pin B7 - B0 connect to LED9 - LED2
'Pin C7 connects to LED1
'Pin C6 connects to Level 3
'Pin C5 connects to Level 2
'Pin C4 connects to Level 1

let dirsc=%11111111 'Assigns all port c pins as outputs
let dirsb=%11111111 'Assigns all port b pins as outputs

let outpinsc = %00000000 'Assign all c port pins low
let outpinsb = %00000000 'Assign all b port pins low

'This program will turn the top level LEDs on one at a time and repeat.



test: 		'a loop without end : )
	high c.6 'Connecting the upper level to ground.
	high c.7 'Turning on LED1
	pause 1000 'LED1 will stay on for 1 second
	low c.7 'Set c.7 low which turns off LED1
	let outpinsb=%00000001 'Set port b.0 high which turs on LED2
	pause 500 'pause 500 miliseconds
	let outpinsb=%00000010 'Turn on LED3
	pause 500 'pause for 500 milliseconds

	let outpinsb=%00000100 'Turn on LED4
	pause 500 'pause for 500 milliseconds
	let outpinsb=%00001000 'Set port b.0 high which turs on LED5
    
	pause 500 'pause for 500 milliseconds
	let outpinsb=%00010000 'Turn on LED6
	pause 500 'pause for 500 milliseconds
	let outpinsb=%00100000 'Turn on LED7
	pause 500 'pause for 500 milliseconds
	let outpinsb=%01000000 'Set port b.0 high which turs on LED8
	pause 500 'pause for 500 milliseconds
	let outpinsb=%10000000 'Turn on LED9
	pause 500 'pause for 500 milliseconds
    low b.7
    low c.6
    
    high c.5 'Connecting the upper level to ground.
	high c.7 'Turning on LED1
	pause 500 'LED1 will stay on for 1 second
	low c.7 'Set c.7 low which turns off LED1
	let outpinsb=%00000001 'Set port b.0 high which turs on LED2
	pause 500 'pause for 500 milliseconds
	let outpinsb=%00000010 'Turn on LED3
	pause 500 'pause for 500 milliseconds

	let outpinsb=%00000100 'Turn on LED4
	pause 500 'pause for 500 milliseconds
	let outpinsb=%00001000 'Set port b.0 high which turns on LED5
	pause 500 'pause for 500 milliseconds
	let outpinsb=%00010000 'Turn on LED6
	pause 500 'pause for 500 milliseconds
	let outpinsb=%00100000 'Turn on LED7
	pause 500 'pause for 500 milliseconds
	let outpinsb=%01000000 'Set port b.0 high which turs on LED8
	pause 500 'pause for 500 milliseconds
	let outpinsb=%10000000 'Turn on LED9
	pause 500 'pause for 1500 milliseconds
    low b.7
    low c.5
    
    high c.4 'Connecting the upper level to ground.
	high c.7 'Turning on LED1
	pause 500 'LED1 will stay on for 1 second
	low c.7 'Set c.7 low which turns off LED1
	let outpinsb=%00000001 'Set port b.0 high which turs on LED2
	pause 500 'Wait 500 milliseconds
	let outpinsb=%00000010 'Turn on LED3
	pause 500 'pause for 1500 milliseconds

	let outpinsb=%00000100 'Turn on LED4 // 06/21/19 bottom row not functioning -> fixed after a bridging two paths together
	pause 500 'pause for 500 milliseconds
	let outpinsb=%00001000 ;Set port b.0 high which turs on LED5
	pause 500 'pause for 500 milliseconds
	let outpinsb=%00010000 ;Turn on LED6
	pause 500 'pause for 500 milliseconds
	let outpinsb=%00100000 ;Turn on LED7
	pause 500 'pause for 500 milliseconds
	let outpinsb=%01000000 ;Set port b.0 high which turs on LED8
	pause 500 'pause for 500 milliseconds
	let outpinsb=%10000000 ;Turn on LED9
	pause 500 'pause for 500 milliseconds
    low b.7
    low c.4
    
    

let dirsc=%11111111 ;Assigns all port c pins as outputs
let dirsb=%11111111 ;Assigns all port b pins as outputs
let outpinsc = %00000000 ;Assign all c port pins low
let outpinsb = %00000000 ;Assign all b port pins low


symbol x = b0

fancyboi: 'a fancy light show
	
    high c.6
  	high c.7 ;Turning on LED1
	high b.7
    high b.6
    high b.5
    high b.4
    high b.3
    high b.2
    high b.1
    high b.0
    pause 500
    high c.5
    pause 500
    high c.4
    pause 500
    low c.6,c.5,c.4
    pause 500
    high c.4
    pause 500
    high c.5
    pause 500
    high c.6
    pause 500
    low c.6,c.5,c.4
    low c.7,b.0,b.1,b.2,b.3,b.4,b.5,b.6,b.7
   
   
    pause 500
    
    high c.6
    high c.5
    high c.4
    high b.6
    high b.3
    high b.0
    pause 500
    high b.7
    high b.4
    high b.1
    pause 500
    high c.7
    high b.5
    high b.2
    pause 500
    let outpinsc = %00000000 ;Assign all c port pins low
    let outpinsb = %00000000 ;Assign all b port pins low
    pause 500
    high c.7
    high b.5
    high b.2
    pause 500
    high b.7
    high b.4
    high b.1
    pause 500
    high b.6
    high b.3
    high b.0
    pause 500
    let outpinsc = %00000000 ;Assign all c port pins low
	let outpinsb = %00000000 ;Assign all b port pins low
    low c.5
    low c.4
    low c.6
    
    pause 150
    
    ;x figure going top to down
    high c.6
    high b.0
    high b.4
    high c.7
    high b.6
    high b.2
    pause 250
    low c.6
    pause 250
    high c.5
    pause 250
    low c.5
    pause 250
    high c.4
    pause 250
    low c.4
    
    pause 100
    
	let outpinsc = %00000000 ;Assign all c port pins low
	let outpinsb = %00000000 ;Assign all b port pins low
    
    for x = 1 to 20
    high c.6
    high b.0
    high b.4
    high c.7
    high b.6
    high b.2
    pause 100
    low c.6
    pause 100
    high c.5
    pause 100
    low c.5
    pause 100
    high c.4
    pause 100
    low c.4
    next x
    
    for x = 1 to 100
    high c.6
    high b.6
    pause 1
    low c.6
    low b.6
    high c.5
    high b.7
    pause 1
    low c.5
    low b.7
    high c.4
    high c.7
    pause 1
    low c.4
    low c.7
    next x
    
    pause 250
    
    for x = 1 to 100
    high c.6
    high b.3
    pause 1
    low c.6
    low b.3
    high c.5
    high b.4
    pause 1
    low c.5
    low b.4
    high c.4
    high b.5
    pause 1
    low c.4
    low b.5
    next x
    
    pause 250
    
    for x = 1 to 100
    high c.6
    high b.0
    pause 1
    low c.6
    low b.0
    high c.5
    high b.1
    pause 1
    low c.5
    low b.1
    high c.4
    high b.2
    pause 1
    low c.4
    low b.2
    next x
    
    pause 250
    
    for x = 1 to 100
    high c.6
    high b.6
    pause 1
    low c.6
    low b.6
    high c.5
    high b.7
    pause 1
    low c.5
    low b.7
    high c.4
    high c.7
    pause 1
    low c.4
    low c.7
    
    high c.6
    high b.2
    pause 1
    low c.6
    low b.2
    high c.5
    high b.1
    pause 1
    low c.5
    low b.1
    high c.4
    high b.0
    pause 1
    low c.4
    low b.0
    next x
    
    
    for x = 1 to 100 ; meeting in the middle
    high c.6 
    high b.3
    pause 1
    low c.6
    low b.3
    high c.5
    high b.4
    pause 1
    low c.5
    low b.4
    high c.4
    high b.5
    pause 1
    low c.4
    low b.5
    
    high c.6 
    high b.2
    pause 1
    low c.6
    low b.5
    high c.5
    high b.4
    pause 1
    low c.5
    low b.4
    high c.4
    high b.3
    pause 1
    low c.4
    low b.3
    next x
    
    for x = 1 to 100 ;criss cross pattern.
    high c.6
    high b.0
    pause 1
    low c.6
    low b.0
    high c.5
    high b.1
    pause 1
    low c.5
    low b.1
    high c.4
    high c.5
    pause 1
    low c.4
    low c.5
    
    high c.6
    high c.7
    pause 1
    low c.6
    low c.7
    high c.5
    high b.7
    pause 1
    low c.5
    low b.7
    high c.4
    high b.6
    pause 1
    low c.4
    low b.6
    next x
    
    high c.4  ; countdown to loop :)))
    high b.4
    pause 350
    low c.4
    pause 350
    high c.5
    pause 350
    low c.5
    pause 350
    high c.6
    pause 350
    low c.6
    low b.4
    
    high c.6  ; roundly loop :)))
    high b.0
    pause 200
    high b.1
    pause 200
    high b.2
    pause 200
    high b.5
    pause 200
    high c.7
    pause 200
    high b.7
    pause 200
    high b.6
    pause 200
    high b.3
    pause 200
    low b.3
    low c.6
    
    let outpinsc = %00000000 ;Assign all c port pins low
	let outpinsb = %00000000 ;Assign all b port pins low
    
    pause 100
    high c.5
    high b.0
    pause 200
    high b.1
    pause 200
    high b.2
    pause 200
    high b.5
    pause 200
    high c.7
    pause 200
    high b.7
    pause 200
    high b.6
    pause 200
    high b.3
    pause 200
    low b.3
    low c.5
    
    let outpinsc = %00000000 ;Assign all c port pins low
	let outpinsb = %00000000 ;Assign all b port pins low
    
    pause 100
    high c.4
    high b.0
    pause 200
    high b.1
    pause 200
    high b.2
    pause 200
    high b.5
    pause 200
    high c.7
    pause 200
    high b.7
    pause 200
    high b.6
    pause 200
    high b.3
    pause 200
    low b.3
    low c.4
    
    let outpinsc = %00000000 ;Assign all c port pins low
	let outpinsb = %00000000 ;Assign all b port pins low
    
    pause 100 ;  loop coming back from the first level
    high c.4
    high b.0
    pause 200
    high b.3
    pause 200
    high b.6
    pause 200
    high b.7
    pause 200
    high c.7
    pause 200
    high b.5
    pause 200
    high b.2
    pause 200
    high b.1
    pause 200
    low b.3
    low c.4
    
    let outpinsc = %00000000 ;Assign all c port pins low
	let outpinsb = %00000000 ;Assign all b port pins low
    
    pause 100
    high c.5
    high b.0
    pause 200
    high b.3
    pause 200
    high b.6
    pause 200
    high b.7
    pause 200
    high c.7
    pause 200
    high b.5
    pause 200
    high b.2
    pause 200
    high b.1
    pause 200
    low b.3
    low c.5
    
    let outpinsc = %00000000 ;Assign all c port pins low
	let outpinsb = %00000000 ;Assign all b port pins low
    
    pause 100
    high c.6
    high b.0
    pause 200
    high b.3
    pause 200
    high b.6
    pause 200
    high b.7
    pause 200
    high c.7
    pause 200
    high b.5
    pause 200
    high b.2
    pause 200
    high b.1
    pause 200
    low b.3
    low c.6
    
    let outpinsc = %00000000 ;Assign all c port pins low
	let outpinsb = %00000000 ;Assign all b port pins low
    
    high c.6 ; waveeeeeessssssss
    high b.6, b.1, b.0
    pause 250
    low b.6,b.7,b.0
    pause 250
    high b.3,b.4,b.5
    pause 250
    low b.3,b.4,b.5
    pause 250
    high b.0,b.1,b.2
    pause 250
    low b.0,b.1,b.2
    low c.6

    
    let outpinsc = %00000000 ;Assign all c port pins low
	let outpinsb = %00000000 ;Assign all b port pins low
    
    pause 100
    
    high c.5 
    high b.0,b.1,b.2
    pause 250
    low b.0,b.1,b.2
    pause 250
    high b.3,b.4,b.5
    pause 250
    low b.3,b.4,b.5
    pause 250
    high b.6, b.7, b.0
    pause 250
    low b.6,b.7,b.0
    low c.5
    
    let outpinsc = %00000000 ;Assign all c port pins low
	let outpinsb = %00000000 ;Assign all b port pins low
    pause 100
    
    high c.4
    high b.6, b.7, b.0
    pause 250
    low b.6,b.7,b.0
    pause 250
    high b.3,b.4,b.5
    pause 250
    low b.3,b.4,b.5
    pause 250
    high b.0,b.1,b.2
    pause 250
    low b.0,b.1,b.2
    low c.4
    
    let outpinsc = %00000000 ;Assign all c port pins low
	let outpinsb = %00000000 ;Assign all b port pins low
    pause 100
    
    
    high c.6
    high c.5
    high c.4
    high c.7,b.0,b.1,b.2,b.3,b.4,b.5,b.6,b.7
    pause 100
    low c.6,c.5,c.4
    
    goto fancyboi


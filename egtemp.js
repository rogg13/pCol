const sleep = (milliseconds) => {
    return new Promise(resolve => setTimeout(resolve, milliseconds))
}
var ts = new Date();
ts = ts.getTime();
var iget = [];
console.iglog = console.log.bind(console);
const igtemp = async (isFirst = true) => {
    var re = 0;
    await sleep(3000);
    document.querySelector("#top-toolbar > colab-connect-button").shadowRoot.querySelector("#connect").click();
    await sleep(10000);
    if(isFirst){
	    document.getElementsByTagName("colab-run-button")[1].click();
	    await sleep(5000);
	    try {
		document.querySelector("#ok").click();
		console.log("shadow done")
	    }
		catch(err) {
		console.log("no shadow")
	    }
    }
    console.log('starting')
    for (let index = 1; index < 901; index++) {
	    document.querySelector("#top-toolbar > colab-connect-button").shadowRoot.querySelector("#connect").click();
	    console.log('rep ' + re);
	    const iglow = [45535, 47567, 58936, 46932, 43936, 52032, 55623, 37045, 33345];
	    const irand = Math.floor(Math.random() * iglow.length);
	    await sleep(iglow[irand]);
            console.log = function() {
                iget.push(Array.from(arguments));
                console.iglog.apply(console, arguments);
            }
            var disend = false;
            var direc = false;
            for (let recolect = 0; recolect < iget.length; recolect++) {
                if (iget[recolect][0] == 'Runtime disconnected'){disend = true}
                if (iget[recolect][0].match('Connected to')){direc = true}
            }
            if(disend && !direc){
		document.querySelector("#top-toolbar > colab-connect-button").shadowRoot.querySelector("#connect").click();
    		console.log('%cSending', 'color: #db0000');
		await sleep(iglow[irand]);
		document.getElementsByTagName("colab-run-button")[2].click();
    		document.getElementsByTagName("colab-run-button")[1].click();
    		re = re + 1;
            }
            iget = [];
	    console.clear();
	    try {
		document.querySelector("#ok").click();
		console.log("%cshadow done", 'color: #19bd5d')
	    }
	    catch(err) {
	    }
	    if(index % 33 == 0){
	    	re = re + 1;
	    	document.getElementsByTagName("colab-run-button")[2].click();
	    	await sleep(180000);
	    	document.getElementsByTagName("colab-run-button")[3].click();
	    	console.log('%cre-started', 'color: #ccb51f');
	    }
	    if(index % 7 == 0){
	    	document.getElementsByTagName("colab-run-button")[4].click();
	    	console.log('%cpreparing', 'color: #ccb51f');
	    }
	    var siki = new Date();
	    siki = siki.getTime();
	    n = siki - ts;
	    h = Math.floor(n / (1000*60*60));
	    m = Math.floor((n - h * (1000*60*60)) / (1000*60));
	    console.log('%cuis mlaku '+ h + ' jm, '+ m + ' mt', 'color: #19bd5d');
    }
    console.log('-hlf done-');
    console.log('-preparing-');
    await sleep(350000);
    igtemp();
}
igtemp(false);

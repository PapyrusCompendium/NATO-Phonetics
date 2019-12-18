$natoPhonetics = "Alfa","Bravo","Charlie","Delta","Echo","Foxtrot","Golf","Hotel","India","Juliett","Kilo","Lima","Mike","November","Oscar","Papa","Quebec","Romeo","Sierra","Tango","Uniform","Victor","Whiskey","X-ray","Yankee","Zulu", " "

for(;;)
{
    $message = Read-Host -Prompt "Message"
    foreach($letter in $message.ToCharArray()){
       $natoPhonetics | Where-Object { $_ -like "$($letter)*" } | Select-Object -First 1
    }
}

if (!hasInterface) exitWith {};
waitUntil {!isNull player};

/*
modifiers, links, and font options
<marker name='marker_name'>text with link</marker>
<img image='Image file name jpeg or paa' />
<font color='#FF0000' size='14' face='vbs2_digital'>Text you want in this font</font>
<br/> New Line

http://www.w3schools.com/colors/colors_picker.asp

https://community.bistudio.com/wikidata/images/archive/0/0e/20140217182059%21Arma3Fonts.png
*/

player createDiaryRecord ["Diary",["Glossary",
"
<font color='#FFFF00'>AO:</font> Area of Opperation.<br/>
<font color='#FFFF00'>Covey:</font>  Forward Air Controller. Also destroys enemy units and their logistic support.<br/>
<font color='#FFFF00'>CMIC:</font> The Combined Military Interrogation Center. A joint U.S.-South Vietnamese interrogation operation designed to collect intelligence from captured soldiers.<br/>
<font color='#FFFF00'>Kit Carson:</font> Defected enemy combatants that are used as scouts.<br/>
<font color='#FFFF00'>Klick:</font> Kilometer.<br/>
<font color='#FFFF00'>LZ:</font> Landing Zone.<br/>
<font color='#FFFF00'>M2 STAB:</font> Seal Team Assault Boat. A fast and heavily armed riverine assault boat developed by the United States Navy.<br/>
<font color='#FFFF00'>MST:</font> Mobile Support Team. Supports SEAL operations.<br/>
<font color='#FFFF00'>NVA:</font> North Vietnamese Army. National military force of the Socialist Republic of Vietnam<br/>
<font color='#FFFF00'>ROE:</font> Rules of Engagement.<br/>
<font color='#FFFF00'>S4:</font> Responsible for logistics and supply chain management in the United States Navy.<br/>
<font color='#FFFF00'>The Farm:</font> The Central Intelligence Agency. A civilian foreign intelligence service of the federal government of the United States.<br/>
<font color='#FFFF00'>TOO:</font> Targets of Opportunity.<br/><br/>

"]];

player createDiaryRecord ["Diary",["Signal",
"
<font color='#FFFF00'>Eagle:</font> Captain Richard Marcinko - Commanding Officer<br/>
<font color='#FFFF00'>Hawk:</font> Chief Petty Officer James Harrison - Navy Radioman<br/>
<font color='#FFFF00'>Covey:</font> Major Tom Collins - Forward Air Controller<br/>
<font color='#FFFF00'>Ranger:</font> Chief Warrant Officer George Scott - Helicopter Pilot<br/>
<font color='#FFFF00'>Rankin:</font> SEAL Team One with Chong Thay - Kit Carson Scout<br/>
"]];

player createDiaryRecord ["Diary",["Intelligence",
"
<font color='#FFFF00'>Enemy Presence:</font> Unknown Infantry, Armor, or Air.<br/>
<font color='#FFFF00'>Civilian Presence:</font> Highly Likely.<br/>
<font color='#FFFF00'>ROE:</font> Weapons Free but being covert will increase odds of mission success.<br/> 
<font color='#FFFF00'>TOO:</font> Complete optional objectives at your discretion but it is mission critical to kill the HVT.<br/>
<font color='#FFFF00'>Weather Forecast:</font> Fog and light rain at dawn, leading to clear skies by midday. High of 85°F and low of 75°F.<br/>
<font color='#FFFF00'>Armament:</font> Navy SEAL loadout. Recommend suppressed small arms.<br/> 
<font color='#FFFF00'>Supplies in STAB:</font> SCUBA gear, explosive satchels, and whatever you want to put in there.<br/>
<font color='#FFFF00'>HVT:</font> NVA General. Seen in photos wearing a green uniform, soft cover, bandana and pistol holster.<br/><br/>
<img image='pics\hvtbrief.jpg' /><br/><br/>
Above: General Tan, 1967
"]];

player createDiaryRecord ["Diary",["Execution",
"1. Insert with the STAB under cover of darkness and reach the <marker name='cove'>recon area</marker>.<br/>
2. Wait for the NVA naval patrol to leave the area.<br/>
3. Deactivate the <marker name='mines'>naval mines</marker> in order to reach the <marker name='ingress_point'>infiltration point</marker>.<br/>
4. Destroy the STAB.<br/>
5. Remain covert as you approach <marker name='lumphat'>Lumphat</marker> or risk mission failure.<br/>
6. Kill the HVT.<br/>
7. Complete optional mission objectives as your discretion.<br/>
8. Get to the <marker name='marker_1_LZ'>exfiltration point</marker> and call Covey to take you back to the 
mission <marker name='mission_start'>staging area</marker>.<br/><br/>

"]];

player createDiaryRecord ["Diary",["Mission",
"Good afternoon, gentlemen. Welcome to Phú Quoc, the largest island in Vietnam. I’ll get straight to the point. This is a high-priority mission.<br/><br/>
 
CMIC has obtained credible intel from the prison here. Intel cross-checked by our boys at the farm by the way, that provides the location of one whooper of a HVT. 
Tommorrrow we hunt the biggest game of the war so far, a full-blown NVA General. His name is General Tan, and you are going to be 
the ones to put this commie bastard in the dirt. Congratulations.<br/><br/>

Zero-hour is scheduled for tomorrow at zero-hundred. We’ll prepare at the staging area by the docks. Logistics has allocated resources for your needs. Given the nature of this 
mission, I advise using suppressed weapons to maintain stealth. We’ve also received a STAB from MST, but they won’t be accompanying us since this is a one-way 
insertion for the boat. You will insert at the mouth of the Tonle Srepok River, establish a reconnaissance position, and monitor for a North Vietnamese naval 
patrol that typically passes through in the early morning hours..<br/><br/>

Once the patrol departs, you’ll need to navigate through a naval minefield to proceed upriver. After that, move to the designated infil point. It is imperative 
that you do not deviate from this route. Our aerial reconnaissance images are not as detailed as those in civilian publications, but they indicate a North Vietnamese 
naval yard further upstream. As we are operating illegally in Cambodia, you must scuttle the STAB to ensure no evidence of our presence remains in the AO. Understood?<br/><br/>

Proceed to Lumphat, where the target is located. It’s less than a klick northeast of the infil point. If you execute the mission properly, you should remain 
undetected. Move cautiously and avoid being seen, as detection could compromise the mission. The village contains both civilian and military personnel. Establish 
a secure observation point and positively identify General Tan. Once confirmed, eliminate him. If you haven’t caused too much commotion, gather any useful intelligence 
before withdrawing. Your exfiltration point will be Hill 156, a short distance southeast of Lumphat. Upon arrival at the LZ, contact Covey for exfil.<br/><br/>

Despite the several moving parts, the mission is straightforward: infiltrate, eliminate, and exfiltrate. Successfully completing this mission will earn you lasting 
recognition and rewards. You could find yourself celebrated in Saigon, featured in military publications, or even meeting high-profile figures. One last thing, I will 
be assigning a Kit Carson to your squad. This individual has been vetted by the 9th Marines, is familiar with the area, the language, and has proven his reliability. 
Utilize his expertise to your advantage.<br/><br/> 

If you have any questions, you can ask me at the staging area tommorrow. 
See you at the ass-crack of dawn! Dismissed.<br/><br/>

"]];

player createDiaryRecord ["Diary",["Situation",
"June 1967, South Vietnam. The United States is engaged in a steadily expanding, air and ground war in Southeast Asia. 
More than 380,000 American troops are in country. Operation Rolling Thunder, the bombing campaign against North Vietnam, 
has proved ineffective at hindering the insurgency in South Vietnam. Enemy troops and equipment continue to flow along the 
Ho Chi Minh Trail, a network of roads and trails that runs from North to South Vietnam through the Kingdoms of Laos and Cambodia. 
The trail operates both day and night, with no end in sight.<br/><br/>
<img image='pics\situation2.jpg' /><br/><br/>
Above: Ho Chi Minh Trail
"]];

player createDiarySubject ["Historical","History"];

player createDiaryRecord ["Historical", ["Introduction", 
"<br/>The History tab serves to highlight the historically accurate features present in this mission. See if you can notice them 
during your playthrough.
" ]];

player createDiaryRecord ["Historical", ["SEAL Team 1 and 2", 
"<br/>The SEALs were good at capturing or killing enemy leaders, retrieving battle plans, political intelligence, and 
gathering HUMINT (human intelligence). The most notable SEAL mission in Vietnam, however, is their involvement in the CIA’s Phoenix Program. 
During those years, SEALs teamed up with PRUs to capture or kill members of the Viet Cong Infrastructure (VCI). Those were people who were 
identified as enemy military leaders, political operatives, intelligence agents, tax collectors, and other key enemy personnel.<br/><br/>
<img image='pics\sealteam1.jpg' /><br/><br/>
Above: SEAL Team One 1967<br/><br/>
<img image='pics\seals.jpg' /><br/><br/>
Above: SEALs in Vietnam
" ]];

player createDiaryRecord ["Historical", ["M2 STAB", 
"<br/>The Strike Assault Boat (STAB) (also known as the SEAL Team Assault Boat), was a fast and heavily armed riverine assault boat developed 
by the United States Navy for use in the Vietnam War.<br/><br/>
<img image='pics\seals3.jpg' /><br/><br/>
Above: SEALs aboard a M2 STAB, 1967
" ]];

player createDiaryRecord ["Historical", ["Camouflage", 
"<br/>The ERDL pattern, also known as the Leaf pattern, is a camouflage pattern developed by the United States Army at its Engineer Research 
and Development Laboratories (ERDL) in 1948. It was not used until the Vietnam War, when it was issued to elite reconnaissance and 
special operations units beginning early 1967. <br/><br/>Tiger stripe is the name of a group of camouflage patterns developed for close-range use in 
dense jungle during jungle warfare by the South Vietnamese Armed Forces and adopted in late 1962 to early 1963 by US Special Forces during 
the Vietnam War. Blue jeans are often seen in the historical photo record. They were enjoyed because of their ruggedness.<br/><br/>
<img image='pics\seals2.jpg' /><br/><br/>
Above: SEALs wearing ERDL pattern camouflage
" ]];

player createDiaryRecord ["Historical", ["Kit Carson", 
"<br/>Scouts.<br/><br/>
<img image='' /><br/><br/>
Above: SEALs wearing ERDL pattern camouflage
" ]];

player createDiaryRecord ["Historical", ["Stoner", 
"<br/>Guns.<br/><br/>
<img image='' /><br/><br/>
Above: SEALs wearing ERDL pattern camouflage
" ]];


<?xml version="1.0"?>

<st-source>
<time-stamp>From VisualWorks® NonCommercial, 7.7.1 of July 26, 2010 on June 5, 2013 at 9:36:51 PM</time-stamp>


<component-created>
<name>project1_CS474</name> <type>package</type>
</component-created><!-- Package project1_CS474* -->


<component-property>
<name>project1_CS474</name> <type>package</type>
<property>notice</property> <value>'Ashwath Narayanan. '</value>
</component-property>

<component-property>
<name>project1_CS474</name> <type>package</type>
<property>comment</property> <value>'Smalltalk Base3 Calculator Application

This applicaion gets the input values in base3 from the user and the user can perform the basic operations in the base3 calculator like addition, subtraction, multiplication, division. And keeps a record of the log datas of the operations performed by the user. 
It also displays the decimal notation of the operations performed by the user. 

Key Features:

1) Easy to user interface.
2) Prompt user when he does dividebyzero and subtract big number from small number.

Developed by:
Ashwath. 
'</value>
</component-property>

<class>
<name>Calculatorinterface</name>
<environment>Smalltalk</environment>
<super>UI.ApplicationModel</super>
<private>false</private>
<indexed-type>none</indexed-type>
<inst-vars>input1 input2 result cal result1 text2 text1 </inst-vars>
<class-inst-vars></class-inst-vars>
<imports></imports>
<category></category>
<attributes>
<package>project1_CS474</package>
</attributes>
</class>

<comment>
<class-id>Calculatorinterface</class-id>
<body>Add:This method is invoked when the user presses the add button. And the first operand is saved in instance variable of Calculator Operation class.Instance VariablesIt does not accept any instance variables.Subtract:This method is invoked when the user presses the add button. And the first operand is saved in instance variable of Calculator Operation class.Instance VariablesIt does not accept any instance variables.Divide:This method is invoked when the user presses the add button. And the first operand is saved in instance variable of Calculator Operation class.Instance VariablesIt does not accept any instance variables.Multiply:This method is invoked when the user presses the add button. And the first operand is saved in instance variable of Calculator Operation class.Instance VariablesIt does not accept any instance variables.Equals:This mehod performs the logic for checking for the input characters and the operation to be performed.And calls the operationToPerform which does calls to the appropriate method of the Calculatoroperation class.This method also performs printing the log details. </body>
</comment>

<class>
<name>Calculatoroperations</name>
<environment>Smalltalk</environment>
<super>Core.Object</super>
<private>false</private>
<indexed-type>none</indexed-type>
<inst-vars>number1 number2 operation equalflag operand1 operand2 resultd resultb number1b number2b </inst-vars>
<class-inst-vars></class-inst-vars>
<imports></imports>
<category></category>
<attributes>
<package>project1_CS474</package>
</attributes>
</class>

<comment>
<class-id>Calculatoroperations</class-id>
<body>base3todecimal:This function performs the operation of converting to base3 to decimal for any number.decimaltobase3:This function performs the vise - versa operation of base3todecimal. divide:divides the numbers.add:adds the numbers.subtract:subtracts the numbers.multiply:multiply the numbersInstance Variables	number1	String	number2	String</body>
</comment>

<methods>
<class-id>Calculatorinterface class</class-id> <category>interface specs</category>

<body package="project1_CS474" selector="windowSpec">windowSpec	"Tools.UIPainter new openOnClass: self andSelector: #windowSpec"	&lt;resource: #canvas&gt;	^#(#{UI.FullSpec} 		#window: 		#(#{UI.WindowSpec} 			#properties: #(#{UI.PropertyListDictionary} #sizeType #specifiedSize #positionType #screenCenter #openType #advanced ) 			#label: 'Welcome to Base3 calculator application.!!' 			#min: #(#{Core.Point} 822 379 ) 			#max: #(#{Core.Point} 822 379 ) 			#bounds: #(#{Graphics.Rectangle} 544 349 1366 728 ) 			#colors: 			#(#{UI.LookPreferences} 				#setBackgroundColor: #(#{Graphics.ColorValue} 4096 6143 8191 ) ) ) 		#component: 		#(#{UI.SpecCollection} 			#collection: #(				#(#{UI.ActionButtonSpec} 					#layout: #(#{Graphics.Rectangle} 236 200 301 253 ) 					#name: #ActionButton1 					#model: #add 					#label: 'Add' 					#defaultable: true ) 				#(#{UI.ActionButtonSpec} 					#layout: #(#{Graphics.Rectangle} 312 200 377 253 ) 					#name: #ActionButton2 					#model: #subtract 					#label: 'Subtract' 					#defaultable: true ) 				#(#{UI.ActionButtonSpec} 					#layout: #(#{Graphics.Rectangle} 388 200 453 253 ) 					#name: #ActionButton3 					#model: #multiply 					#label: 'Multiply' 					#defaultable: true ) 				#(#{UI.ActionButtonSpec} 					#layout: #(#{Graphics.Rectangle} 464 200 529 253 ) 					#name: #ActionButton4 					#model: #divide 					#label: 'Divide' 					#defaultable: true ) 				#(#{UI.InputFieldSpec} 					#layout: #(#{Graphics.Rectangle} 366 42 540 63 ) 					#name: #InputField1 					#colors: 					#(#{UI.LookPreferences} 						#setBackgroundColor: #(#{Graphics.ColorValue} 7044 7044 7044 ) ) 					#model: #input1 					#isReadOnly: true 					#type: #string ) 				#(#{UI.InputFieldSpec} 					#layout: #(#{Graphics.Rectangle} 367 75 540 98 ) 					#name: #InputField2 					#colors: 					#(#{UI.LookPreferences} 						#setBackgroundColor: #(#{Graphics.ColorValue} 7167 6143 8191 ) ) 					#model: #input2 					#isReadOnly: true 					#type: #string ) 				#(#{UI.LabelSpec} 					#layout: #(#{Core.Point} 254 42 ) 					#name: #Label1 					#label: 'Number in Base3' ) 				#(#{UI.ActionButtonSpec} 					#layout: #(#{Graphics.Rectangle} 235 130 300 183 ) 					#name: #ActionButton5 					#model: #Add0 					#label: '0' 					#defaultable: true ) 				#(#{UI.ActionButtonSpec} 					#layout: #(#{Graphics.Rectangle} 311 130 376 183 ) 					#name: #ActionButton6 					#model: #Add1 					#label: '1' 					#defaultable: true ) 				#(#{UI.ActionButtonSpec} 					#layout: #(#{Graphics.Rectangle} 387 130 452 183 ) 					#name: #ActionButton7 					#model: #Add2 					#label: '2' 					#defaultable: true ) 				#(#{UI.ActionButtonSpec} 					#layout: #(#{Graphics.Rectangle} 463 130 528 183 ) 					#name: #ActionButton8 					#model: #Equals 					#label: '=' 					#defaultable: true ) 				#(#{UI.LabelSpec} 					#layout: #(#{Core.Point} 246 76 ) 					#name: #Label2 					#label: 'Number in Decimal' ) 				#(#{UI.ActionButtonSpec} 					#layout: #(#{Graphics.Rectangle} 313 265 378 318 ) 					#name: #ActionButton9 					#model: #Clear 					#label: 'Clear' 					#defaultable: true ) 				#(#{UI.LabelSpec} 					#layout: #(#{Core.Point} 73 20 ) 					#name: #Label5 					#label: 'Base3 Log' ) 				#(#{UI.LabelSpec} 					#layout: #(#{Core.Point} 630 18 ) 					#name: #Label6 					#label: 'Decimal Log' ) 				#(#{UI.LabelSpec} 					#layout: #(#{Core.Point} 370 14 ) 					#name: #op ) 				#(#{UI.TextEditorSpec} 					#layout: #(#{Graphics.Rectangle} 21 52 186 327 ) 					#name: #TextEditor1 					#colors: 					#(#{UI.LookPreferences} 						#setBackgroundColor: #(#{Graphics.ColorValue} 7679 8191 7167 ) ) 					#model: #text1 					#isReadOnly: true 					#tabRequiresControl: true ) 				#(#{UI.TextEditorSpec} 					#layout: #(#{Graphics.Rectangle} 585 52 750 330 ) 					#name: #TextEditor2 					#colors: 					#(#{UI.LookPreferences} 						#setBackgroundColor: #(#{Graphics.ColorValue} 8191 7679 7167 ) ) 					#model: #text2 					#isReadOnly: true 					#tabRequiresControl: true ) 				#(#{UI.ActionButtonSpec} 					#layout: #(#{Graphics.Rectangle} 389 265 454 318 ) 					#name: #ActionButton10 					#model: #ClearLog 					#label: 'Clear Log' 					#defaultable: true ) 				#(#{UI.DividerSpec} 					#layout: #(#{Graphics.Rectangle} 226 119 540 123 ) 					#name: #Divider1 ) 				#(#{UI.DividerSpec} 					#layout: #(#{Graphics.Rectangle} 224 119 228 331 ) 					#name: #Divider2 					#orientation: #vertical ) 				#(#{UI.DividerSpec} 					#layout: #(#{Graphics.Rectangle} 224 330 541 334 ) 					#name: #Divider3 ) 				#(#{UI.DividerSpec} 					#layout: #(#{Graphics.Rectangle} 541 121 545 333 ) 					#name: #Divider4 					#orientation: #vertical ) 				#(#{UI.LabelSpec} 					#layout: #(#{Core.Point} 235 10 ) 					#name: #Label3 					#label: 'Operation to Perform' ) ) ) )</body>
</methods>


<methods>
<class-id>Calculatorinterface</class-id> <category>aspects</category>

<body package="project1_CS474" selector="text1">text1	"This method was generated by UIDefiner.  Any edits made here	may be lost whenever methods are automatically defined.  The	initialization provided below may have been preempted by an	initialize method."	^text1 isNil		ifTrue:			[text1 := String new asValue]		ifFalse:			[text1]</body>

<body package="project1_CS474" selector="input1">input1	"This method was generated by UIDefiner.  Any edits made here	may be lost whenever methods are automatically defined.  The	initialization provided below may have been preempted by an	initialize method."	^input1 isNil		ifTrue:			[input1 := String new asValue]		ifFalse:			[input1]</body>

<body package="project1_CS474" selector="result1">result1	"This method was generated by UIDefiner.  Any edits made here	may be lost whenever methods are automatically defined.  The	initialization provided below may have been preempted by an	initialize method."	^result1 isNil		ifTrue:			[result1 := 0 asValue]		ifFalse:			[result1]</body>

<body package="project1_CS474" selector="input2">input2	"This method was generated by UIDefiner.  Any edits made here	may be lost whenever methods are automatically defined.  The	initialization provided below may have been preempted by an	initialize method."	^input2 isNil		ifTrue:			[input2 := String new asValue]		ifFalse:			[input2]</body>

<body package="project1_CS474" selector="result">result	"This method was generated by UIDefiner.  Any edits made here	may be lost whenever methods are automatically defined.  The	initialization provided below may have been preempted by an	initialize method."	^result isNil		ifTrue:			[result := 0 asValue]		ifFalse:			[result]</body>

<body package="project1_CS474" selector="text2">text2	"This method was generated by UIDefiner.  Any edits made here	may be lost whenever methods are automatically defined.  The	initialization provided below may have been preempted by an	initialize method."	^text2 isNil		ifTrue:			[text2 := String new asValue]		ifFalse:			[text2]</body>
</methods>

<methods>
<class-id>Calculatorinterface</class-id> <category>commonoperation</category>

<body package="project1_CS474" selector="operationToPerform:">operationToPerform: op"This function checks for the correct operation to perform and calls the appropriate function of the calculator operation class."| ans |(op = '+') 		ifTrue: [										ans := cal add.							      	]		ifFalse: [									(op = '-')					ifTrue: [																ans := cal subtract.								(ans &lt; 0)								ifTrue:[											Dialog warn: ' Negative number: Please check the number '.											"ans := -1 * ans."										].						    ]				    ifFalse: [								(op = '\\')								ifTrue:[ 																				(cal number2 = 0)											ifTrue:											[												Dialog warn: ' Error: Trying to divide by 0, Numbers reset. Please enter the first number!!  '.												cal operand1: 1.												^0.											]											ifFalse: [											ans := cal divide.											].									   ]								ifFalse: [											(op = '*')											ifTrue:[														ans := cal multiply.												   ].										].							].				].^ans.</body>
</methods>

<methods>
<class-id>Calculatorinterface</class-id> <category>comment</category>

<body package="project1_CS474" selector="comment">comment|str1 str2|str1 := text1 value .text1 value: (str1, (cal decimaltobase3: cal number1 printString) printString ,' ',  '/ ' , ' ', 0 printString , ' = '  ,  'Error!!', '\' , ' ----------------------' ,'\'  ) withCRs.str2 := text2 value asString.text2 value: (str2, cal number1 printString  ,' ',  ' / ' , ' ', 0 printString, ' = ' ,  'Error!!', '\' , ' ----------------------', '\'  ) withCRs.^self.</body>
</methods>

<methods>
<class-id>Calculatorinterface</class-id> <category>actions</category>

<body package="project1_CS474" selector="Add0">Add0| str |	"This stub method was generated by UIDefiner"(cal operand2 &gt; 0)ifTrue:[ cal operand2 = 1.self Clear. ].str := input1 value.input1 value: str , '0'. input2 value: (cal base3todecimal: input1 value) printString. 	^self</body>

<body package="project1_CS474" selector="add">add| |"Add:This method is invoked when the user presses the add button. And the first operand is saved in instance variable of Calculator Operation class."(cal equalflag &gt; 0)ifTrue: [ cal equalflag:0 ].(cal operation = 0)ifTrue:[cal operation: '+'.cal operand2: 0."changing the label of the widget"(self widgetAt: #op) labelString: '+'.cal number1: input2 value.]ifFalse: [cal operand2: 0.cal operation: '+'.(self widgetAt: #op) labelString: '+'.cal number1: input2 value.].input1 value: ''.input2 value: ''.^self</body>

<body package="project1_CS474" selector="Add1">Add1| str|	"This stub method was generated by UIDefiner"(cal operand2 &gt; 0)ifTrue:[ cal operand2 = 1.self Clear. ].str := input1 value.input1 value: str , '1'. input2 value: (cal base3todecimal: input1 value) printString. 	^self</body>

<body package="project1_CS474" selector="Add2">Add2| str|	"This stub method was generated by UIDefiner"(cal operand2 &gt; 0)ifTrue:[ cal operand2 = 1.self Clear. ].str := input1 value.input1 value: str , '2'. input2 value: (cal base3todecimal: input1 value) printString. 	^self</body>

<body package="project1_CS474" selector="ClearLog">ClearLogtext1 value: ' '.text2 value: ' '.	^self</body>

<body package="project1_CS474" selector="divide">divide| |"Divide:This method is invoked when the user presses the add button. And the first operand is saved in instance variable of Calculator Operation class."(cal equalflag &gt; 0)ifTrue: [ cal equalflag:0 ]."setting the operation variable to + "(cal operation = 0 )ifTrue:[cal operation: '\\'.cal operand2: 0."changing the label of the widget"(self widgetAt: #op) labelString: '\\'.cal number1: input2 value.]ifFalse: [cal operation: '\\'.cal operand2: 0.(self widgetAt: #op) labelString: '\\'.cal number1: input2 value.].input1 value: ''.input2 value: ''.	^self</body>

<body package="project1_CS474" selector="Equals">Equals"Equals:This mehod performs the logic for checking for the input characters and the operation to be performed.And calls the operationToPerform which does calls to the appropriate method of the Calculatoroperation class.This method also performs printing the log details. "|str2 str1 res numb | (cal operation = 0 )ifTrue:[^self.].(cal equalflag = 0)ifTrue: [											cal operand2: 1.										cal number2: input2 value.								(input1 value = '' &amp; input2 value = '' )								ifTrue:[									self Clear.																		^self.																	].								res := self operationToPerform: cal operation.								cal resultd: res.								numb := cal decimaltobase3:res printString.								(cal operand1 &gt; 0)								ifTrue: [ 								cal operand1: 0.								self comment.								self Clear. 								^self.								 ].								input2 value: res printString.								input1 value: numb printString.								cal equalflag: 1.									]ifFalse: [								cal operand2: 1.								cal number1: cal resultd printString.								(input1 value = '' &amp; input2 value = '' )								ifTrue:[									self Clear.									^self.								].								"Dialog warn: ' cal ', cal number1 printString, cal number2 printString."								res := self operationToPerform: cal operation.								cal resultd: res.								numb := cal decimaltobase3:res printString.								(cal operand1 &gt; 0)								ifTrue: [ 								cal operand1: 0.								self comment.								self Clear. 								^self.].								input2 value: res printString.								input1 value: numb printString.							].(cal operation = '\\')ifTrue: [str1 := text1 value .text1 value: (str1, (cal decimaltobase3: cal number1 printString) printString ,' ',  '//' , ' ', (cal decimaltobase3: cal number2 printString) printString, ' = '  ,  cal resultb printString, '\' , ' ----------------------' ,'\'  ) withCRs.str2 := text2 value asString.text2 value: (str2, cal number1 printString  ,' ',  '//' , ' ', cal number2 printString, ' = ' , cal resultd printString, '\' , ' ----------------------', '\'  ) withCRs.]ifFalse: [str1 := text1 value asString.text1 value: (str1, (cal decimaltobase3: cal number1 printString) printString  ,' ',  cal operation printString , ' ' ,  (cal decimaltobase3: cal number2 printString) printString , ' = ' ,  cal resultb printString,  '\' , '----------------------' ,'\') withCRs.str2 := text2 value asString.text2 value: (str2, cal number1 printString  ,' ',  cal operation printString , ' ', cal number2 printString, ' = ' , cal resultd printString, '\', '----------------------','\' ) withCRs.		].											^self</body>

<body package="project1_CS474" selector="multiply">multiply| |"multiply:This method is invoked when the user presses the add button. And the first operand is saved in instance variable of Calculator Operation class."(cal equalflag &gt; 0)ifTrue: [ cal equalflag:0 ]."setting the operation variable to + "(cal operation  = 0)ifTrue:[cal operation: '*'.cal operand2: 0."changing the label of the widget"(self widgetAt: #op) labelString: '*'.cal number1: input2 value."str1 := text1 value .text1 value: (str1 , '\', input1 value) withCRs.str2 := text2 value .text2 value: (str2 , '\', input2 value) withCRs."]ifFalse: [cal operation: '*'.cal operand2: 0.(self widgetAt: #op) labelString: '*'.cal number1: input2 value.].input1 value: ''.input2 value: ''.	^self</body>

<body package="project1_CS474" selector="subtract">subtract| |"subtractThis method is invoked when the user presses the add button. And the first operand is saved in instance variable of Calculator Operation class."(cal equalflag &gt; 0)ifTrue: [ cal equalflag:0 ]."setting the operation variable to + "(cal operation  = 0)ifTrue:[cal operation: '-'.cal operand2: 0."changing the label of the widget"(self widgetAt: #op) labelString: '-'.cal number1: input2 value."str1 := text1 value .text1 value: (str1 , '\', input1 value) withCRs.str2 := text2 value .text2 value: (str2 , '\', input2 value) withCRs."]ifFalse: [cal operation: '-'.cal operand2: 0.(self widgetAt: #op) labelString: '-'.cal number1: input2 value.].input1 value: ''.input2 value: ''.	^self</body>

<body package="project1_CS474" selector="Clear">Clear	input1 value: ''.	input2 value: ''.	cal equalflag: 0.	cal operation: 0 .	cal operand1: 0.	cal operand2: 0.	cal resultd: 0.	cal resultb: 0.	cal number1: 0 printString.	cal number2: 0 printString.	(self widgetAt: #op) labelString: ' '.	^self</body>
</methods>

<methods>
<class-id>Calculatorinterface</class-id> <category>initialize-release</category>

<body package="project1_CS474" selector="initialize">initializecal := Calculatoroperations new.^self.</body>
</methods>


<methods>
<class-id>Calculatoroperations class</class-id> <category>instance creation</category>

<body package="project1_CS474" selector="new">new	"Answer a newly created and initialized instance."	^super new initialize</body>
</methods>


<methods>
<class-id>Calculatoroperations</class-id> <category>accessing</category>

<body package="project1_CS474" selector="number1b:">number1b: anObject	number1b:= anObject</body>

<body package="project1_CS474" selector="operand2:">operand2: anObject	operand2 := anObject</body>

<body package="project1_CS474" selector="operation">operation^operation.</body>

<body package="project1_CS474" selector="resultb:">resultb: anObject| temp |temp := self decimaltobase3: anObject printString.self resultd: temp.	resultb := anObject</body>

<body package="project1_CS474" selector="number2:">number2: anObject|obj |	obj:= LargePositiveInteger readFromString: anObject.number2 := obj.	"temp:= self decimaltobase3: number1.	self number1b: temp."</body>

<body package="project1_CS474" selector="equalflag">equalflag^equalflag.</body>

<body package="project1_CS474" selector="number1:">number1: anObject|obj |	obj:= LargePositiveInteger readFromString: anObject.number1 := obj.	"temp:= self decimaltobase3: number1.	self number1b: temp.""Dialog warn: self number1b."</body>

<body package="project1_CS474" selector="resultd:">resultd: anObject	resultd := anObject</body>

<body package="project1_CS474" selector="number2b:">number2b: anObject	number2b:= anObject</body>

<body package="project1_CS474" selector="number1">number1	^number1</body>

<body package="project1_CS474" selector="operand1:">operand1: anObject	operand1 := anObject</body>

<body package="project1_CS474" selector="operand1">operand1^operand1.</body>

<body package="project1_CS474" selector="equalflag:">equalflag: anObject	equalflag := anObject</body>

<body package="project1_CS474" selector="operation:">operation: anObject	operation := anObject</body>

<body package="project1_CS474" selector="number2b">number2b	^number2b</body>

<body package="project1_CS474" selector="number2">number2	^number2</body>

<body package="project1_CS474" selector="resultb">resultbresultb := self decimaltobase3: resultd printString.^resultb.</body>

<body package="project1_CS474" selector="resultd">resultd^resultd.</body>

<body package="project1_CS474" selector="operand2">operand2^operand2.</body>

<body package="project1_CS474" selector="number1b">number1b	^number1b</body>
</methods>

<methods>
<class-id>Calculatoroperations</class-id> <category>operations</category>

<body package="project1_CS474" selector="add">add^(number1 + number2)</body>

<body package="project1_CS474" selector="decimaltobase3:">decimaltobase3: num| i sum count mul mod result1 result|result1 := LargePositiveInteger readFromString: num.result := result1 abs.i:= count :=sum := mod:=0.mul :=1.[ result &gt; 0] whileTrue: [ 					mod := result \\ 3.					"Transcript show: mod."					[ i &lt; count ] whileTrue: [ mul := mul * 10. i:= i +1. ].   					sum := sum + (mod * mul).					count := count + 1.					result := result // 3.					"result := result - 1."					 ].^sum.</body>

<body package="project1_CS474" selector="divide">divide| ans |ans := number1//number2.^ans</body>

<body package="project1_CS474" selector="base3todecimal:">base3todecimal: num| i sum count mul mod result |result := LargePositiveInteger readFromString: num.i:= count :=sum := mod:=0.mul :=1.[ result &gt; 0] whileTrue: [ 					mod := result \\ 10.					"Transcript show: mod."					[ i &lt; count ] whileTrue: [ mul := mul * 3. i:= i +1. ].   					sum := sum + (mod * mul).					count := count + 1.					result := result // 10.					"result := result - 1."					 ].^sum.</body>

<body package="project1_CS474" selector="multiply">multiply^(number1 * number2)</body>

<body package="project1_CS474" selector="subtract">subtract^(number1 - number2)</body>
</methods>

<methods>
<class-id>Calculatoroperations</class-id> <category>initialize-release</category>

<body package="project1_CS474" selector="initialize">initialize	"Initialize a newly created instance. This method must answer the receiver."	super initialize.	" *** Edit the following to properly initialize instance variables ***"	number1 := 0.	number1b := 0.	number2b := 0.	number2 := 0.	operation:= nil.	equalflag:= 0.	operand1 := 0.	operand2 := 0.	resultd := 0.	resultb := 0.		" *** And replace this comment with additional initialization code *** "	^self</body>
</methods>



</st-source>

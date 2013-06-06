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
<body>Add:
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
<body>base3todecimal:
</comment>

<methods>
<class-id>Calculatorinterface class</class-id> <category>interface specs</category>

<body package="project1_CS474" selector="windowSpec">windowSpec
</methods>


<methods>
<class-id>Calculatorinterface</class-id> <category>aspects</category>

<body package="project1_CS474" selector="text1">text1

<body package="project1_CS474" selector="input1">input1

<body package="project1_CS474" selector="result1">result1

<body package="project1_CS474" selector="input2">input2

<body package="project1_CS474" selector="result">result

<body package="project1_CS474" selector="text2">text2
</methods>

<methods>
<class-id>Calculatorinterface</class-id> <category>commonoperation</category>

<body package="project1_CS474" selector="operationToPerform:">operationToPerform: op
</methods>

<methods>
<class-id>Calculatorinterface</class-id> <category>comment</category>

<body package="project1_CS474" selector="comment">comment
</methods>

<methods>
<class-id>Calculatorinterface</class-id> <category>actions</category>

<body package="project1_CS474" selector="Add0">Add0

<body package="project1_CS474" selector="add">add

<body package="project1_CS474" selector="Add1">Add1

<body package="project1_CS474" selector="Add2">Add2

<body package="project1_CS474" selector="ClearLog">ClearLog

<body package="project1_CS474" selector="divide">divide

<body package="project1_CS474" selector="Equals">Equals

<body package="project1_CS474" selector="multiply">multiply

<body package="project1_CS474" selector="subtract">subtract

<body package="project1_CS474" selector="Clear">Clear
</methods>

<methods>
<class-id>Calculatorinterface</class-id> <category>initialize-release</category>

<body package="project1_CS474" selector="initialize">initialize
</methods>


<methods>
<class-id>Calculatoroperations class</class-id> <category>instance creation</category>

<body package="project1_CS474" selector="new">new
</methods>


<methods>
<class-id>Calculatoroperations</class-id> <category>accessing</category>

<body package="project1_CS474" selector="number1b:">number1b: anObject

<body package="project1_CS474" selector="operand2:">operand2: anObject

<body package="project1_CS474" selector="operation">operation

<body package="project1_CS474" selector="resultb:">resultb: anObject

<body package="project1_CS474" selector="number2:">number2: anObject

<body package="project1_CS474" selector="equalflag">equalflag

<body package="project1_CS474" selector="number1:">number1: anObject

<body package="project1_CS474" selector="resultd:">resultd: anObject

<body package="project1_CS474" selector="number2b:">number2b: anObject

<body package="project1_CS474" selector="number1">number1

<body package="project1_CS474" selector="operand1:">operand1: anObject

<body package="project1_CS474" selector="operand1">operand1

<body package="project1_CS474" selector="equalflag:">equalflag: anObject

<body package="project1_CS474" selector="operation:">operation: anObject

<body package="project1_CS474" selector="number2b">number2b

<body package="project1_CS474" selector="number2">number2

<body package="project1_CS474" selector="resultb">resultb

<body package="project1_CS474" selector="resultd">resultd

<body package="project1_CS474" selector="operand2">operand2

<body package="project1_CS474" selector="number1b">number1b
</methods>

<methods>
<class-id>Calculatoroperations</class-id> <category>operations</category>

<body package="project1_CS474" selector="add">add

<body package="project1_CS474" selector="decimaltobase3:">decimaltobase3: num

<body package="project1_CS474" selector="divide">divide

<body package="project1_CS474" selector="base3todecimal:">base3todecimal: num

<body package="project1_CS474" selector="multiply">multiply

<body package="project1_CS474" selector="subtract">subtract
</methods>

<methods>
<class-id>Calculatoroperations</class-id> <category>initialize-release</category>

<body package="project1_CS474" selector="initialize">initialize
</methods>



</st-source>
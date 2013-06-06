<?xml version="1.0"?>

<st-source>
<time-stamp>From VisualWorks® NonCommercial, 7.7.1 of July 26, 2010 on June 5, 2013 at 9:37:03 PM</time-stamp>


<component-created>
<name>project2_CS474</name> <type>package</type>
</component-created><!-- Package project2_CS474* -->


<component-property>
<name>project2_CS474</name> <type>package</type>
<property>comment</property> <value>'The painter application.
'</value>
</component-property>

<class>
<name>Node</name>
<environment>Smalltalk</environment>
<super>Core.Object</super>
<private>false</private>
<indexed-type>none</indexed-type>
<inst-vars>title firstname lastname height width type </inst-vars>
<class-inst-vars></class-inst-vars>
<imports></imports>
<category></category>
<attributes>
<package>project2_CS474</package>
</attributes>
</class>

<comment>
<class-id>Node</class-id>
<body>This class is the base class for portrait, landscape, stilllife.Instance Variables	firstname	- Contains the first name of the painter	height	- Contains the height of the painting	lastname	- Contains the last name of the painter	title	- Contains the title of the painting	width - Contains the width of the painting</body>
</comment>

<class>
<name>Landscape</name>
<environment>Smalltalk</environment>
<super>Node</super>
<private>false</private>
<indexed-type>none</indexed-type>
<inst-vars>country </inst-vars>
<class-inst-vars></class-inst-vars>
<imports></imports>
<category></category>
<attributes>
<package>project2_CS474</package>
</attributes>
</class>

<comment>
<class-id>Landscape</class-id>
<body>Landscape class has the details about the landscape painting. Inherits from the Node class and also has the instance vaiableInstance Variables			Country-specifies the name of the country to which the painting belongs to.</body>
</comment>

<class>
<name>PaintingManager</name>
<environment>Smalltalk</environment>
<super>UI.ApplicationModel</super>
<private>false</private>
<indexed-type>none</indexed-type>
<inst-vars>peoplecount title height width firstname lastname peoplenames paintingcls pDetails lswidth lsfirstname lsheight lscountry lstitle lsDetails lslastname slheight sllastname sltitle slfirstname slwidth slpeoplecount slDetails portraitDelete delDetails mainList paintType country pType help listmain del listMain listToDel listType editSet editSelection deleteSelection deleteSet </inst-vars>
<class-inst-vars></class-inst-vars>
<imports></imports>
<category></category>
<attributes>
<package>project2_CS474</package>
</attributes>
</class>

<comment>
<class-id>PaintingManager</class-id>
<body>This painterManager class defines the details of the Interface.Also has the GUI canvas. And also sepcifies about the logic of adding painting details into the ordered collection.Has an instance of PaintingClass to the instance variable paintingcls.Methods: AddLandscape: performs the logic of getting landscape details and creating Landscape node and inserting it into sortedList ordered collection.AddPortrait: performs the logic of getting portrait details and creating Landscape node and inserting it into sortedList ordered collection.AddStillLife: performs the logic of getting stilllife details and creating Landscape node and inserting it into sortedList ordered collection.editPortrait: perofrms the logic of editing the portrait details.editLandscape: performs the logic of editing the landscape details.editStilllife : performs the logic of editing the stilllife details.deletePortrait: performs the logic of deleting the portrait details.deleteLandscape: performs the logic of deleting the landscape details.deleteStilllife : performs the logic of deleting the stilllife details.checkNumber: inputField: is used validate the input field for number entry.checkText: inputField: is used validate the input field for alphabit entry.deleteByTitle: performs the logic for deleting the details based on the title of the painting. sortTitle: performs the logic for displaying the details in sorted order by title.sortLastname: performs the logic for displaying the details in sorted order ny lastname.sortOrder: performs the logic of displaying the details in the text field.</body>
</comment>

<class>
<name>Portrait</name>
<environment>Smalltalk</environment>
<super>Node</super>
<private>false</private>
<indexed-type>none</indexed-type>
<inst-vars>peoplecount peoplenames </inst-vars>
<class-inst-vars></class-inst-vars>
<imports></imports>
<category></category>
<attributes>
<package>project2_CS474</package>
</attributes>
</class>

<comment>
<class-id>Portrait</class-id>
<body>Portrait class has the details about the portrait painting. And it inherits from the node class and also declares peoplecount and peoplenames.Instance Variables					people count - has the count of the number of people in the painting.			people names - has the names of the peoples in the painting.		</body>
</comment>

<class>
<name>Stilllife</name>
<environment>Smalltalk</environment>
<super>Node</super>
<private>false</private>
<indexed-type>none</indexed-type>
<inst-vars>paintingtype </inst-vars>
<class-inst-vars></class-inst-vars>
<imports></imports>
<category></category>
<attributes>
<package>project2_CS474</package>
</attributes>
</class>

<comment>
<class-id>Stilllife</class-id>
<body>Stilllife class inherits from the Node class and also defines the painting type where the type of painting is specified.Instance Variables	paintingtype	 - paintingtype indicates the type of painting. (water coloured or oil painting type).</body>
</comment>

<class>
<name>PaintingClass</name>
<environment>Smalltalk</environment>
<super>Core.Object</super>
<private>false</private>
<indexed-type>none</indexed-type>
<inst-vars>portraitList landscapeList stilllifeList sortedList comparisonBlock </inst-vars>
<class-inst-vars></class-inst-vars>
<imports></imports>
<category></category>
<attributes>
<package>project2_CS474</package>
</attributes>
</class>

<comment>
<class-id>PaintingClass</class-id>
<body>Painting class is mainly used in the painting manager class.Also defines the operations on the sortedList.Instance Variables		sortedList -  An instane of OrderedCollection and the painting details are added to this OrderedCollection.		</body>
</comment>

<methods>
<class-id>PaintingManager class</class-id> <category>resources</category>

<body package="project2_CS474" selector="menuBar">menuBar	"Tools.MenuEditor new openOnClass: self andSelector: #menuBar"	&lt;resource: #menu&gt;	^#(#{UI.Menu} #(			#(#{UI.MenuItem} 				#rawLabel: '&amp;Add' 				#nameKey: #edit 				#submenu: #(#{UI.Menu} #(						#(#{UI.MenuItem} 							#rawLabel: '&amp;Portrait Details' 							#nameKey: #pmenu 							#value: #pmenu ) 						#(#{UI.MenuItem} 							#rawLabel: 'Landscape Details' 							#nameKey: #lsmenu 							#value: #lsmenu ) 						#(#{UI.MenuItem} 							#rawLabel: '&amp;Stilllife Details' 							#nameKey: #slmenu 							#value: #slmenu ) ) #(3 ) nil ) ) 			#(#{UI.MenuItem} 				#rawLabel: '&amp;Edit' 				#nameKey: #edit 				#submenu: #(#{UI.Menu} #(						#(#{UI.MenuItem} 							#rawLabel: 'Portrait Details' 							#nameKey: #pedit 							#value: #pedit ) 						#(#{UI.MenuItem} 							#rawLabel: 'Landscape Details' 							#nameKey: #lsedit 							#value: #lsedit ) 						#(#{UI.MenuItem} 							#rawLabel: 'Stilllife Details' 							#nameKey: #sledit 							#value: #sledit ) ) #(3 ) nil ) ) 			#(#{UI.MenuItem} 				#rawLabel: '&amp;Sort' 				#nameKey: #sort 				#submenu: #(#{UI.Menu} #(						#(#{UI.MenuItem} 							#rawLabel: 'Title Sort' 							#nameKey: #titlesort 							#value: #sortTitle ) 						#(#{UI.MenuItem} 							#rawLabel: 'Lastname Sort' 							#nameKey: #lastnamesort 							#value: #sortLastname ) ) #(2 ) nil ) ) 			#(#{UI.MenuItem} 				#rawLabel: '&amp;Delete' 				#nameKey: #delete 				#submenu: #(#{UI.Menu} #(						#(#{UI.MenuItem} 							#rawLabel: 'Stilllife Delete' 							#nameKey: #sldelete 							#value: #sldelete ) 						#(#{UI.MenuItem} 							#rawLabel: 'Landscape Details' 							#nameKey: #lsdelete 							#value: #lsdelete ) 						#(#{UI.MenuItem} 							#rawLabel: 'Portrait Details' 							#nameKey: #pdelete 							#value: #pdelete ) ) #(3 ) nil ) ) ) #(4 ) nil ) decodeAsLiteralArray</body>
</methods>

<methods>
<class-id>PaintingManager class</class-id> <category>interface specs</category>

<body package="project2_CS474" selector="windowSpec">windowSpec	"Tools.UIPainter new openOnClass: self andSelector: #windowSpec"	&lt;resource: #canvas&gt;	^#(#{UI.FullSpec} 		#window: 		#(#{UI.WindowSpec} 			#label: 'Painting Managment System' 			#min: #(#{Core.Point} 900 316 ) 			#max: #(#{Core.Point} 0 0 ) 			#bounds: #(#{Graphics.Rectangle} 466 128 1366 728 ) 			#flags: 4 			#menu: #menuBar 			#colors: 			#(#{UI.LookPreferences} 				#setBackgroundColor: #(#{Graphics.ColorValue} 7167 7679 8191 ) 				#setSelectionBackgroundColor: #(#{Graphics.ColorValue} #royalBlue ) ) ) 		#component: 		#(#{UI.SpecCollection} 			#collection: #(				#(#{UI.TextEditorSpec} 					#layout: #(#{Graphics.Rectangle} 33 46 882 300 ) 					#name: #TextEditor1 					#colors: 					#(#{UI.LookPreferences} 						#setBackgroundColor: #(#{Graphics.ColorValue} 8191 7167 7679 ) ) 					#model: #pDetails 					#isReadOnly: true 					#tabRequiresControl: true ) 				#(#{UI.LabelSpec} 					#layout: #(#{Core.Point} 36 17 ) 					#name: #Label9 					#label: 'Painting Details:' ) 				#(#{UI.TextEditorSpec} 					#layout: #(#{Graphics.Rectangle} 45 459 838 522 ) 					#name: #help 					#flags: 45 					#colors: 					#(#{UI.LookPreferences} 						#setBackgroundColor: #(#{Graphics.ColorValue} 7167 7167 8191 ) ) 					#model: #help 					#tabRequiresControl: true ) 				#(#{UI.LabelSpec} 					#layout: #(#{Core.Point} 131 315 ) 					#name: #Label1 					#flags: 16 					#label: 'Title:' ) 				#(#{UI.LabelSpec} 					#layout: #(#{Core.Point} 315 315 ) 					#name: #Label2 					#flags: 16 					#label: 'Artist First Name:' ) 				#(#{UI.LabelSpec} 					#layout: #(#{Core.Point} 315 364 ) 					#name: #Label3 					#flags: 16 					#label: 'Artist Last Name:' ) 				#(#{UI.LabelSpec} 					#layout: #(#{Core.Point} 133 364 ) 					#name: #Label4 					#flags: 16 					#label: 'Height:' ) 				#(#{UI.LabelSpec} 					#layout: #(#{Core.Point} 133 413 ) 					#name: #Label5 					#flags: 16 					#label: 'Width:' ) 				#(#{UI.LabelSpec} 					#layout: #(#{Core.Point} 316 413 ) 					#name: #Label6 					#flags: 16 					#label: 'People Count:' ) 				#(#{UI.InputFieldSpec} 					#layout: #(#{Graphics.Rectangle} 186 320 286 343 ) 					#name: #title 					#flags: 56 					#model: #title ) 				#(#{UI.InputFieldSpec} 					#layout: #(#{Graphics.Rectangle} 186 365 286 388 ) 					#name: #height 					#flags: 56 					#model: #height 					#type: #text ) 				#(#{UI.InputFieldSpec} 					#layout: #(#{Graphics.Rectangle} 186 411 286 434 ) 					#name: #width 					#flags: 56 					#model: #width 					#type: #text ) 				#(#{UI.InputFieldSpec} 					#layout: #(#{Graphics.Rectangle} 406 315 506 338 ) 					#name: #firstname 					#flags: 56 					#model: #firstname ) 				#(#{UI.InputFieldSpec} 					#layout: #(#{Graphics.Rectangle} 406 364 506 387 ) 					#name: #lastname 					#flags: 56 					#model: #lastname ) 				#(#{UI.InputFieldSpec} 					#layout: #(#{Graphics.Rectangle} 406 410 506 433 ) 					#name: #peoplecount 					#flags: 56 					#model: #peoplecount 					#type: #text ) 				#(#{UI.ActionButtonSpec} 					#layout: #(#{Graphics.Rectangle} 293 541 404 564 ) 					#name: #AddPortrait 					#flags: 56 					#model: #AddPortrait 					#label: 'Add Portrait Details' 					#defaultable: true ) 				#(#{UI.ActionButtonSpec} 					#layout: #(#{Graphics.Rectangle} 778 331 859 354 ) 					#name: #deleteDetails 					#flags: 56 					#model: #deleteDetails 					#label: 'Delete Details' 					#defaultable: true ) 				#(#{UI.RadioButtonSpec} 					#layout: #(#{Core.Point} 394 413 ) 					#name: #oilbasedpainting 					#flags: 48 					#model: #pType 					#label: 'Oil Based Painting' 					#select: #oilbasedpainting ) 				#(#{UI.RadioButtonSpec} 					#layout: #(#{Core.Point} 508 414 ) 					#name: #watercolors 					#flags: 48 					#model: #pType 					#label: 'Water Colors' 					#select: #watercolors ) 				#(#{UI.InputFieldSpec} 					#layout: #(#{Graphics.Rectangle} 405 409 505 432 ) 					#name: #country 					#flags: 56 					#model: #country ) 				#(#{UI.ActionButtonSpec} 					#layout: #(#{Graphics.Rectangle} 294 541 405 563 ) 					#name: #AddStilllife 					#flags: 56 					#model: #AddStilllife 					#label: 'Add StillLife Details' 					#defaultable: true ) 				#(#{UI.ActionButtonSpec} 					#layout: #(#{Graphics.Rectangle} 278 542 412 564 ) 					#name: #AddLandscape 					#flags: 56 					#model: #AddLandscape 					#label: 'Add Landscape Details' 					#defaultable: true ) 				#(#{UI.SequenceViewSpec} 					#layout: #(#{Graphics.Rectangle} 34 47 881 300 ) 					#name: #List1 					#flags: 31 					#colors: 					#(#{UI.LookPreferences} 						#setBackgroundColor: #(#{Graphics.ColorValue} 8191 7679 7167 ) ) 					#model: #listToDel 					#callbacksSpec: 					#(#{UI.UIEventCallbackSubSpec} 						#doubleClickSelector: #editPainting ) 					#useModifierKeys: true 					#selectionType: #highlight ) 				#(#{UI.SequenceViewSpec} 					#layout: #(#{Graphics.Rectangle} 79 349 194 417 ) 					#name: #List2 					#flags: 29 					#colors: 					#(#{UI.LookPreferences} 						#setBackgroundColor: #(#{Graphics.ColorValue} 7679 8191 7167 ) ) 					#model: #listType 					#callbacksSpec: 					#(#{UI.UIEventCallbackSubSpec} 						#requestDoubleClickSelector: #deleteType ) 					#useModifierKeys: true 					#selectionType: #highlight ) 				#(#{UI.ActionButtonSpec} 					#layout: #(#{Graphics.Rectangle} 81 432 162 455 ) 					#name: #fetch 					#flags: 24 					#model: #deleteType 					#label: 'Fetch Details' 					#defaultable: true ) 				#(#{UI.LabelSpec} 					#layout: #(#{Core.Point} 35 16 ) 					#name: #Label7 					#flags: 16 					#label: 'Double click on Item to edit:' ) ) ) )</body>
</methods>


<methods>
<class-id>PaintingManager</class-id> <category>Edit</category>

<body package="project2_CS474" selector="deleteSet:">deleteSet:anObjdeleteSet := anObj.</body>

<body package="project2_CS474" selector="editSet:">editSet:anValeditSet:=anVal.</body>

<body package="project2_CS474" selector="editSet">editSet^editSet</body>

<body package="project2_CS474" selector="deleteSet">deleteSet^deleteSet.</body>
</methods>

<methods>
<class-id>PaintingManager</class-id> <category>menu-invoke</category>

<body package="project2_CS474" selector="portraitDetails">portraitDetailsDialog warn: 'hi'.^self .</body>
</methods>

<methods>
<class-id>PaintingManager</class-id> <category>actions</category>

<body package="project2_CS474" selector="sldelete">sldelete" This method is invoked when the delete button is clicked in the deletebytitle icon"|myChoices list2 list flag |flag :=0.self makeInvisible.deleteSet := 2.list := paintingcls sortedList.1 to: list  size  do: [: y | | x| x := ( list at:y).	 		( x type = 'Stilllife')		ifTrue:[				flag :=1.				].].(flag = 0)ifTrue:[Dialog warn: 'Nothing to delete, No stilllife details available!'. ^self.].myChoices := self builder componentAt: #help.myChoices beVisible.help value: 'Tip: Select an item in the list, and select delete details to delete the landscape item from list'.myChoices := self builder componentAt: #Label9.myChoices beVisible.myChoices := self builder componentAt: #Label7.myChoices beInvisible.list2 := OrderedCollection new.myChoices := self builder componentAt: #help.myChoices beVisible.help value: 'Tip: Select an item in the list, and select delete details to delete the landscape item from list'.myChoices := self builder componentAt: #deleteDetails.myChoices beVisible.myChoices := self wrapperAt: #deleteDetails.myChoices enable.myChoices := self builder componentAt: #List1.myChoices beVisible."paintingcls sortedList do:[: x | list2 add: ('Painting type: ', x type,' ','Painting title: ', x title, ' ','Painting firstname ', x firstname, ' ', 'Painting lastname: ', x lastname).]."listToDel list: list2 .self deleteType:'Stilllife'.^self.</body>

<body package="project2_CS474" selector="editStilllife">editStilllife" This method performs the operation of iterating through the OrderecCollection and deleting the details"| dtitle  list flag dselection temp tmp myChoices | tmp:= '' .myChoices := self builder componentAt: #help.myChoices beVisible.help value: 'Tip: Please click Edit Details to save the chenged details else the details are discarded'.self makeVisibleStilllife.temp := self builder componentAt: #TextEditor1.temp beInvisible.temp := self builder componentAt: #List1.temp beVisible.temp := self wrapperAt: #height.temp enable.temp := self wrapperAt: #width.temp enable.temp := self wrapperAt: #firstname.temp enable.temp := self wrapperAt: #lastname.temp enable.temp := self wrapperAt: #peoplecount.temp enable.temp := self builder componentAt: #Label6.temp beVisible.(self widgetAt: #Label6) labelString: 'paintingtype'.temp := self wrapperAt: #oilbasedpainting.temp enable.temp := self wrapperAt: #watercolors.temp enable.temp := self wrapperAt: #AddStilllife.temp enable.(self widgetAt: #AddStilllife) labelString: 'Edit Details'." creating a new ordered collection "OrderedCollection new.dtitle:= listToDel selection.dselection :='Stilllife'.(paintingcls sortedList size = 0)ifTrue:[Dialog warn: 'Nothing to delete!'. ^self.].flag := 0.list := paintingcls sortedList.1 to: list  size  do: [: y | | x| x := ( list at:y).	 		(dselection = 'Landscape' &amp; x type = 'Landscape')		ifTrue:[				(dtitle = ('Painting type: ', x type,' ','Title: ', x title, ' ','Firstname: ', x firstname, ' ', 'Lastname: ', x lastname, ' ', 'Width: ', x width printString,' ','Height: ', x height printString,' ', 'Country: ', x country))				ifTrue:[						flag := y.				].							].		(dselection = 'Stilllife' &amp; x type = 'Stilllife' )	     ifTrue:[				(dtitle =  ('Painting type: ', x type,' ','Title: ', x title, ' ','Firstname: ', x firstname, ' ', 'Lastname: ',' ', x lastname, ' ','Height: ', x height printString,' ', 'Width: ', x width printString,' ', 'Painting type: ', x paintingtype))				ifTrue:[						flag := y.				].					].(dselection = 'Portrait' &amp; x type = 'Portrait' )	ifTrue:[				(x peoplenames size &gt; 0)			ifTrue:[						1 to:(x peoplenames size) do: [ :i |						tmp := tmp ,'  ' ,'Name ',i printString,': ' , (((x peoplenames at:i ) asSymbol) asString).					]. ].				(dtitle =  ('Painting type: ', x type,' ','Title: ', x title, ' ','Firstname: ', x firstname, ' ', 'Lastname: ',' ', x lastname, ' ','Height: ', x height printString,' ', 'Width: ', x width printString,' ', 'Peoplecount: ', x peoplecount printString, ' ','Peoplenames: ', tmp))				ifTrue:[						flag := y.				].				].]."1 to: list  size  do:[:i| (dtitle  = ('Painting type: ', (paintingcls sortedList at:i) type,' ','Title: ', (paintingcls sortedList at:i) title, ' ','Firstname ', (paintingcls sortedList at:i) firstname, ' ', 'Lastname: ', (paintingcls sortedList at:i) lastname,' ', 'Width: ',(paintingcls sortedList at:i) width printString, 'Height: ',(paintingcls sortedList at:i)height, 'Country: ', (paintingcls sortedList at:i)country )) ifTrue:[flag := i.].]."(flag &gt; 0)ifTrue:[ | node|node := paintingcls sortedList at:flag.title value: node title.firstname value: node firstname.lastname value: node lastname.width value: (node width) printString.height value: (node height)printString.paintingcls sortedList removeIndex: flag.self sortOrder.self editPainting:'Stilllife'.self editSet:1.flag :=0.]."self deleteReform."	^self</body>

<body package="project2_CS474" selector="slmenu">slmenu| temp myChoices |" This method does the work of hiding the components other than which is needed for inserting the still life details from the GUI"self makeVisibleStilllife.myChoices := self builder componentAt: #help.myChoices beVisible.help value: 'Tip: Provide the Stilllife details and select Add Details to save the item details.'.listToDel list: ''.myChoices := self builder componentAt: #Label9.myChoices beVisible.myChoices := self builder componentAt: #Label7.myChoices beInvisible.temp := self wrapperAt: #title.temp enable.temp := self wrapperAt: #height.temp enable.temp := self wrapperAt: #width.temp enable.temp := self wrapperAt: #firstname.temp enable.temp := self wrapperAt: #lastname.temp enable.temp := self builder componentAt: #Label6.temp beVisible.(self widgetAt: #Label6) labelString: 'Painting Type:'.temp := self wrapperAt: #oilbasedpainting.temp enable.temp := self wrapperAt: #watercolors.temp enable.temp := self wrapperAt: #AddStilllife.temp enable.(self widgetAt: #AddStilllife) labelString: 'Add Details'.^self.</body>

<body package="project2_CS474" selector="editPainting">editPainting(deleteSet = 2)ifTrue:[^self.].(editSelection = 'Portrait')ifTrue:[self editPortrait.].(editSelection  = 'Stilllife')ifTrue:[self editStilllife.].(editSelection = 'Landscape')ifTrue:[self editLandscape.].</body>

<body package="project2_CS474" selector="deleteType">deleteType| list2 dselection temp tmp|list2 := OrderedCollection new.dselection := listType selection.deleteSelection := dselection.tmp:=''.(dselection  isNil)ifTrue:[Dialog warn: 'Please select an option!'. ^self.].(paintingcls sortedList size = 0)ifTrue:[Dialog warn: 'Nothing to delete, no painting details!'. temp := self wrapperAt: #List2.temp enable.^self.]."temp := self wrapperAt: #List2.temp disable."paintingcls sortedList do: [: x | 	(dselection = 'Landscape' &amp; x type = 'Landscape')	ifTrue:[				list2 add: ('Painting type: ', x type,' ','Title: ', x title, ' ','Firstname: ', x firstname, ' ', 'Lastname: ', x lastname, ' ', 'Width: ', x width printString,' ','Height: ', x height printString,' ', 'Country: ', x country).].		(dselection = 'Stilllife' &amp; x type = 'Stilllife' )	ifTrue:[				list2 add:  ('Painting type: ', x type,' ','Title: ', x title, ' ','Firstname: ', x firstname, ' ', 'Lastname: ',' ', x lastname, ' ','Height: ', x height printString,' ', 'Width: ', x width printString,' ', 'Painting type: ', x paintingtype).			].	(dselection = 'Portrait' &amp; x type = 'Portrait' )	ifTrue:[				(x peoplenames size &gt; 0)			ifTrue:[						1 to:(x peoplenames size) do: [ :i |						tmp := tmp ,'  ' ,'Name ',i printString,': ' , (((x peoplenames at:i ) asSymbol) asString).					]. ].				list2 add:  ('Painting type: ', x type,' ','Title: ', x title, ' ','Firstname: ', x firstname, ' ', 'Lastname: ',' ', x lastname, ' ','Height: ', x height printString,' ', 'Width: ', x width printString,' ', 'Peoplecount: ', x peoplecount printString, ' ','Peoplenames: ', tmp).			].].listToDel list: list2 .	^self</body>

<body package="project2_CS474" selector="AddLandscape">AddLandscape" This is the method to add the Landscape  details into the List by reading from the UI and creating a node and inserting it into the list"| newNode flag |" Validations for the inputField Title"flag:= self checkText:(title value) inputField:'Title'.(flag = 1)ifTrue: [title value:''.^self.]." Validations for the inputField Firstname"flag:= self checkText:(firstname value) inputField:'First Name'.(flag = 1)ifTrue: [firstname value:''.^self.]." Validations for the inputField Lastname"flag:= self checkText:(lastname value) inputField:'Last Name'.(flag = 1)ifTrue: [lastname value:''.^self.]." Validations for the inputField Height"flag:= self checkNumber:(height value) inputField:'Height'.(flag = 1)ifTrue: [height value:''.^self.]." Validations for the inputField Width"flag:= self checkNumber:(width value) inputField:'Width'.(flag = 1)ifTrue: [width value:''.^self.]." Validations for the inputField  Country"flag:= self checkText:(country value) inputField:'Country'.(flag = 1)ifTrue: [country value:''.^self.]."Creating a new node by reading values from the inputfield"newNode := Landscape new.newNode type: 'Landscape'.newNode title: title value.newNode firstname: firstname value.newNode lastname: lastname value.newNode width:  (LargePositiveInteger readFromString: width value).newNode height: (LargePositiveInteger readFromString: height value).newNode country: country value."Checking for already existing painting"paintingcls sortedList do:[: x | (x type = newNode type)ifTrue:[(x type = newNode type)ifTrue:[	(x title = newNode title)	ifTrue:[			( x firstname = newNode firstname)				ifTrue:[							( x lastname = newNode lastname)						ifTrue:[								( x height = newNode height)									ifTrue:[											( x width = newNode height)												ifTrue:[													( x country = newNode country)													ifTrue:[																Dialog warn: 'The details already exist for this particular painting in landscape'.														title value:''.																firstname value:''.														lastname value:''.														height value:''.														width value:''.														country value:''.														^self.														]. ].].].].].	].].].pDetails value.paintingcls sortedenqueue: newNode.														title value:''.																firstname value:''.														lastname value:''.														height value:''.														width value:''.														country value:''.self sortOrder.self editPainting:'Landscape'.(editSet = 1)ifTrue:[|temp|editSet = 0.self makeInvisible.temp := self wrapperAt: #title.temp enable.temp := self wrapperAt: #height.temp enable.temp := self wrapperAt: #width.temp enable.temp := self wrapperAt: #firstname.temp enable.temp := self wrapperAt: #lastname.temp enable.temp := self wrapperAt: #peoplecount.temp enable.(self widgetAt: #Label6) labelString: 'Country:'.temp := self wrapperAt: #AddLandscape.temp enable.(self widgetAt: #AddLandscape) labelString: 'Edit Details'.].	^self</body>

<body package="project2_CS474" selector="SortLastname">SortLastname	"This is the method which is defined in the GUI"	^self</body>

<body package="project2_CS474" selector="sortOrder">sortOrder" This method is used to display the list details in the TextEditor field"| valTemp tmp temp |tmp :=' '.valTemp:=' '.temp := self builder componentAt: #TextEditor1.temp beVisible.(paintingcls sortedList size = 0)ifTrue:[pDetails value: ''.]ifFalse:[paintingcls sortedList do:[: x | 	(x type ='Portrait')	ifTrue:[	(x peoplenames size &gt; 0)	ifTrue:[	1 to:(x peoplenames size) do: [ :i |						tmp := tmp ,'  ' ,'Name ',i printString,': ' , (((x peoplenames at:i ) asSymbol) asString).	]. ].	pDetails value: ''.	valTemp := (valTemp,' ', 'Painting Type: Portrait','\','------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------','\', 'Title: ',x title,' | ','FirstName: ',x firstname,' | ','LastName: ', x lastname,' | ', 'Height: ',x height printString, ' | ', 'Width: ',x width printString, ' | ', 'People Count: ', x peoplecount printString, ' | ', 'People Names: ', tmp , '\','------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------','\','\' )withCRs.	pDetails value: valTemp.	tmp:=''.	].		(x type ='Landscape')	ifTrue:[	pDetails value: ''.	valTemp := (valTemp,'', 'Painting Type: Landscape', '\','------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------','\', 'Title: ',x title,' | ','FirstName: ',x firstname,' | ','LastName: ', x lastname,' | ', 'Height: ',x height printString, ' | ', 'Width: ',x width printString, ' | ', 'Country: ', x country,'\','------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------','\',  '\')withCRs.	pDetails value: valTemp.	].	(x type ='Stilllife')	ifTrue:[	pDetails value: ''.	valTemp := (valTemp,' ', 'Painting Type: Stilllife', '\','------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------','\','Title: ',x title,' | ','FirstName: ',x firstname,' | ','LastName: ', x lastname,' | ', 'Height: ',x height printString, ' | ', 'Width: ',x width printString, ' | ', 'Paint Type ', x paintingtype, '\','------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------','\','\')withCRs.	pDetails value: valTemp.	].	].].^self.</body>

<body package="project2_CS474" selector="lsedit">lsedit| myChoices list flag |	self makeInvisible.list := paintingcls sortedList.flag :=0.deleteSet := 1.1 to: list  size  do: [: y | | x| x := ( list at:y).	 		( x type = 'Landscape')		ifTrue:[				flag :=1.				].].(flag = 0)ifTrue:[Dialog warn: 'Nothing to edit, no landscape details is available!'. ^self.].myChoices := self builder componentAt: #help.myChoices beVisible.help value: 'Tip: Double click the item in the list to edit the details, please select Edit Details to save the details else the details are discarded.'.listToDel list: ''.editSelection:= 'Landscape'.myChoices := self builder componentAt: #List1.myChoices beVisible.myChoices := self builder componentAt: #Label7.myChoices beVisible.myChoices := self builder componentAt: #Label9.myChoices beInvisible.self editPainting:'Landscape'.^self.</body>

<body package="project2_CS474" selector="editPainting:">editPainting:dselection| list2  temp tmp|list2 := OrderedCollection new.tmp:=''.(dselection  isNil)ifTrue:[Dialog warn: 'Please select an option!'. ^self.]."(paintingcls sortedList size = 0)ifTrue:[Dialog warn: 'Nothing to delete, no painting details!'. temp := self wrapperAt: #List2.temp enable.^self.]."paintingcls sortedList do: [: x | 	(dselection = 'Landscape' &amp; x type = 'Landscape')	ifTrue:[				list2 add: ('Painting type: ', x type,' ','Title: ', x title, ' ','Firstname: ', x firstname, ' ', 'Lastname: ', x lastname, ' ', 'Width: ', x width printString,' ','Height: ', x height printString,' ', 'Country: ', x country).].		(dselection = 'Stilllife' &amp; x type = 'Stilllife' )	ifTrue:[				list2 add:  ('Painting type: ', x type,' ','Title: ', x title, ' ','Firstname: ', x firstname, ' ', 'Lastname: ',' ', x lastname, ' ','Height: ', x height printString,' ', 'Width: ', x width printString,' ', 'Painting type: ', x paintingtype).			].	(dselection = 'Portrait' &amp; x type = 'Portrait' )	ifTrue:[				(x peoplenames size &gt; 0)			ifTrue:[						1 to:(x peoplenames size) do: [ :i |						tmp := tmp ,'  ' ,'Name ',i printString,': ' , (((x peoplenames at:i ) asSymbol) asString).					]. ].				list2 add:  ('Painting type: ', x type,' ','Title: ', x title, ' ','Firstname: ', x firstname, ' ', 'Lastname: ',' ', x lastname, ' ','Height: ', x height printString,' ', 'Width: ', x width printString,' ', 'Peoplecount: ', x peoplecount printString, ' ','Peoplenames: ', tmp).			].tmp :=''.].listToDel list: list2 .	^self</body>

<body package="project2_CS474" selector="deletedetails">deletedetails| temp list2|" This method is used to hide the other GUI components when the user clickes the deletebytitle button"self makeInvisible.list2 := OrderedCollection new.temp := self builder componentAt: #deleteDetails.temp beVisible.temp := self builder componentAt: #Label8.temp beVisible.temp := self wrapperAt: #deleteDetails.temp enable.temp := self builder componentAt: #listToDel.temp beVisible.listToDel list: list2 .</body>

<body package="project2_CS474" selector="deleteDetails">deleteDetails" This method performs the operation of iterating through the OrderecCollection and deleting the details"| dtitle  list flag dselection temp tmp| tmp:= '' ." creating a new ordered collection "OrderedCollection new.dtitle:= listToDel selection.dselection := deleteSelection.(paintingcls sortedList size = 0)ifTrue:[Dialog warn: 'Nothing to delete!'. ^self.]."Dialog request: 'Are you sure! Do you want to delete the details of title: ' ,(dtitle) printString.	"flag := 0.list := paintingcls sortedList.1 to: list  size  do: [: y | | x| x := ( list at:y).	 		(dselection = 'Landscape' &amp; x type = 'Landscape')		ifTrue:[				(dtitle = ('Painting type: ', x type,' ','Title: ', x title, ' ','Firstname: ', x firstname, ' ', 'Lastname: ', x lastname, ' ', 'Width: ', x width printString,' ','Height: ', x height printString,' ', 'Country: ', x country))				ifTrue:[				flag := y.].				].		(dselection = 'Stilllife' &amp; x type = 'Stilllife' )	     ifTrue:[				(dtitle =  ('Painting type: ', x type,' ','Title: ', x title, ' ','Firstname: ', x firstname, ' ', 'Lastname: ',' ', x lastname, ' ','Height: ', x height printString,' ', 'Width: ', x width printString,' ', 'Painting type: ', x paintingtype))				ifTrue:[				flag := y.].				].(dselection = 'Portrait' &amp; x type = 'Portrait' )	ifTrue:[				(x peoplenames size &gt; 0)			ifTrue:[						1 to:(x peoplenames size) do: [ :i |						tmp := tmp ,'  ' ,'Name ',i printString,': ' , (((x peoplenames at:i ) asSymbol) asString).					]. ].				(dtitle =  ('Painting type: ', x type,' ','Title: ', x title, ' ','Firstname: ', x firstname, ' ', 'Lastname: ',' ', x lastname, ' ','Height: ', x height printString,' ', 'Width: ', x width printString,' ', 'Peoplecount: ', x peoplecount printString, ' ','Peoplenames: ', tmp))				ifTrue:[				flag := y.].			].]."1 to: list  size  do:[:i| (dtitle  = ('Painting type: ', (paintingcls sortedList at:i) type,' ','Title: ', (paintingcls sortedList at:i) title, ' ','Firstname ', (paintingcls sortedList at:i) firstname, ' ', 'Lastname: ', (paintingcls sortedList at:i) lastname,' ', 'Width: ',(paintingcls sortedList at:i) width printString, 'Height: ',(paintingcls sortedList at:i)height, 'Country: ', (paintingcls sortedList at:i)country )) ifTrue:[flag := i.].]."(flag &gt; 0)ifTrue:[ |myChoices|paintingcls sortedList removeIndex: flag.self sortOrder.myChoices := self builder componentAt: #TextEditor1.myChoices beVisible.myChoices := self builder componentAt: #List1.myChoices beInvisible.flag :=0.]."self deleteReform."	^self</body>

<body package="project2_CS474" selector="lsdelete">lsdelete" This method is invoked when the delete button is clicked in the deletebytitle icon"|myChoices list2 list  flag |self makeInvisible.flag :=0.list2 := OrderedCollection new.list := paintingcls sortedList.deleteSet := 2.1 to: list  size  do: [: y | | x| x := ( list at:y).	 		( x type = 'Landscape')		ifTrue:[				flag :=1.				].].(flag = 0)ifTrue:[Dialog warn: 'Nothing to delete, no landscape details is available!'. ^self.].myChoices := self builder componentAt: #help.myChoices beVisible.help value: 'Tip: Select an item in the list, and select delete details to delete the landscape item from list'.myChoices := self builder componentAt: #deleteDetails.myChoices beVisible.myChoices := self wrapperAt: #deleteDetails.myChoices enable.myChoices := self builder componentAt: #Label9.myChoices beVisible.myChoices := self builder componentAt: #Label7.myChoices beInvisible.myChoices := self builder componentAt: #List1.myChoices beVisible."paintingcls sortedList do:[: x | list2 add: ('Painting type: ', x type,' ','Painting title: ', x title, ' ','Painting firstname ', x firstname, ' ', 'Painting lastname: ', x lastname).]."listToDel list: list2 .self deleteType:'Landscape'.^self.</body>

<body package="project2_CS474" selector="lsmenu">lsmenu| temp myChoices |self makeVisibleLandscape." This method does the work of hiding the components other than which is needed for inserting the land scape details from the GUI"listToDel list: ''.myChoices := self builder componentAt: #Label9.myChoices beVisible.myChoices := self builder componentAt: #Label7.myChoices beInvisible.myChoices := self builder componentAt: #help.myChoices beVisible.help value: 'Tip: Provide the Landscape details and select Add Details to save the item details.'.temp := self wrapperAt: #title.temp enable.temp := self wrapperAt: #height.temp enable.temp := self wrapperAt: #width.temp enable.temp := self wrapperAt: #firstname.temp enable.temp := self wrapperAt: #lastname.temp enable.temp := self wrapperAt: #country.temp enable.temp := self builder componentAt: #Label6.temp beVisible.(self widgetAt: #Label6) labelString: 'Country: '.temp := self wrapperAt: #AddLandscape.temp enable.(self widgetAt: #AddLandscape) labelString: 'Add Details'.^self.</body>

<body package="project2_CS474" selector="deleteReform">deleteReform| list2 dselection temp tmp|list2 := OrderedCollection new.dselection := self deleteType.tmp :=''.paintingcls sortedList do: [: x | 	(dselection = 'Landscape' &amp; x type = 'Landscape')	ifTrue:[				list2 add: ('Painting type: ', x type,' ','Title: ', x title, ' ','Firstname: ', x firstname, ' ', 'Lastname: ', x lastname, ' ', 'Width: ', x width printString,' ','Height: ', x height printString,' ', 'Country: ', x country).].		(dselection = 'Stilllife' &amp; x type = 'Stilllife' )	ifTrue:[				list2 add:  ('Painting type: ', x type,' ','Title: ', x title, ' ','Firstname: ', x firstname, ' ', 'Lastname: ',' ', x lastname, ' ','Height: ', x height printString,' ', 'Width: ', x width printString,' ', 'Painting type: ', x paintingtype).			].	(dselection = 'Portrait' &amp; x type = 'Portrait' )	ifTrue:[				(x peoplenames size &gt; 0)			ifTrue:[						1 to:(x peoplenames size) do: [ :i |						tmp := tmp ,'  ' ,'Name ',i printString,': ' , (((x peoplenames at:i ) asSymbol) asString).					]. ].				list2 add:  ('Painting type: ', x type,' ','Title: ', x title, ' ','Firstname: ', x firstname, ' ', 'Lastname: ',' ', x lastname, ' ','Height: ', x height printString,' ', 'Width: ', x width printString,' ', 'Peoplecount: ', x peoplecount printString, ' ','Peoplenames: ', tmp).			].].temp := self wrapperAt: #List2.temp enable.listToDel list: list2 .	^self</body>

<body package="project2_CS474" selector="AddStilllife">AddStilllife" This is the method to add the Portrait details into the List by reading from the UI and creating a node and inserting it into the list"| newNode flag |" Validations for the inputField Title"flag:= self checkText:(title value) inputField:'Title'.(flag = 1)ifTrue: [title value:''.^self.]." Validations for the inputField First Name"flag:= self checkText:(firstname value) inputField:'First Name'.(flag = 1)ifTrue: [firstname value:''.^self.]." Validations for the inputField Last Name"flag:= self checkText:(lastname value) inputField:'Last Name'.(flag = 1)ifTrue: [lastname value:''.^self.]." Validations for the inputField Height"flag:= self checkNumber:(height value) inputField:'Height'.(flag = 1)ifTrue: [height value:''.^self.]." Validations for the inputField Width"flag:= self checkNumber:(width value) inputField:'Width'.(flag = 1)ifTrue: [width value:''.^self.].newNode := Stilllife new.newNode type: 'Stilllife'.newNode title: title value.newNode firstname: firstname value.newNode lastname: lastname value.newNode height: (LargePositiveInteger readFromString: height value).newNode width:  (LargePositiveInteger readFromString: width value).newNode paintingtype: (((pType value) asSymbol) asString).paintingcls sortedList do:[: x | (x type = newNode type)ifTrue:[	(x title = newNode title)	ifTrue:[			( x firstname = newNode firstname)				ifTrue:[							( x lastname = newNode lastname)						ifTrue:[								( x height = newNode height)									ifTrue:[											( x width = newNode height)												ifTrue:[													( x paintingtype = newNode paintingtype)													ifTrue:[																Dialog warn: 'The details already exist for this particular painting'.														title value:''.																firstname value:''.														lastname value:''.														height value:''.														width value:''.														^self.														]. ].].].].].	].].paintingcls sortedenqueue: newNode.														title value:''.																firstname value:''.														lastname value:''.														height value:''.														width value:''.self sortOrder.self editPainting:'Stilllife'.(editSet = 1)ifTrue:[|temp|editSet = 0.self makeInvisible.temp := self wrapperAt: #title.temp enable.temp := self wrapperAt: #height.temp enable.temp := self wrapperAt: #width.temp enable.temp := self wrapperAt: #firstname.temp enable.temp := self wrapperAt: #lastname.temp enable.temp := self builder componentAt: #Label6.temp beVisible.(self widgetAt: #Label6) labelString: 'paintingtype'.temp := self wrapperAt: #oilbasedpainting.temp enable.temp := self wrapperAt: #watercolors.temp enable.temp := self wrapperAt: #AddStilllife.temp enable.(self widgetAt: #AddStilllife) labelString: 'Edit Details'.].	^self</body>

<body package="project2_CS474" selector="editLandscape">editLandscape" This method performs the operation of iterating through the OrderecCollection and deleting the details"| dtitle  list flag dselection temp tmp myChoices | tmp:= '' .myChoices := self builder componentAt: #help.myChoices beVisible.help value: 'Tip: Please click Edit Details to save the chenged details else the details are discarded.'.self makeVisibleLandscape.temp := self wrapperAt: #title.temp enable.temp := self builder componentAt: #TextEditor1.temp beInvisible.temp := self builder componentAt: #List1.temp beVisible.temp := self wrapperAt: #height.temp enable.temp := self wrapperAt: #width.temp enable.temp := self wrapperAt: #firstname.temp enable.temp := self wrapperAt: #lastname.temp enable.temp := self wrapperAt: #country.temp enable.temp := self builder componentAt: #Label6.temp beVisible.temp := self wrapperAt: #peoplecount.temp enable.(self widgetAt: #Label6) labelString: 'Country:'.temp := self wrapperAt: #AddLandscape.temp enable.(self widgetAt: #AddLandscape) labelString: 'Edit Details'." creating a new ordered collection "OrderedCollection new.dtitle:= listToDel selection.dselection :='Landscape'.(paintingcls sortedList size = 0)ifTrue:[Dialog warn: 'Nothing to delete!'. ^self.].flag := 0.list := paintingcls sortedList.1 to: list  size  do: [: y | | x| x := ( list at:y).	 		(dselection = 'Landscape' &amp; x type = 'Landscape')		ifTrue:[				(dtitle = ('Painting type: ', x type,' ','Title: ', x title, ' ','Firstname: ', x firstname, ' ', 'Lastname: ', x lastname, ' ', 'Width: ', x width printString,' ','Height: ', x height printString,' ', 'Country: ', x country))				ifTrue:[flag := y.].				].		(dselection = 'Stilllife' &amp; x type = 'Stilllife' )	     ifTrue:[				(dtitle =  ('Painting type: ', x type,' ','Title: ', x title, ' ','Firstname: ', x firstname, ' ', 'Lastname: ',' ', x lastname, ' ','Height: ', x height printString,' ', 'Width: ', x width printString,' ', 'Painting type: ', x paintingtype))				ifTrue:[flag := y.].				].(dselection = 'Portrait' &amp; x type = 'Portrait' )	ifTrue:[				(x peoplenames size &gt; 0)			ifTrue:[						1 to:(x peoplenames size) do: [ :i |						tmp := tmp ,'  ' ,'Name ',i printString,': ' , (((x peoplenames at:i ) asSymbol) asString).					]. ].				(dtitle =  ('Painting type: ', x type,' ','Title: ', x title, ' ','Firstname: ', x firstname, ' ', 'Lastname: ',' ', x lastname, ' ','Height: ', x height printString,' ', 'Width: ', x width printString,' ', 'Peoplecount: ', x peoplecount printString, ' ','Peoplenames: ', tmp))				ifTrue:[flag := y.].			].]."1 to: list  size  do:[:i| (dtitle  = ('Painting type: ', (paintingcls sortedList at:i) type,' ','Title: ', (paintingcls sortedList at:i) title, ' ','Firstname ', (paintingcls sortedList at:i) firstname, ' ', 'Lastname: ', (paintingcls sortedList at:i) lastname,' ', 'Width: ',(paintingcls sortedList at:i) width printString, 'Height: ',(paintingcls sortedList at:i)height, 'Country: ', (paintingcls sortedList at:i)country )) ifTrue:[flag := i.].]."(flag &gt; 0)ifTrue:[ | node|node := paintingcls sortedList at:flag.title value: node title.firstname value: node firstname.lastname value: node lastname.width value: (node width) printString.height value: (node height)printString.country value:node country.paintingcls sortedList removeIndex: flag.self sortOrder.self editPainting:'Landscape'.self editSet:1.flag :=0.]."self deleteReform."	^self</body>

<body package="project2_CS474" selector="editPortrait">editPortrait" This method performs the operation of iterating through the OrderecCollection and deleting the details"| dtitle  list flag dselection temp tmp myChoices | tmp:= '' .self makeVisiblePortrait.myChoices := self builder componentAt: #help.myChoices beVisible.help value: 'Tip: Please click Edit Details to save the chenged details else the details are discarded'.temp := self builder componentAt: #TextEditor1.temp beInvisible.temp := self builder componentAt: #List1.temp beVisible.temp := self wrapperAt: #height.temp enable.temp := self wrapperAt: #width.temp enable.temp := self wrapperAt: #firstname.temp enable.temp := self wrapperAt: #lastname.temp enable.temp := self wrapperAt: #peoplecount.temp enable.(self widgetAt: #Label6) labelString: 'peoplecount'.temp := self wrapperAt: #AddPortrait.temp enable.(self widgetAt: #AddPortrait) labelString: 'Edit Details'." creating a new ordered collection "OrderedCollection new.dtitle:= listToDel selection.dselection :='Portrait'.(paintingcls sortedList size = 0)ifTrue:[Dialog warn: 'Nothing to delete!'. ^self.].flag := 0.list := paintingcls sortedList.1 to: list  size  do: [: y | | x| x := ( list at:y).	 		(dselection = 'Landscape' &amp; x type = 'Landscape')		ifTrue:[				(dtitle = ('Painting type: ', x type,' ','Title: ', x title, ' ','Firstname: ', x firstname, ' ', 'Lastname: ', x lastname, ' ', 'Width: ', x width printString,' ','Height: ', x height printString,' ', 'Country: ', x country))				ifTrue:[						flag := y.					].								].		(dselection = 'Stilllife' &amp; x type = 'Stilllife' )	     ifTrue:[				(dtitle =  ('Painting type: ', x type,' ','Title: ', x title, ' ','Firstname: ', x firstname, ' ', 'Lastname: ',' ', x lastname, ' ','Height: ', x height printString,' ', 'Width: ', x width printString,' ', 'Painting type: ', x paintingtype))				ifTrue:[						flag := y.					].				].(dselection = 'Portrait' &amp; x type = 'Portrait' )	ifTrue:[				(x peoplenames size &gt; 0)			ifTrue:[						1 to:(x peoplenames size) do: [ :i |						tmp := tmp ,'  ' ,'Name ',i printString,': ' , (((x peoplenames at:i ) asSymbol) asString).					]. ].				(dtitle =  ('Painting type: ', x type,' ','Title: ', x title, ' ','Firstname: ', x firstname, ' ', 'Lastname: ',' ', x lastname, ' ','Height: ', x height printString,' ', 'Width: ', x width printString,' ', 'Peoplecount: ', x peoplecount printString, ' ','Peoplenames: ', tmp))				ifTrue:[				flag := y.].			].]."1 to: list  size  do:[:i| (dtitle  = ('Painting type: ', (paintingcls sortedList at:i) type,' ','Title: ', (paintingcls sortedList at:i) title, ' ','Firstname ', (paintingcls sortedList at:i) firstname, ' ', 'Lastname: ', (paintingcls sortedList at:i) lastname,' ', 'Width: ',(paintingcls sortedList at:i) width printString, 'Height: ',(paintingcls sortedList at:i)height, 'Country: ', (paintingcls sortedList at:i)country )) ifTrue:[flag := i.].]."(flag &gt; 0)ifTrue:[ | node|node := paintingcls sortedList at:flag.title value: node title.firstname value: node firstname.lastname value: node lastname.width value: (node width) printString.height value: (node height)printString.peoplecount value: (node peoplecount)printString.paintingcls sortedList removeIndex: flag.self sortOrder.self editPainting:'Portrait'.self editSet:1.flag :=0.]."self deleteReform."	^self</body>

<body package="project2_CS474" selector="deleteType:">deleteType:dselection| list2  temp tmp|list2 := OrderedCollection new.deleteSelection := dselection.tmp:=''.(dselection  isNil)ifTrue:[Dialog warn: 'Please select an option!'. ^self.].(paintingcls sortedList size = 0)ifTrue:[Dialog warn: 'Nothing to delete, no painting details!'. temp := self wrapperAt: #List2.temp enable.^self.]."temp := self wrapperAt: #List2.temp disable."paintingcls sortedList do: [: x | 	(dselection = 'Landscape' &amp; x type = 'Landscape')	ifTrue:[				list2 add: ('Painting type: ', x type,' ','Title: ', x title, ' ','Firstname: ', x firstname, ' ', 'Lastname: ', x lastname, ' ', 'Width: ', x width printString,' ','Height: ', x height printString,' ', 'Country: ', x country).].		(dselection = 'Stilllife' &amp; x type = 'Stilllife' )	ifTrue:[				list2 add:  ('Painting type: ', x type,' ','Title: ', x title, ' ','Firstname: ', x firstname, ' ', 'Lastname: ',' ', x lastname, ' ','Height: ', x height printString,' ', 'Width: ', x width printString,' ', 'Painting type: ', x paintingtype).			].	(dselection = 'Portrait' &amp; x type = 'Portrait' )	ifTrue:[				(x peoplenames size &gt; 0)			ifTrue:[						1 to:(x peoplenames size) do: [ :i |						tmp := tmp ,'  ' ,'Name ',i printString,': ' , (((x peoplenames at:i ) asSymbol) asString).					]. ].				list2 add:  ('Painting type: ', x type,' ','Title: ', x title, ' ','Firstname: ', x firstname, ' ', 'Lastname: ',' ', x lastname, ' ','Height: ', x height printString,' ', 'Width: ', x width printString,' ', 'Peoplecount: ', x peoplecount printString, ' ','Peoplenames: ', tmp).			].].listToDel list: list2 .	^self</body>

<body package="project2_CS474" selector="sledit">sledit| myChoices list flag |	self makeInvisible.flag :=0.deleteSet := 1.list := paintingcls sortedList.1 to: list  size  do: [: y | | x| x := ( list at:y).	 		( x type = 'Stilllife')		ifTrue:[				flag :=1.				].].(flag = 0)ifTrue:[Dialog warn: 'Nothing to edit, no stillife details is available!'. ^self.].myChoices := self builder componentAt: #help.myChoices beVisible.help value: 'Tip: Double click the item in the list to edit the details, please select Edit Details to save the details else the details are discarded.'.myChoices := self builder componentAt: #Label7.myChoices beVisible.myChoices := self builder componentAt: #Label9.myChoices beInvisible.listToDel list: ''.editSelection:= 'Stilllife'.myChoices := self builder componentAt: #List1.myChoices beVisible.myChoices := self builder componentAt: #Label7.myChoices beVisible.myChoices := self builder componentAt: #Label9.myChoices beInvisible.self editPainting:'Stilllife'.^self.</body>

<body package="project2_CS474" selector="sortTitle">sortTitle	" This method is used to sort the list details based on the title "| list count myChoices|self makeInvisible.myChoices := self builder componentAt: #TextEditor1.myChoices beVisible.myChoices := self builder componentAt: #Label9.myChoices beVisible.myChoices := self builder componentAt: #Label7.myChoices beInvisible.list := paintingcls sortedList .(list size = 0)ifTrue:[Dialog warn: ' No content in the Painting Manager system '.^self.].myChoices := self builder componentAt: #help.myChoices beVisible.help value: 'Tip: The details are in sorted order by title.'.count := 0.1 to: list size - 1 do:[:i|| j tmp |  j := i + 1.  (( list at: i ) title &gt; (list at: j ) title)	ifTrue:[				tmp := list at:i.				list at: i put: ( list at:j).				list at: j put: tmp.				count := count + 1.			].	].(count &gt; 0)ifTrue:[self sortTitle.].self sortOrder.	^self</body>

<body package="project2_CS474" selector="sortLastname">sortLastname	"This method does the work of sorting the details based on the Last name"| list count myChoices|self makeInvisible.myChoices := self builder componentAt: #TextEditor1.myChoices beVisible.myChoices := self builder componentAt: #Label9.myChoices beVisible.myChoices := self builder componentAt: #Label7.myChoices beInvisible.list := paintingcls sortedList .(list size = 0)ifTrue:[Dialog warn: ' No content in the Painting Manager system '.^self.].myChoices := self builder componentAt: #help.myChoices beVisible.help value: 'Tip: The details are in sorted order by lastname.'.count := 0.1 to: list size - 1 do:[:i|| j tmp |  j := i + 1.  (( list at: i ) lastname &gt; (list at: j ) lastname)	ifTrue:[				tmp := list at:i.				list at: i put: ( list at:j).				list at: j put: tmp.				count := count + 1.			].	].(count &gt; 0)ifTrue:[self sortLastname.].self sortOrder.^self.</body>

<body package="project2_CS474" selector="AddPortrait">AddPortrait" This is the method to add the Portrait details into the List by reading from the UI and creating a node and inserting it into the list"| newNode flag |" Validations for the inputField Title"flag:= self checkText:(title value) inputField:'Title'.(flag = 1)ifTrue: [title value:''.^self.]." Validations for the inputField Firstname"flag:= self checkText:(firstname value) inputField:'First Name'.(flag = 1)ifTrue: [firstname value:''.^self.]." Validations for the inputField  Lastname"flag:= self checkText:(lastname value) inputField:'Last Name'.(flag = 1)ifTrue: [lastname value:''.^self.]." Validations for the inputField Height"flag:= self checkNumber:(height value) inputField:'Height'.(flag = 1)ifTrue: [height value:''.^self.]." Validations for the inputField Width"flag:= self checkNumber:(width value) inputField:'Width'.(flag = 1)ifTrue: [width value:''.^self.]." Validations for the inputField PeopleCount"flag:= self checkNumber:(peoplecount value) inputField:'People Count'.(flag = 1)ifTrue: [peoplecount value:''.^self.]."(flag1 = 1 | flag2 = 1 | flag3 = 1| flag4 = 1| flag5 = 1| flag6 = 1)ifTrue: [Dialog warn:' Inside '.^self.]"newNode := Portrait new.newNode type: 'Portrait'.newNode title: title value.newNode firstname: firstname value.newNode lastname: lastname value.newNode height: (LargePositiveInteger readFromString: height value).newNode width:  (LargePositiveInteger readFromString: width value).newNode peoplecount: (LargePositiveInteger readFromString: peoplecount value).1 to: (newNode peoplecount) do: [ :i| |val flag1|				flag1 := 1.				[flag1 = 0]				whileFalse:[ 					val:= Dialog	request: 'Please provide the name of', ' person ', i printString,' : '  initialAnswer: '' onCancel: [^self].					flag1 := self checkText:val inputField:'People Name'.				].				newNode peoplenames add:val.							].paintingcls sortedList do:[: x | 	(x title = newNode title)	ifTrue:[			( x firstname = newNode firstname)				ifTrue:[							( x lastname = newNode lastname)						ifTrue:[								( x height = newNode height)									ifTrue:[											( x width = newNode height)												ifTrue:[													( x peoplecount = newNode peoplecount)													ifTrue:[																(x peoplenames = newNode peoplenames)														ifTrue:[																										Dialog warn: 'The details already exist for this particular painting in portrait'.														title value:''.																firstname value:''.														lastname value:''.														height value:''.														width value:''.														peoplecount value:''.														^self.														]. ].].].].].].	]."peopleNames := OrderedCollection new.""(peopleNames size &gt; 0)ifTrue:[	1 to:(peopleNames size) do: [ :i |						tmp := tmp ,'  ' ,i printString,': ' , (((peopleNames at:i ) asSymbol) asString).	].].""newNode peoplenames add: peopleNames."paintingcls sortedenqueue: newNode.														title value:''.																firstname value:''.														lastname value:''.														height value:''.														width value:''.														peoplecount value:''.self sortOrder."For generating the values in the list "self editPainting:'Portrait'.(editSet = 1)ifTrue:[|temp|editSet = 0.self makeInvisible.temp := self wrapperAt: #title.temp enable.temp := self wrapperAt: #height.temp enable.temp := self wrapperAt: #width.temp enable.temp := self wrapperAt: #firstname.temp enable.temp := self wrapperAt: #lastname.temp enable.temp := self wrapperAt: #peoplecount.temp enable.(self widgetAt: #Label6) labelString: 'peoplecount'.temp := self wrapperAt: #AddPortrait.temp enable.].^self</body>

<body package="project2_CS474" selector="deletebyTitle">deletebyTitle" This method is invoked when the delete button is clicked in the deletebytitle icon"|myChoices list1 list2|self makeInvisible.list1 := OrderedCollection new.list2 := OrderedCollection new.myChoices := self builder componentAt: #Label7.myChoices beVisible.myChoices := self builder componentAt: #Label9.myChoices beInvisible.myChoices := self builder componentAt: #deleteDetails.myChoices beVisible.myChoices := self wrapperAt: #deleteDetails.myChoices enable."myChoices := self builder componentAt: #List1.myChoices beVisible."myChoices := self builder componentAt: #List2.myChoices beVisible.myChoices := self builder componentAt: #fetch.myChoices beVisible."list1 add:'Portrait'.list1 add:'Landscape'.list1 add:'Stilllife'.""paintingcls sortedList do:[: x | list2 add: ('Painting type: ', x type,' ','Painting title: ', x title, ' ','Painting firstname ', x firstname, ' ', 'Painting lastname: ', x lastname).]."listType list: list1.listToDel list: list2 .^self.</body>

<body package="project2_CS474" selector="pdelete">pdelete" This method is invoked when the delete button is clicked in the deletebytitle icon"|myChoices list2 list flag |flag :=0.self makeInvisible.deleteSet := 2.list := paintingcls sortedList.1 to: list  size  do: [: y | | x| x := ( list at:y).	 		( x type = 'Portrait')		ifTrue:[				flag :=1.				].].(flag = 0)ifTrue:[Dialog warn: 'Nothing to delete, no portrait details is available!'. ^self.].myChoices := self builder componentAt: #help.myChoices beVisible.help value: 'Tip: Select an item in the list, and select delete details to delete the landscape item from list'.list2 := OrderedCollection new.myChoices := self builder componentAt: #Label9.myChoices beVisible.myChoices := self builder componentAt: #Label7.myChoices beInvisible.myChoices := self builder componentAt: #deleteDetails.myChoices beVisible.myChoices := self wrapperAt: #deleteDetails.myChoices enable.myChoices := self builder componentAt: #List1.myChoices beVisible."paintingcls sortedList do:[: x | list2 add: ('Painting type: ', x type,' ','Painting title: ', x title, ' ','Painting firstname ', x firstname, ' ', 'Painting lastname: ', x lastname).]."listToDel list: list2 .self deleteType:'Portrait'.^self.</body>

<body package="project2_CS474" selector="pedit">pedit| myChoices list flag |	self makeInvisible.flag :=0.deleteSet := 1.list := paintingcls sortedList.1 to: list  size  do: [: y | | x| x := ( list at:y).	 		( x type = 'Portrait')		ifTrue:[				flag :=1.				].].(flag = 0)ifTrue:[Dialog warn: 'Nothing to edit, no portrait details is available!'. ^self.].myChoices := self builder componentAt: #help.myChoices beVisible.help value: 'Tip: Double click the item in the list to edit the details, please select Edit Details to save the details else the details are discarded.'.listToDel list: ''.editSelection:= 'Portrait'.myChoices := self builder componentAt: #List1.myChoices beVisible.myChoices := self builder componentAt: #Label7.myChoices beVisible.myChoices := self builder componentAt: #Label9.myChoices beInvisible.self editPainting:'Portrait'.^self.</body>

<body package="project2_CS474" selector="pmenu">pmenu" This method does the work of hiding the components other than which is needed for inserting the portrait details from the GUI"| temp myChoices |myChoices := self builder componentAt: #Label9.myChoices beVisible.myChoices := self builder componentAt: #Label7.myChoices beInvisible.listToDel list: ''.self makeVisiblePortrait.myChoices := self builder componentAt: #help.myChoices beVisible.help value: 'Tip: Provide the Portrait details and select Add Details to save the item details.'.temp := self wrapperAt: #title.temp enable.temp := self wrapperAt: #height.temp enable.temp := self wrapperAt: #width.temp enable.temp := self wrapperAt: #firstname.temp enable.temp := self wrapperAt: #lastname.temp enable.temp := self wrapperAt: #peoplecount.temp enable.peoplecount value:''.(self widgetAt: #Label6) labelString: 'People Count: '.temp := self wrapperAt: #AddPortrait.temp enable.(self widgetAt: #AddPortrait) labelString: 'Add Details'.^self.</body>
</methods>

<methods>
<class-id>PaintingManager</class-id> <category>initialize-release</category>

<body package="project2_CS474" selector="initialize">initialize	"Initialize a newly created instance. This method must answer the receiver."		super initialize.	paintingcls := PaintingClass new.	help :=' Hello welcome to Painting Manager Application by Ashwath. Explore the application by selecting the edit tab and selecting options' asValue.	listmain := OrderedCollection new.	listmain add: paintingcls portraitList.	listmain add: paintingcls landscapeList.	listmain add: paintingcls stilllifeList.	" *** Replace this comment with the appropriate initialization code *** "	^self</body>
</methods>

<methods>
<class-id>PaintingManager</class-id> <category>aspects</category>

<body package="project2_CS474" selector="pDetails">pDetails	"This method was generated by UIDefiner.  Any edits made here	may be lost whenever methods are automatically defined.  The	initialization provided below may have been preempted by an	initialize method."	^pDetails isNil		ifTrue:			[pDetails := String new asValue]		ifFalse:			[pDetails]</body>

<body package="project2_CS474" selector="lslastname">lslastname	"This is UI generated for Islastname"	^lslastname isNil		ifTrue:			[lslastname := String new asValue]		ifFalse:			[lslastname]</body>

<body package="project2_CS474" selector="lsfirstname">lsfirstname	"This is UI generated method for Lsfirstname"	^lsfirstname isNil		ifTrue:			[lsfirstname := String new asValue]		ifFalse:			[lsfirstname]</body>

<body package="project2_CS474" selector="lscountry">lscountry	"This is an UI generated function which is used for Iscountry"	^lscountry isNil		ifTrue:			[lscountry := String new asValue]		ifFalse:			[lscountry]</body>

<body package="project2_CS474" selector="deleteSelection">deleteSelection^deleteSelection .</body>

<body package="project2_CS474" selector="lsDetails">lsDetails	"This is UI generated for IsDetails."	^lsDetails isNil		ifTrue:			[lsDetails := String new asValue]		ifFalse:			[lsDetails]</body>

<body package="project2_CS474" selector="listType">listType	"This method was generated by UIDefiner.  Any edits made here	may be lost whenever methods are automatically defined.  The	initialization provided below may have been preempted by an	initialize method."	^listType isNil		ifTrue:			[listType := SelectionInList new]		ifFalse:			[listType]</body>

<body package="project2_CS474" selector="checkTitle">checkTitle" This method is used to check for duplicates "paintingcls sortedList do:[: x | 	(x title = title value)	ifTrue:[			Dialog error:' The title already exist, please give another title for the painting'.			title value:' '.				].	].</body>

<body package="project2_CS474" selector="mainList">mainList	"This is UI generated method for mainList"	^mainList isNil		ifTrue:			[mainList := SelectionInList new]		ifFalse:			[mainList]</body>

<body package="project2_CS474" selector="portraitDelete">portraitDelete	"This is UI generated method for portraitDelete."	^portraitDelete isNil		ifTrue:			[portraitDelete := nil asValue]		ifFalse:			[portraitDelete]</body>

<body package="project2_CS474" selector="peoplecount">peoplecount	"This method was generated by UIDefiner.  Any edits made here	may be lost whenever methods are automatically defined.  The	initialization provided below may have been preempted by an	initialize method."	^peoplecount isNil		ifTrue:			[peoplecount := Text new asValue]		ifFalse:			[peoplecount]</body>

<body package="project2_CS474" selector="deleteSelection:">deleteSelection:anObjdeleteSelection := anObj.</body>

<body package="project2_CS474" selector="listmain:">listmain:anObj"This takes an value of anObj and assigns to listmain"listmain:=anObj.</body>

<body package="project2_CS474" selector="height">height	"This method was generated by UIDefiner.  Any edits made here	may be lost whenever methods are automatically defined.  The	initialization provided below may have been preempted by an	initialize method."	^height isNil		ifTrue:			[height := Text new asValue]		ifFalse:			[height]</body>

<body package="project2_CS474" selector="slDetails">slDetails	"This is UI generated method for slDetails"	^slDetails isNil		ifTrue:			[slDetails := String new asValue]		ifFalse:			[slDetails]</body>

<body package="project2_CS474" selector="width">width	"This method was generated by UIDefiner.  Any edits made here	may be lost whenever methods are automatically defined.  The	initialization provided below may have been preempted by an	initialize method."	^width isNil		ifTrue:			[width := Text new asValue]		ifFalse:			[width]</body>

<body package="project2_CS474" selector="country">country	"This method was generated by UIDefiner.  Any edits made here	may be lost whenever methods are automatically defined.  The	initialization provided below may have been preempted by an	initialize method."	^country isNil		ifTrue:			[country := String new asValue]		ifFalse:			[country]</body>

<body package="project2_CS474" selector="editSelection">editSelection^editSelection.</body>

<body package="project2_CS474" selector="listMain">listMain	"This is an UI generated function which is used for ListMain."	^listMain isNil		ifTrue:			[listMain := SelectionInList new]		ifFalse:			[listMain]</body>

<body package="project2_CS474" selector="delDetails">delDetails	"This is an UI generated function which is used for delDetails."	^delDetails isNil		ifTrue:			[delDetails := String new asValue]		ifFalse:			[delDetails]</body>

<body package="project2_CS474" selector="listToDel">listToDel	"This method was generated by UIDefiner.  Any edits made here	may be lost whenever methods are automatically defined.  The	initialization provided below may have been preempted by an	initialize method."	^listToDel isNil		ifTrue:			[listToDel := SelectionInList new]		ifFalse:			[listToDel]</body>

<body package="project2_CS474" selector="slfirstname">slfirstname	"This is UI generated method for slfirstname."	^slfirstname isNil		ifTrue:			[slfirstname := String new asValue]		ifFalse:			[slfirstname]</body>

<body package="project2_CS474" selector="slpeoplecount">slpeoplecount	"This is UI generated method for slpeoplecount."	^slpeoplecount isNil		ifTrue:			[slpeoplecount := String new asValue]		ifFalse:			[slpeoplecount]</body>

<body package="project2_CS474" selector="sltitle">sltitle	"This is UI generated method for sltitle"	^sltitle isNil		ifTrue:			[sltitle := String new asValue]		ifFalse:			[sltitle]</body>

<body package="project2_CS474" selector="help">help	"This method was generated by UIDefiner.  Any edits made here	may be lost whenever methods are automatically defined.  The	initialization provided below may have been preempted by an	initialize method."	^help isNil		ifTrue:			[help := String new asValue]		ifFalse:			[help]</body>

<body package="project2_CS474" selector="listmain">listmain" Returns the listmain"^listmain.</body>

<body package="project2_CS474" selector="slwidth">slwidth	"This is UI generated method for slwidth"	^slwidth isNil		ifTrue:			[slwidth := String new asValue]		ifFalse:			[slwidth]</body>

<body package="project2_CS474" selector="firstname">firstname	"This method was generated by UIDefiner.  Any edits made here	may be lost whenever methods are automatically defined.  The	initialization provided below may have been preempted by an	initialize method."	^firstname isNil		ifTrue:			[firstname := String new asValue]		ifFalse:			[firstname]</body>

<body package="project2_CS474" selector="lsheight">lsheight	"This is UI generated for IsHeight"	^lsheight isNil		ifTrue:			[lsheight := String new asValue]		ifFalse:			[lsheight]</body>

<body package="project2_CS474" selector="sllastname">sllastname	"This is UI generated method for sllastname."	^sllastname isNil		ifTrue:			[sllastname := String new asValue]		ifFalse:			[sllastname]</body>

<body package="project2_CS474" selector="paintType">paintType	"This is UI generated method for paintType"	^paintType isNil		ifTrue:			[paintType := #oilbased asValue]		ifFalse:			[paintType]</body>

<body package="project2_CS474" selector="slheight">slheight	"This is UI generated method for slheight."	^slheight isNil		ifTrue:			[slheight := String new asValue]		ifFalse:			[slheight]</body>

<body package="project2_CS474" selector="title">title	"This method was generated by UIDefiner.  Any edits made here	may be lost whenever methods are automatically defined.  The	initialization provided below may have been preempted by an	initialize method."	^title isNil		ifTrue:			[title := String new asValue]		ifFalse:			[title]</body>

<body package="project2_CS474" selector="pType">pType	"This method was generated by UIDefiner.  Any edits made here	may be lost whenever methods are automatically defined.  The	initialization provided below may have been preempted by an	initialize method."	^pType isNil		ifTrue:			[pType := #oilbasedpainting asValue]		ifFalse:			[pType]</body>

<body package="project2_CS474" selector="lastname">lastname	"This method was generated by UIDefiner.  Any edits made here	may be lost whenever methods are automatically defined.  The	initialization provided below may have been preempted by an	initialize method."	^lastname isNil		ifTrue:			[lastname := String new asValue]		ifFalse:			[lastname]</body>

<body package="project2_CS474" selector="lstitle">lstitle	"This method was generated by UIDefiner.  Any edits made here	may be lost whenever methods are automatically defined.  The	initialization provided below may have been preempted by an	initialize method."	^lstitle isNil		ifTrue:			[lstitle := String new asValue]		ifFalse:			[lstitle]</body>

<body package="project2_CS474" selector="editSelection:">editSelection:anObjeditSelection :=anObj.</body>

<body package="project2_CS474" selector="del">del	"This is the del method of the UI"	^del isNil		ifTrue:			[del := nil asValue]		ifFalse:			[del]</body>

<body package="project2_CS474" selector="lswidth">lswidth	"This is UI generated method for lswidth"	^lswidth isNil		ifTrue:			[lswidth := String new asValue]		ifFalse:			[lswidth]</body>

<body package="project2_CS474" selector="peoplenames">peoplenames	"This is UI generated method for peoplenames."	^peoplenames isNil		ifTrue:			[peoplenames := String new asValue]		ifFalse:			[peoplenames]</body>
</methods>

<methods>
<class-id>PaintingManager</class-id> <category>Validation</category>

<body package="project2_CS474" selector="checkNumber:inputField:">checkNumber:anObj inputField:fieldName| flag val |val := LargePositiveInteger readFromString:anObj.(anObj = '' | anObj = ' ' | anObj = '  ' | anObj isNil | anObj isEmpty  )ifTrue:[	Dialog warn:' Please enter valid number in : ', fieldName ,' inputfield, No black space allowed '.	^(flag := 1).].( val= 0 )ifTrue:[		(fieldName = 'People Count')		ifFalse:[		Dialog warn:' Please enter valid number in : ', fieldName ,' inputfield,  zero is not allowed '.	^(flag := 1).			].	].( val &lt;0 )ifTrue:[				Dialog warn:' Please enter valid number in : ', fieldName ,' inputfield,  negative numbers not allowed '.	^(flag := 1).				].1 to:anObj size do:[:index | | | ((anObj at:index) isDigit)ifFalse:[	Dialog warn:' Please enter valid number in : ', fieldName ,' inputfield '.	^(flag := 1).	].].^(flag := 0).</body>

<body package="project2_CS474" selector="checkText:inputField:">checkText:anObj inputField:fieldName| flag |(anObj = '' | anObj = ' ' | anObj = '  ' |anObj isNil | anObj isEmpty)ifTrue:[	Dialog warn:' Please enter valid text in : ', fieldName ,' inputfield,  No black space allowed'.	^(flag := 1).].1 to:anObj size do:[:index | | | ((anObj at:index) isAlphabetic)ifFalse:[	Dialog warn:' Please enter valid text in : ', fieldName ,' inputfield '.	^(flag := 1).	].].^(flag := 0).</body>
</methods>

<methods>
<class-id>PaintingManager</class-id> <category>GUI</category>

<body package="project2_CS474" selector="makeVisible">makeVisible| temp |"This method makes the GUI components visible"temp := self builder componentAt: #TextEditor1.temp beVisible.temp := self builder componentAt: #Label1.temp beVisible.temp := self builder componentAt: #Label2.temp beVisible.temp := self builder componentAt: #Label3.temp beVisible.temp := self builder componentAt: #Label4.temp beVisible.temp := self builder componentAt: #Label5.temp beVisible.temp := self builder componentAt: #title.temp beVisible.temp := self builder componentAt: #firstname.temp beVisible.temp := self builder componentAt: #lastname.temp beVisible.temp := self builder componentAt: #height.temp beVisible.temp := self builder componentAt: #width.temp beVisible.temp := self builder componentAt: #Label18.temp beVisible.temp := self builder componentAt: #country.temp beVisible.temp := self builder componentAt: #help.temp beInvisible.temp := self builder componentAt: #peoplenames.temp beVisible.temp := self builder componentAt: #peoplecount.temp beVisible.temp := self builder componentAt: #Label6.temp beVisible.temp := self builder componentAt: #Label7.temp beVisible.temp := self builder componentAt: #Label17.temp beVisible.temp := self builder componentAt: #AddStilllife.temp beVisible.^self.</body>

<body package="project2_CS474" selector="makeVisibleLandscape">makeVisibleLandscape"This method makes the GUI components invisible except the components which is needed for Landscape"| temp |title value:''.firstname value:''.lastname value:''.height value:''.width value:''.self makeInvisible."making the previous text boxes invisible""temp := self builder componentAt: #List1.temp beInvisible.temp := self builder componentAt: #deleteDetails.temp beInvisible.temp := self builder componentAt: #peoplecount.temp beInvisible.temp := self builder componentAt: #Label6.temp beInvisible.temp := self builder componentAt: #Label17.temp beInvisible.temp := self builder componentAt: #AddStilllife.temp beInvisible.temp := self builder componentAt: #AddPortrait.temp beInvisible.temp := self builder componentAt: #oilbasedpainting.temp beInvisible.temp := self builder componentAt: #watercolors.temp beInvisible."temp := self builder componentAt: #TextEditor1.temp beVisible.temp := self builder componentAt: #Label1.temp beVisible.temp := self builder componentAt: #Label2.temp beVisible.temp := self builder componentAt: #Label3.temp beVisible.temp := self builder componentAt: #Label4.temp beVisible.temp := self builder componentAt: #Label5.temp beVisible.temp := self builder componentAt: #title.temp beVisible.temp := self builder componentAt: #firstname.temp beVisible.temp := self builder componentAt: #lastname.temp beVisible.temp := self builder componentAt: #height.temp beVisible.temp := self builder componentAt: #width.temp beVisible.temp := self builder componentAt: #country.temp beVisible.temp := self builder componentAt: #help.temp beInvisible.temp := self builder componentAt: #AddLandscape.temp beVisible.^self.</body>

<body package="project2_CS474" selector="makeVisibleStilllife">makeVisibleStilllife"This method makes the GUI components invisible except the components which is needed for Stilllife"| temp |title value:''.firstname value:''.lastname value:''.height value:''.width value:''.self makeInvisible."making the previous text boxes invisible""temp := self builder componentAt: #List1.temp beInvisible.temp := self builder componentAt: #deleteDetails.temp beInvisible.temp := self builder componentAt: #peoplecount.temp beInvisible.temp := self builder componentAt: #Label6.temp beInvisible.temp := self builder componentAt: #AddPortrait.temp beInvisible.temp := self builder componentAt: #AddLandscape.temp beInvisible.temp := self builder componentAt: #Label18.temp beInvisible.temp := self builder componentAt: #country.temp beInvisible."temp := self builder componentAt: #TextEditor1.temp beVisible.temp := self builder componentAt: #Label1.temp beVisible.temp := self builder componentAt: #Label2.temp beVisible.temp := self builder componentAt: #Label3.temp beVisible.temp := self builder componentAt: #Label4.temp beVisible.temp := self builder componentAt: #Label5.temp beVisible.temp := self builder componentAt: #title.temp beVisible.temp := self builder componentAt: #firstname.temp beVisible.temp := self builder componentAt: #lastname.temp beVisible.temp := self builder componentAt: #height.temp beVisible.temp := self builder componentAt: #width.temp beVisible.temp := self builder componentAt: #oilbasedpainting.temp beVisible.temp := self builder componentAt: #watercolors.temp beVisible.temp := self builder componentAt: #AddStilllife.temp beVisible.temp := self builder componentAt: #help.temp beInvisible.^self.</body>

<body package="project2_CS474" selector="makeVisiblePortrait">makeVisiblePortrait"This method makes the GUI components invisible except the components which is needed for Portrait"| temp |title value:''.firstname value:''.lastname value:''.height value:''.width value:''.self makeInvisible."making the previous text boxes invisible""temp := self builder componentAt: #List1.temp beInvisible.temp := self builder componentAt: #deleteDetails.temp beInvisible.temp := self builder componentAt: #Label18.temp beInvisible.temp := self builder componentAt: #country.temp beInvisible.temp := self builder componentAt: #Label17.temp beInvisible.temp := self builder componentAt: #AddStilllife.temp beInvisible.temp := self builder componentAt: #AddLandscape.temp beInvisible.temp := self builder componentAt: #oilbasedpainting.temp beInvisible.temp := self builder componentAt: #watercolors.temp beInvisible.temp := self builder componentAt: #help.temp beInvisible."temp := self builder componentAt: #TextEditor1.temp beVisible.temp := self builder componentAt: #Label1.temp beVisible.temp := self builder componentAt: #Label2.temp beVisible.temp := self builder componentAt: #Label3.temp beVisible.temp := self builder componentAt: #Label4.temp beVisible.temp := self builder componentAt: #Label5.temp beVisible.temp := self builder componentAt: #Label6.temp beVisible.temp := self builder componentAt: #title.temp beVisible.temp := self builder componentAt: #firstname.temp beVisible.temp := self builder componentAt: #lastname.temp beVisible.temp := self builder componentAt: #height.temp beVisible.temp := self builder componentAt: #width.temp beVisible.temp := self builder componentAt: #peoplecount.temp beVisible.temp := self builder componentAt: #AddPortrait.temp beVisible.^self.</body>

<body package="project2_CS474" selector="makeInvisible">makeInvisible" This method makes the GUI components invisible "| temp |temp := self builder componentAt: #help.temp beInvisible.temp := self builder componentAt: #Label7.temp beInvisible.temp := self builder componentAt: #List1.temp beInvisible.temp := self builder componentAt: #deleteDetails.temp beInvisible.temp := self builder componentAt: #List2.temp beInvisible.temp := self builder componentAt: #fetch.temp beInvisible.temp := self builder componentAt: #Label1.temp beInvisible.temp := self builder componentAt: #Label2.temp beInvisible.temp := self builder componentAt: #Label3.temp beInvisible.temp := self builder componentAt: #Label4.temp beInvisible.temp := self builder componentAt: #Label5.temp beInvisible.temp := self builder componentAt: #title.temp beInvisible.temp := self builder componentAt: #firstname.temp beInvisible.temp := self builder componentAt: #lastname.temp beInvisible.temp := self builder componentAt: #height.temp beInvisible.temp := self builder componentAt: #width.temp beInvisible.temp := self builder componentAt: #peoplecount.temp beInvisible.temp := self builder componentAt: #Label6.temp beInvisible.temp := self builder componentAt: #AddStilllife.temp beInvisible.temp := self builder componentAt: #AddPortrait.temp beInvisible.temp := self builder componentAt: #oilbasedpainting.temp beInvisible.temp := self builder componentAt: #watercolors.temp beInvisible.temp := self builder componentAt: #country.temp beInvisible.temp := self builder componentAt: #AddStilllife.temp beInvisible.temp := self builder componentAt: #AddLandscape.temp beInvisible.temp := self builder componentAt: #oilbasedpainting.temp beInvisible.temp := self builder componentAt: #watercolors.temp beInvisible.temp := self builder componentAt: #peoplecount.temp beInvisible.temp := self builder componentAt: #Label6.temp beInvisible.temp := self builder componentAt: #AddPortrait.temp beInvisible.temp := self builder componentAt: #AddLandscape.temp beInvisible.temp := self builder componentAt: #country.temp beInvisible.</body>
</methods>


<methods>
<class-id>Node class</class-id> <category>instance creation</category>

<body package="project2_CS474" selector="new">new	"Answer a newly created and initialized instance."	^super new initialize</body>
</methods>


<methods>
<class-id>Node</class-id> <category>accessing</category>

<body package="project2_CS474" selector="height:">height:anObjheight := anObj.</body>

<body package="project2_CS474" selector="title:">title:anObjtitle := anObj.</body>

<body package="project2_CS474" selector="lastname:">lastname:anObjlastname := anObj.</body>

<body package="project2_CS474" selector="firstname">firstname^firstname</body>

<body package="project2_CS474" selector="width">width^width</body>

<body package="project2_CS474" selector="height">height^height</body>

<body package="project2_CS474" selector="title">title^title</body>

<body package="project2_CS474" selector="firstname:">firstname:anObjfirstname := anObj.</body>

<body package="project2_CS474" selector="type">type^type.</body>

<body package="project2_CS474" selector="type:">type:anObjtype := anObj.</body>

<body package="project2_CS474" selector="width:">width:anObjwidth:= anObj.</body>

<body package="project2_CS474" selector="lastname">lastname^lastname</body>
</methods>

<methods>
<class-id>Node</class-id> <category>initialize-release</category>

<body package="project2_CS474" selector="initialize">initialize	"Initialize a newly created instance. This method must answer the receiver."	super initialize.	" *** Replace this comment with the appropriate initialization code *** "	^self</body>
</methods>


<methods>
<class-id>Stilllife</class-id> <category>initialize-release</category>

<body package="project2_CS474" selector="initialize">initialize	"Initialize a newly created instance. This method must answer the receiver."	super initialize.	" *** Replace this comment with the appropriate initialization code *** "	^self</body>
</methods>

<methods>
<class-id>Stilllife</class-id> <category>accessing</category>

<body package="project2_CS474" selector="paintingtype">paintingtype^paintingtype.</body>

<body package="project2_CS474" selector="paintingtype:">paintingtype: anObjpaintingtype := anObj.</body>
</methods>


<methods>
<class-id>Landscape</class-id> <category>Accessing</category>

<body package="project2_CS474" selector="country:">country:anObjcountry := anObj.</body>

<body package="project2_CS474" selector="country">country^country.</body>
</methods>

<methods>
<class-id>Landscape</class-id> <category>initialize-release</category>

<body package="project2_CS474" selector="initialize">initialize	"Initialize a newly created instance. This method must answer the receiver."	super initialize.	" *** Replace this comment with the appropriate initialization code *** "	^self</body>
</methods>


<methods>
<class-id>Portrait class</class-id> <category>instance creation</category>

<body package="project2_CS474" selector="new">new "refines the method inherited from node"| temp |temp := super new.temp initialize.^temp.</body>
</methods>


<methods>
<class-id>Portrait</class-id> <category>initialize-release</category>

<body package="project2_CS474" selector="initialize">initialize	"Initialize a newly created instance. This method must answer the receiver."	super initialize.	peoplenames := OrderedCollection new.		" *** Replace this comment with the appropriate initialization code *** "	^self</body>
</methods>

<methods>
<class-id>Portrait</class-id> <category>accessing</category>

<body package="project2_CS474" selector="peoplenames:">peoplenames: anObjpeoplenames:= anObj.</body>

<body package="project2_CS474" selector="peoplenames">peoplenames^peoplenames</body>

<body package="project2_CS474" selector="peoplecount:">peoplecount: anObjpeoplecount := anObj.</body>

<body package="project2_CS474" selector="peoplecount">peoplecount^peoplecount.</body>
</methods>


<methods>
<class-id>PaintingClass class</class-id> <category>instance creation</category>

<body package="project2_CS474" selector="new">new	"Answer a newly created and initialized instance."	^super new initialize.</body>
</methods>


<methods>
<class-id>PaintingClass</class-id> <category>Landscape</category>

<body package="project2_CS474" selector="landscapeList">landscapeList^landscapeList.</body>

<body package="project2_CS474" selector="lsenqueue:">lsenqueue: anObjectlandscapeList add: anObject.</body>
</methods>

<methods>
<class-id>PaintingClass</class-id> <category>accessing</category>

<body package="project2_CS474" selector="stilllifeList">stilllifeList^stilllifeList.</body>
</methods>

<methods>
<class-id>PaintingClass</class-id> <category>ListOperations</category>

<body package="project2_CS474" selector="sortenqueue:">sortenqueue:anObj1 to: sortedList sizedo:[:i|	(comparisonBlock value: (anObj firstname) value: ((sortedList at:i) firstname))	ifTrue:[			sortedList add: anObj beforeIndex: i.			^self.].].sortedList addLast: anObj.^self.</body>

<body package="project2_CS474" selector="sortedList">sortedList^sortedList.</body>

<body package="project2_CS474" selector="lenqueue:">lenqueue: anObjectsortedList addLast: anObject.</body>

<body package="project2_CS474" selector="sortedenqueue:">sortedenqueue:anObjsortedList add: anObj.</body>
</methods>

<methods>
<class-id>PaintingClass</class-id> <category>Stilllife</category>

<body package="project2_CS474" selector="slenqueue:">slenqueue: anObjectstilllifeList add: anObject.</body>
</methods>

<methods>
<class-id>PaintingClass</class-id> <category>Portrait</category>

<body package="project2_CS474" selector="plenqueue:">plenqueue: anObjectportraitList add: anObject.</body>

<body package="project2_CS474" selector="portraitList">portraitList^portraitList.</body>
</methods>

<methods>
<class-id>PaintingClass</class-id> <category>initialize-release</category>

<body package="project2_CS474" selector="initialize">initialize	"Initialize a newly created instance. This method must answer the receiver."super initialize.	landscapeList := OrderedCollection new.	portraitList := OrderedCollection new.	stilllifeList := OrderedCollection new.	sortedList := OrderedCollection new.	comparisonBlock := [:x :y | x &lt; y].	" *** Replace this comment with the appropriate initialization code *** "	^self</body>
</methods>



</st-source>

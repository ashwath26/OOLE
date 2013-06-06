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
<body>This class is the base class for portrait, landscape, stilllife.
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
<body>Landscape class has the details about the landscape painting. 
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
<body>This painterManager class defines the details of the Interface.
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
<body>Portrait class has the details about the portrait painting. 
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
<body>Stilllife class inherits from the Node class and also defines the painting type where the type of painting is specified.
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
<body>Painting class is mainly used in the painting manager class.
</comment>

<methods>
<class-id>PaintingManager class</class-id> <category>resources</category>

<body package="project2_CS474" selector="menuBar">menuBar
</methods>

<methods>
<class-id>PaintingManager class</class-id> <category>interface specs</category>

<body package="project2_CS474" selector="windowSpec">windowSpec
</methods>


<methods>
<class-id>PaintingManager</class-id> <category>Edit</category>

<body package="project2_CS474" selector="deleteSet:">deleteSet:anObj

<body package="project2_CS474" selector="editSet:">editSet:anVal

<body package="project2_CS474" selector="editSet">editSet

<body package="project2_CS474" selector="deleteSet">deleteSet
</methods>

<methods>
<class-id>PaintingManager</class-id> <category>menu-invoke</category>

<body package="project2_CS474" selector="portraitDetails">portraitDetails
</methods>

<methods>
<class-id>PaintingManager</class-id> <category>actions</category>

<body package="project2_CS474" selector="sldelete">sldelete

<body package="project2_CS474" selector="editStilllife">editStilllife

<body package="project2_CS474" selector="slmenu">slmenu

<body package="project2_CS474" selector="editPainting">editPainting

<body package="project2_CS474" selector="deleteType">deleteType

<body package="project2_CS474" selector="AddLandscape">AddLandscape

<body package="project2_CS474" selector="SortLastname">SortLastname

<body package="project2_CS474" selector="sortOrder">sortOrder

<body package="project2_CS474" selector="lsedit">lsedit

<body package="project2_CS474" selector="editPainting:">editPainting:dselection

<body package="project2_CS474" selector="deletedetails">deletedetails

<body package="project2_CS474" selector="deleteDetails">deleteDetails

<body package="project2_CS474" selector="lsdelete">lsdelete

<body package="project2_CS474" selector="lsmenu">lsmenu

<body package="project2_CS474" selector="deleteReform">deleteReform

<body package="project2_CS474" selector="AddStilllife">AddStilllife

<body package="project2_CS474" selector="editLandscape">editLandscape

<body package="project2_CS474" selector="editPortrait">editPortrait

<body package="project2_CS474" selector="deleteType:">deleteType:dselection

<body package="project2_CS474" selector="sledit">sledit

<body package="project2_CS474" selector="sortTitle">sortTitle

<body package="project2_CS474" selector="sortLastname">sortLastname

<body package="project2_CS474" selector="AddPortrait">AddPortrait

<body package="project2_CS474" selector="deletebyTitle">deletebyTitle

<body package="project2_CS474" selector="pdelete">pdelete

<body package="project2_CS474" selector="pedit">pedit

<body package="project2_CS474" selector="pmenu">pmenu
</methods>

<methods>
<class-id>PaintingManager</class-id> <category>initialize-release</category>

<body package="project2_CS474" selector="initialize">initialize
</methods>

<methods>
<class-id>PaintingManager</class-id> <category>aspects</category>

<body package="project2_CS474" selector="pDetails">pDetails

<body package="project2_CS474" selector="lslastname">lslastname

<body package="project2_CS474" selector="lsfirstname">lsfirstname

<body package="project2_CS474" selector="lscountry">lscountry

<body package="project2_CS474" selector="deleteSelection">deleteSelection

<body package="project2_CS474" selector="lsDetails">lsDetails

<body package="project2_CS474" selector="listType">listType

<body package="project2_CS474" selector="checkTitle">checkTitle

<body package="project2_CS474" selector="mainList">mainList

<body package="project2_CS474" selector="portraitDelete">portraitDelete

<body package="project2_CS474" selector="peoplecount">peoplecount

<body package="project2_CS474" selector="deleteSelection:">deleteSelection:anObj

<body package="project2_CS474" selector="listmain:">listmain:anObj

<body package="project2_CS474" selector="height">height

<body package="project2_CS474" selector="slDetails">slDetails

<body package="project2_CS474" selector="width">width

<body package="project2_CS474" selector="country">country

<body package="project2_CS474" selector="editSelection">editSelection

<body package="project2_CS474" selector="listMain">listMain

<body package="project2_CS474" selector="delDetails">delDetails

<body package="project2_CS474" selector="listToDel">listToDel

<body package="project2_CS474" selector="slfirstname">slfirstname

<body package="project2_CS474" selector="slpeoplecount">slpeoplecount

<body package="project2_CS474" selector="sltitle">sltitle

<body package="project2_CS474" selector="help">help

<body package="project2_CS474" selector="listmain">listmain

<body package="project2_CS474" selector="slwidth">slwidth

<body package="project2_CS474" selector="firstname">firstname

<body package="project2_CS474" selector="lsheight">lsheight

<body package="project2_CS474" selector="sllastname">sllastname

<body package="project2_CS474" selector="paintType">paintType

<body package="project2_CS474" selector="slheight">slheight

<body package="project2_CS474" selector="title">title

<body package="project2_CS474" selector="pType">pType

<body package="project2_CS474" selector="lastname">lastname

<body package="project2_CS474" selector="lstitle">lstitle

<body package="project2_CS474" selector="editSelection:">editSelection:anObj

<body package="project2_CS474" selector="del">del

<body package="project2_CS474" selector="lswidth">lswidth

<body package="project2_CS474" selector="peoplenames">peoplenames
</methods>

<methods>
<class-id>PaintingManager</class-id> <category>Validation</category>

<body package="project2_CS474" selector="checkNumber:inputField:">checkNumber:anObj inputField:fieldName

<body package="project2_CS474" selector="checkText:inputField:">checkText:anObj inputField:fieldName
</methods>

<methods>
<class-id>PaintingManager</class-id> <category>GUI</category>

<body package="project2_CS474" selector="makeVisible">makeVisible

<body package="project2_CS474" selector="makeVisibleLandscape">makeVisibleLandscape

<body package="project2_CS474" selector="makeVisibleStilllife">makeVisibleStilllife

<body package="project2_CS474" selector="makeVisiblePortrait">makeVisiblePortrait

<body package="project2_CS474" selector="makeInvisible">makeInvisible
</methods>


<methods>
<class-id>Node class</class-id> <category>instance creation</category>

<body package="project2_CS474" selector="new">new
</methods>


<methods>
<class-id>Node</class-id> <category>accessing</category>

<body package="project2_CS474" selector="height:">height:anObj

<body package="project2_CS474" selector="title:">title:anObj

<body package="project2_CS474" selector="lastname:">lastname:anObj

<body package="project2_CS474" selector="firstname">firstname

<body package="project2_CS474" selector="width">width

<body package="project2_CS474" selector="height">height

<body package="project2_CS474" selector="title">title

<body package="project2_CS474" selector="firstname:">firstname:anObj

<body package="project2_CS474" selector="type">type

<body package="project2_CS474" selector="type:">type:anObj

<body package="project2_CS474" selector="width:">width:anObj

<body package="project2_CS474" selector="lastname">lastname
</methods>

<methods>
<class-id>Node</class-id> <category>initialize-release</category>

<body package="project2_CS474" selector="initialize">initialize
</methods>


<methods>
<class-id>Stilllife</class-id> <category>initialize-release</category>

<body package="project2_CS474" selector="initialize">initialize
</methods>

<methods>
<class-id>Stilllife</class-id> <category>accessing</category>

<body package="project2_CS474" selector="paintingtype">paintingtype

<body package="project2_CS474" selector="paintingtype:">paintingtype: anObj
</methods>


<methods>
<class-id>Landscape</class-id> <category>Accessing</category>

<body package="project2_CS474" selector="country:">country:anObj

<body package="project2_CS474" selector="country">country
</methods>

<methods>
<class-id>Landscape</class-id> <category>initialize-release</category>

<body package="project2_CS474" selector="initialize">initialize
</methods>


<methods>
<class-id>Portrait class</class-id> <category>instance creation</category>

<body package="project2_CS474" selector="new">new 
</methods>


<methods>
<class-id>Portrait</class-id> <category>initialize-release</category>

<body package="project2_CS474" selector="initialize">initialize
</methods>

<methods>
<class-id>Portrait</class-id> <category>accessing</category>

<body package="project2_CS474" selector="peoplenames:">peoplenames: anObj

<body package="project2_CS474" selector="peoplenames">peoplenames

<body package="project2_CS474" selector="peoplecount:">peoplecount: anObj

<body package="project2_CS474" selector="peoplecount">peoplecount
</methods>


<methods>
<class-id>PaintingClass class</class-id> <category>instance creation</category>

<body package="project2_CS474" selector="new">new
</methods>


<methods>
<class-id>PaintingClass</class-id> <category>Landscape</category>

<body package="project2_CS474" selector="landscapeList">landscapeList

<body package="project2_CS474" selector="lsenqueue:">lsenqueue: anObject
</methods>

<methods>
<class-id>PaintingClass</class-id> <category>accessing</category>

<body package="project2_CS474" selector="stilllifeList">stilllifeList
</methods>

<methods>
<class-id>PaintingClass</class-id> <category>ListOperations</category>

<body package="project2_CS474" selector="sortenqueue:">sortenqueue:anObj

<body package="project2_CS474" selector="sortedList">sortedList

<body package="project2_CS474" selector="lenqueue:">lenqueue: anObject

<body package="project2_CS474" selector="sortedenqueue:">sortedenqueue:anObj
</methods>

<methods>
<class-id>PaintingClass</class-id> <category>Stilllife</category>

<body package="project2_CS474" selector="slenqueue:">slenqueue: anObject
</methods>

<methods>
<class-id>PaintingClass</class-id> <category>Portrait</category>

<body package="project2_CS474" selector="plenqueue:">plenqueue: anObject

<body package="project2_CS474" selector="portraitList">portraitList
</methods>

<methods>
<class-id>PaintingClass</class-id> <category>initialize-release</category>

<body package="project2_CS474" selector="initialize">initialize
</methods>



</st-source>
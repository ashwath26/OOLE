#include<iostream>
#include<string.h>
#include<cstdlib>
#include<stdio.h>
#include<string.h>
#include<typeinfo>
#include<vector>
using namespace std;



/****************************************************************
Class Name: String.h
Project Name: Painting Manager
Developer: Ashwath Narayanan
Function: Class header declars the new type String, this String type
is used in storing the artist names and the title. 
*****************************************************************/


class String
{
public:
char* str;
int size;

//Default constructor
String();

//Parametrized constructor
String(char* temp);


//Copy constructor
String(String*& temp);

//return the string
char*& getStr();

void copy(char* temp);
//destructor
~String(void);

};

/****************************************************************
Class Name: String.cpp
Project Name: Painting Manager
Developer: Ashwath Narayanan
Function: Class defines the new type String, this String type
is used in storing the artist names and the title. 
*****************************************************************/


//Default constructor
String::String()
{

}

void String::copy(char* temp)
{

        size = strlen(temp);
        str = new char[size+1];
        strcpy(str,temp);

}

//Parametrized constructor
String::String(char* temp)
{
        size = strlen(temp);
        str = new char[size+1];
        strcpy(str,temp);
}

//Copy constructor
String::String(String*& temp)
{
        size = temp->size;
        str = new char[size+1];
        strcpy(str,temp->str);
}

//return the string
char*& String::getStr()
{
	return str;

}


//destructor
String::~String(void)
{
	
	cout<<"\n String class destructor, deleting char*\n";
	delete[] str;
}

/****************************************************************
Class Name: Painting
Project Name: Painting Manager
Developer: Ashwath Narayanan
Function: An abstract class which defines the copy function which
needs to be over loaded by the 
*****************************************************************/


class Painting
{
public:
static int paintid;

String *title;
int height;
int width;
String *firstname;
String *lastname;
Painting* next;
int id;
public:
Painting()
{


}

Painting(char* title, char* firstname,char* lastname, int height, int width)
{
	this->id = paintid;
	paintid=paintid+1 ;
	this->height = height;
	this->width = width;
	this->title = new String(title);
	this->firstname = new String(firstname);
	this->lastname = new String(lastname);
	this->next = NULL;
}

Painting( Painting &pt,char* fname, char* lname )
{
        this->id= paintid;
        paintid=paintid+1;
        this->height = pt.height;
        this->width = pt.width;
        this->title = new String(pt.title);
	this->firstname = new String(fname);
        this->lastname = new String(lname);
        this->next = NULL;
}

/*
Painting( Painting* &pt)
{
	this->id= paintid;
	paintid=paintid+1;
	this->height = pt->height;
	this->width = pt->width;
	this->title = new String(pt->title);
	this->firstname = new String(pt->firstname);
	this->lastname = new String(pt->lastname);
	this->next = NULL;
}
*/
char*& getTitle()
{

        return title->getStr();

}



char*& getFirstname()
{

        return firstname->getStr();

}

char*& getLastname()
{

        return lastname->getStr();
}


virtual Painting* copy(char* fname,char* lname)
{
	cout<<"\n inside parent";

}

virtual ~ Painting()
{

	cout<<"\nExecuting painting class destructor";
	delete title;
	delete firstname;
	delete lastname;
}
};

/****************************************************************
Class Name: Portrait
Project Name: Painting Manager
Developer: Ashwath Narayanan
Function: Portrait class is a sub class of the painting class
it overrides the virtual function copy. 
*****************************************************************/

int Painting:: paintid = 1001;
class Portrait : public Painting
{
public:
int peoplecount;
String* peoplenames;
public:
Portrait()
{

}

Portrait(char* title,char* firstname, char* lastname, int height, int width, int peoplecount,char pnames[][100]):Painting(title,firstname,lastname,height,width)
{
	this->peoplecount = peoplecount;
	peoplenames = new String[peoplecount];
	for(int i=0;i<peoplecount;i++)
	{
	this->peoplenames[i].copy(pnames[i]);
	}
}

Portrait(Portrait& por,char* fname,char* lname):Painting(por,fname,lname)
{
	this->peoplecount = por.peoplecount;
        peoplenames = new String[por.peoplecount];
        for(int i=0;i<por.peoplecount;i++)
        {
	this->peoplenames[i].copy(por.peoplenames[i].getStr());
        }
   /*	for(int i=0;i<peoplecount;i++)
        {
        this->peoplenames[i] = new String(peoplenames[i]);
        }*/

}


virtual Portrait* copy(char* fname,char* lname)
{	
	cout<<"\n inside child copy";	
	Portrait *pt = new Portrait(*this,fname,lname);
	//cout<<pt->width;

	//cout<"\n\nput";
	return pt;

}

~Portrait()
{
	cout<<"\nExecuting portrait class destructor";
	delete[] peoplenames;
}
};

/****************************************************************
Class Name: Landscape
Project Name: Painting Manager
Developer: Ashwath Narayanan
Function: Landscape function is a subclass of the abstract class 
Painting which defines its own non-inherited member variables and 
overrides the copy function.
*****************************************************************/

class Landscape:public Painting
{
public:
String* country;

Landscape()
{


}

Landscape(char* title,char* firstname, char* lastname,int height,int width,char* country):Painting(title,firstname,lastname,height,width)
{
	this->country = new String(country);
}

Landscape(Landscape& pt,char* fname,char* lname):Painting(pt,fname,lname)
{
	this->country = new String(pt.country);
}

char*& getCountry()
{

        return country->getStr();
}


virtual Landscape* copy(char* fname,char* lname)
{
	Landscape *pt = new Landscape(*this,fname,lname);
	return pt;
}

~Landscape()
{
	cout<<"\nExecuting Landscape class destructor";
	delete country; 
}
};

/****************************************************************
Class Name:Stilllife
Project Name: Painting Manager
Developer: Ashwath Narayanan
Function: Landscape function is a subclass of the abstract class 
Painting which defines its own non-inherited member variables and 
overrides the copy function.
*****************************************************************/
class Stilllife:public Painting
{
public:
String* painttype;

Stilllife()
{


}

Stilllife(char* title,char* firstname,char* lastname,int height,int width,char* painttype):Painting(title,firstname,lastname,height,width)
{
        this->painttype = new String(painttype);
}

Stilllife(Stilllife& pt,char* fname,char* lname):Painting(pt,fname,lname)
{
        this->painttype = new String(pt.painttype);
}

virtual Stilllife* copy(char* fname,char* lname)
{
        Stilllife *pt = new Stilllife(*this,fname,lname);
        return pt;
}

char*& getPainttype()
{

        return painttype->getStr();
}


~Stilllife()
{
        cout<<"\nExecuting Stilllife class destructor";
	delete painttype;
}
};

/******************************************************************
File Name: Linkedlist.h
Project Name: Painting Manager
Developer: Ashwath Narayanan
Function: The header file defines the linked list implementation methods
for individual artists. Used by the painting class.
*******************************************************************/


class Linkedlist
{
public:
Painting *head;

public:

Linkedlist();

Linkedlist(Linkedlist*& list,char* fname,char* lname);

void add(Painting& newnode);

void deleteNodes();

~Linkedlist();

int getSize();

int checkTitle(char* title);

int checkName(char* firstname,char* lastname);

int remove(int id);

void display();

Painting& getDetails(char* title);

};

/****************************************************************************
Filename:Linkedlist.cpp
Project name:PaintingManager manager
Developer name:Ashwath Narayanan
Function:Implementation of linkedlist.h. 
****************************************************************************/

Linkedlist::Linkedlist()
{
	head  = NULL;	
}

Linkedlist::Linkedlist(Linkedlist* &list,char* fname,char* lname)
{
	Painting* temp1;
	Painting* prev;
	temp1 = list->head;
	
	if(temp1 != NULL)
	{
		Painting* newNode = temp1->copy(fname,lname);
		newNode->next = NULL;
		this->head = newNode;
		prev = newNode;
		head = newNode;

	}
	temp1 = temp1 ->next;
	while(temp1 != NULL)
	{
		//here the particulat copy() is invoked accordingly
		Painting* newNode = temp1->copy(fname,lname);
		newNode->next = NULL;
		prev->next = newNode;
		prev= newNode;
		temp1 = temp1->next;	
	}
}

void Linkedlist::add(Painting& newnode)
{
Painting *temp;
temp = head;

        if(temp == NULL)
        {
                head = &newnode;
		return;
        }

        //travesing till the end of the list and add the new node
        while(temp->next != NULL)
        {
                temp = temp->next;
        
        }

        temp->next = &newnode;
	//cout<<"\nThe new node next: "<<newnode.next;
	return;


}


void Linkedlist::deleteNodes()
{
	do
	{
		Painting* temp;
		temp = head;
		head = head->next;
		temp->next = NULL;
		delete temp;

	}while(head != NULL);

}


Linkedlist::~Linkedlist()
{

	if(this->head == NULL)
	cout<<"\nLinkedlist class destructor invoked";

	if(this->head != NULL)
	{
	cout<<"\nLinkedlist class destructor invoked";
	this->deleteNodes();
	}
}


int Linkedlist::getSize()
{
	Painting* temp;
	temp = head;
	int count = 0;

	if(head == NULL)
	return 0;

	if(temp->next == NULL)
	return 1;

	do
	{
		count++;
		temp = temp->next;
	}while(temp != NULL);
	return count;
}

int Linkedlist::checkTitle(char* title)
{

	Painting* temp;
        temp = head;
        int count = 0;

        if(head == NULL)
        return 1;

        do
        {
                if(!strcmp(temp->getTitle(),title))
		return 0;

                temp = temp->next;
        }while(temp != NULL);
        return 1;
}


int Linkedlist::checkName(char* firstname,char* lastname)
{
	Painting* temp;
	temp = head;
	int count = 0;
	
	if(head == NULL)
	return 0;

	if(!strcmp(head->getFirstname(),firstname))
		{
			if(!strcmp(head->getLastname(),lastname))
			return 1;

			}
	return 0;

}


int Linkedlist::remove(int id)
{
	Painting* temp;
	temp = head;
	int flag =0;

	if(temp == NULL)
	return 0;

	if(temp->next == NULL)
	{
		if(temp->id == id)
		{ 
		delete temp;
		head = NULL;
		return 1;
		}
	}
	else
	{
	Painting *prev;
	prev = temp;
	do
	{
		if(temp->id == id)
		{
			flag =1;	
			break;		

		}
		prev = temp;
		temp = temp->next;
	
	}while(temp != NULL);

	if(flag == 1)
	{

		if(temp == head)
		{
			head = head->next;
			delete temp;
			return 1;
		}
	
	prev->next = temp->next;
	delete temp;
	return 1;
	}
	return 0;
	}
}


void Linkedlist::display()
{

	Painting *temp;
	Portrait *port;
	Landscape *land;
	Stilllife *still;
	temp = head;
	int count =0;
	//Just no node in the list
	if(temp == NULL)
	{
	cout<<"\n";
	for(int i=0;i<28;i++)
	cout<<"-";
	cout<<"Nothing to display, PaintingManager manager empty";
	for(int i=0;i<28;i++)
	cout<<"-";
	cout<<"\n";
	return;
	}
	//Traverse the list and print all the nodes in the list
	do
	{
		port = dynamic_cast<Portrait*>(temp);
		land = dynamic_cast<Landscape*>(temp);
		still = dynamic_cast<Stilllife*>(temp);

		if(port != NULL)
		{
			
		cout<<"\nIndex: "<<port->id;
		cout<<"\n\tTitle: "<<port->getTitle();
		cout<<"\tFirstname: "<<port->getFirstname();
		cout<<"\tLastname: "<<port->getLastname();
		cout<<"\tHeight: "<<port->height;
		cout<<"\tWidth: "<<port->width;
		cout<<"\tPeopleCount: "<<port->peoplecount;
		cout<<"\nPeoplenames: ";
		for(int i=0;i<port->peoplecount;i++)
		{
			cout<<"\t";
			cout<<port->peoplenames[i].getStr();
		}
		}

		else if(land != NULL)
                {
		land = dynamic_cast<Landscape*>(temp);
                cout<<"\nIndex: "<<land->id;
                cout<<"\n\tTitle: "<<land->getTitle();
                cout<<"\tFirstname: "<<land->getFirstname();
                cout<<"\tLastname: "<<land->getLastname();
                cout<<"\tHeight: "<<land->height;
                cout<<"\tWidth: "<<land->width;
                cout<<"\tCountry: "<<land->getCountry();
                }

		else if(still != NULL)
                {
		cout<<"\nIndex: "<<still->id;
                cout<<"\n\tTitle: "<<still->getTitle();
                cout<<"\tFirstname: "<<still->getFirstname();
                cout<<"\tLastname: "<<still->getLastname();
                cout<<"\tHeight: "<<still->height;
                cout<<"\tWidth: "<<still->width;
                cout<<"\tPainting Type: "<<still->getPainttype();
                }
		temp = temp->next;
		count++;
		
	}while(temp != NULL);
}


Painting& Linkedlist::getDetails(char* title)
{
		Painting *temp;
		temp = head;
		do
		{
			if(!(strcmp(temp->getTitle(),title)))
				return *temp;
			temp = temp->next;
		}while(temp!=NULL);
}

/****************************************************************
Class Name: Artist
Project Name: PaintingManager Manager
Developer: Ashwath Narayanan
Function: This class defines the Artist details
*****************************************************************/

class Artist
{
public:
String* firstname;
String* lastname;
Linkedlist* next;


Artist()
{


}

Artist(char* fname,char* lname, Linkedlist* n)
{
	this->firstname = new String(fname);
	this->lastname = new String(lname);
	this->next = n;
}

~Artist()
{
	cout<<"\nExecuting Artist vector";
	delete firstname;
	delete lastname;
	delete next;
}
};


/****************************************************************
Class Name: PaintingManager.h
Project Name: PaintingManager Manager
Developer: Ashwath Narayanan
Function: Class defines the default constructor, copy constructor
user defined destructor, operations to create a painting class
and perform various functions of the class.
*****************************************************************/


class PaintingManager
{
public:
Linkedlist *head;
vector<Artist*> vec;

public:
//Default Constructor 
PaintingManager();

//Copy Constructor
PaintingManager(const PaintingManager& list);

void add(Painting*& node);

int NewArtist(char* fname,char* lname,Linkedlist* n);
//Addition function which creates a new linkedlist for an artist
//void add(char* title,char* firstname, char* lastname, int count, int height, int width);

//Performs the logic for displaying the painting details to the user
void display();

//Performs the logic for checking the title in the paining manager
int checkTitle(char* title);

//Performs the logic of removing the entire artist list from the painting manager
void removeList(char* firstname,char* lastname);

//performs the logic to remove the title from the painting manager
void remove(int id);

//Perform copy is used to perform the copy of the particular painting for an artist
void performCopy(char* firstname,char* lastname);

//performs recursive deleting of nodes its invoked by the destructor
void deletePaintings();

//PaintingManager destructor.
~PaintingManager();
};


/****************************************************************
Class Name: PaintingManager.cpp
Project Name: PaintingManager Manager
Developer: Ashwath Narayanan
Function: Class defines the default constructor, copy constructor
user defined destructor, operations to create a painting class
and perform various functions of the class.
*****************************************************************/


//Default Constructor 
PaintingManager::PaintingManager()
{
	 

}

int PaintingManager::NewArtist(char* fname,char* lname,Linkedlist* n)
{
	for(int i=0;i<vec.size();i++)
        {
                if(!strcmp(vec[i]->firstname->getStr(),fname))
                {
                        if(!strcmp(vec[i]->lastname->getStr(),lname))
                {
				cout<<"\nArtist name already present";
				return 0;
			}
		}
	}
			

	Linkedlist *node = new Linkedlist();
	Artist *temp = new Artist(fname,lname,node);
	vec.push_back(temp);

}
//Copy Constructor
/*
PaintingManager::PaintingManager(const PaintingManager& list)
{
        Linkedlist* temp1;
        Linkedlist* prev;
        temp1 = list.head;
        if(temp1 != NULL)
        {
                Linkedlist* newPainting = new Linkedlist(temp1,NULL,NULL);
                newPainting->next = NULL;
                prev = newPainting;
                head = newPainting;

        }
        temp1 = temp1 ->next;
        while(temp1 != NULL)
        {
                Linkedlist* newPainting = new Linkedlist(temp1,NULL,NULL);
                newPainting->next = NULL;
                prev->next = newPainting;
                prev= newPainting;
                temp1 = temp1->next;
        }
}
*/

void PaintingManager::add(Painting*& node)
{
        Linkedlist* temp;
	int flag =0;
	for(int i=0;i<vec.size();i++)
	{
		if(!strcmp(vec[i]->firstname->getStr(),node->getFirstname()))
		{
			if(!strcmp(vec[i]->lastname->getStr(),node->getLastname()))
                {
			flag=1;

			temp = vec[i]->next;
			if(temp->getSize() == 0)
			{
				temp->add(*node);
				cout<<"\t"<<temp->getSize();
				return;				
			}
	
	                else if(temp->checkTitle(node->getTitle()))
                        {
                                //Painting* node = new Painting(title,firstname,lastname,count,height,width,NULL);
                               temp->add(*node);
                               return;
                        }
                        else
                        {
                               cout<<"\n The title already exist, Please enter another title name";
                               return;
                 	}
                }
                }
	}
	if(flag == 0)
	{
		cout<<"\nNo Artist with the title exist";

	}
}
/*
//Addition function which creates a new linkedlist for an artist
void PaintingManager::add(char* title,char* firstname, char* lastname, int count, int height, int width)
{
        Linkedlist* temp;
        Linkedlist* prev;
        temp = head;
        prev = temp;
        //if the painting list is empty 
        if(temp == NULL)
        {
                Linkedlist* newnode = new Linkedlist();
				Painting* node = new Painting(title,firstname,lastname,count,height,width,NULL);
                newnode->add(*node);
                newnode->next = NULL;
                head = newnode;
                return;
        }
        do
        {
                if(!strcmp(temp->head->getFirstname(),firstname))
                {
                        if(!strcmp(temp->head->getLastname(),lastname))
                        {
				if(temp->checkTitle(title))
				{
				Painting* node = new Painting(title,firstname,lastname,count,height,width,NULL);
                                temp->add(*node);
                                return;
				}
				else
				{
					cout<<"\n The title already exist, Please enter another title name";
					return;
				}
                        }
                }
                prev = temp;
                temp = temp->next;
        }while(temp != NULL);
        if(prev->next == NULL)
        {
                Linkedlist* newnode = new Linkedlist();
		Painting* node = new Painting(title,firstname,lastname,count,height,width,NULL);
                newnode->add(*node);
                newnode->next = NULL;
                prev->next= newnode;
                return;
        }
}
*/

//Performs the logic for displaying the painting details to the user
void PaintingManager::display()
{
	Linkedlist *temp;
	//temp = head;
	int count =0;
	if( vec.size() == 0)
	{
	cout<<"No Details in painting manager";
	return;
	}	
	
	for(int i=0;i<vec.size();i++)
	{
		cout<<"\n";
		 for(int j=0;j<28;j++)
                cout<<"-";

               	cout<<"Details of Artist Firstname: "<<vec[i]->firstname->getStr()<<" Lastname: "<<vec[i]->lastname->getStr();
		temp = vec[i]->next;
		for(int i=0;i<28;i++)
		cout<<"-";
		cout<<"\n";
		if(temp->getSize()>0)
		{
		temp -> display();
		}
		else
		cout<<"\nNo painting details present for this artist\n";
//		temp = temp->next;
		count++;
		cout<<"\n";
	}


}

//Performs the logic for checking the title in the paining manager
int PaintingManager::checkTitle(char* title)
{
	Linkedlist *temp;
//	temp = head;
	int count=1;
	if( temp == NULL)
	{
		count = 0;
		return count;
	}

	for(int i=0;i<vec.size();i++)
	{
		temp = vec[i]->next;
		if(!temp->checkTitle(title))
		{
		cout<<"\n Title: "<<title<<" aleady present";
		return count;
		}
	//	temp = temp->next; 
		count++;
	}
	
	return 0;

}

//Performs the logic of removing the entire artist list from the painting manager
void PaintingManager::removeList(char* firstname,char* lastname)
{
	Linkedlist *temp;
	int flag=0;
//	Linkedlist *prev;
//	temp = head;
//	prev = head;
	if(vec.size() == 0)
	{
	cout<<"\n No painting to delete from the list";
	return;
	}
	
	for(int i=0;i< vec.size();i++)
	{
		if(!strcmp(vec[i]->firstname->getStr(),firstname))
                {
                        if(!strcmp(vec[i]->firstname->getStr(),lastname))
                	{
                        	flag=1;
				delete vec[i];	
				vec.erase(vec.begin()+i);

			}
	
		}

	}
	if(flag == 0)
	cout<<"\nEnter valid artist details to delete";
}

//performs the logic to remove the title from the painting manager
void PaintingManager::remove(int id)
{
	Linkedlist *temp;
//	Linkedlist *prev;
//	int checkNameFlag = 0;
//	temp = head;
//	prev = temp;
	int flag = 0;	
	if(vec.size() == 0)
	{
	cout<<"\nThe painting list is empty nothing to remove!!";
	return;
	}

/*	 do
        {
        if(temp->checkName(firstname,lastname))
        {
                checkNameFlag = 1;
                break;
        }

        temp= temp->next;
        }while(temp != NULL);
*/
  /*      if(checkNameFlag != 1)
        {
                cout<<"\nPlease enter correct artist names";
                return;
        }
*/
	temp = head;
	for(int i=0;i<vec.size();i++)
	{
	//	if(temp->checkName(firstname,lastname) == 1)
	//	{
		temp = vec[i]->next;
		if( temp->remove(id) == 1 )
		{
			
			flag =1;
			//if the size of the artist linked list was zero and the next is null
	//		if(temp->getSize() == 0 )
	//		{
			//	delete temp;
	//			delete vec[i];
	//		}
			
			return;
				//if the size of the artist linkedlist was zero and the next is not null
			
		}
			
	}	
		cout<<"\nThe title details is not present in the list";
}

//Perform copy is used to perform the copy of the particular painting for an artist
void PaintingManager::performCopy(char* firstname,char* lastname)
{
	char fname[100];
	char lname[100];
	Linkedlist *temp=NULL;
//	Linkedlist *nxt=NULL;
//	char version1[100]="Version-";
//	char version[20];
	int checkNameFlag = 0;
	//Linkedlist *temp1;
//	Painting *tempLink;
	temp = head;
	int count;
	if(vec.size() == 0)
	{	
		cout<<"\nNo Data in the painting manager";
		return;
	}

	for(int i=0;i< vec.size();i++)
        {
                if(!strcmp(vec[i]->firstname->getStr(),firstname))
                {
                        if(!strcmp(vec[i]->firstname->getStr(),lastname))
                        {
	
					checkNameFlag = 1;
					temp = vec[i]->next;
					break;
			}
		}
	}
	
	if(temp->getSize() == 0)
	{
		cout<<"\nSorry no paintings present for this artist, cannot clone";
		return;
	}
	if(checkNameFlag != 1)
	{
		cout<<"\nPlease enter correct artist details";
		return;
	}
	//count = temp->checkTitle(title);

	if(checkNameFlag == 1 )
	{
		cout<<"\nEnter firstname: ";
	        cin.getline(fname,100);
        	cout<<"\nEnter lastname: ";
        	cin.getline(lname,100);
		for(int i=0;i<vec.size();i++)
        {
                if(!strcmp(vec[i]->firstname->getStr(),fname))
                {
                        if(!strcmp(vec[i]->lastname->getStr(),lname))
                {
					cout<<"\nArtist details already exist, aborting operation";
					return;
		}}}
		Linkedlist *copy = new Linkedlist(temp,fname,lname);
		Artist *node = new Artist(fname,lname,copy);
		vec.push_back(node);
		cout<<"\nCopy successful";	
	}
	/*else
	{
		cout<<"\nThe title does not exist, please enter a title name which exist";
		return;

	}*/

}

//performs recursive deleting of nodes its invoked by the destructor
void PaintingManager::deletePaintings()
{
	
        for(int i=vec.size();i > 0;i--)
        {
               	delete vec[i-1];
		vec.erase(vec.begin()+i-1);
		cout<<"\nVector Size:"<<vec.size();
        }

}


//PaintingManager destructor.
PaintingManager::~PaintingManager()
{

	cout<<"\nPaintingManager class destructor invoked";
        this->deletePaintings();

}



int main()
{
        system("clear");
        char choice;
        PaintingManager *pManager;
        pManager = new PaintingManager();
        char firstname[100];
        char lastname[100];
        char title[100];
	int count;
	char country[100];
	char oil[100]="Oil-Based Medium";
	char water[100]="Water-Color";
        int height;
        int width;
        char ch;
        int flag = 0;
        char pool[10];
        do
        {
        cout<<"\n";
        for(int i=0 ;i<30;i++)
        cout<<"-";
        cout<<"Welcome to the PaintingManager Manager application";
        for(int i=0 ;i<30;i++)
        cout<<"-";
        cout<<"\n";
        cout<<"\nSelect an option: \na-Add new artist  \np-Add a painting to the collection"
                "\nr-Remove a painting from the collection \nd-Delete all painting of artist \nc-Clone an artist"
                "\nl-List all painting \nq-Quit \nz-Clear console";
        cout<<"\nEnter choice: ";
        cin >> choice;
        switch(choice)
        {
	case 'a':
        case 'A':
        gets(pool);
        cout<<"\nEnter firstname: ";
        cin.getline(firstname,100);
        cout<<"\nEnter lastname: ";
        cin.getline(lastname,100);
        pManager->NewArtist(firstname,lastname,NULL);
        break;
        case 'p':
        case 'P':
        int ptype;
        cout<<"\nOption selected: a";
        do
        {
        cout<<"\nPlease select the type of Painting: \n1)Portrait \n2)Landscape \n3)Stilllife";
        cout<<"\nEnter choice: ";
        cin>>ptype;
        if((ptype < 1)||(ptype >3))
        {
                cout<<"\nEnter correct choice";

        }}while((ptype > 3)||(ptype < 0));

        cout<<"\nPlease enter painting details";
        do
        {
        flag =0;
        gets(pool);
        cout<<"\nEnter title:";
        cin.getline(title,100);
        int i=0;
        if(strlen(title) == 0)
                {
                        flag = 1;
                        cout<<"Please enter title correctly, press enter: ";
                        continue;
                }

        do
        {
                if((int)title[i] == 32)
                {
                        flag = 1;
                        cout<<"Please enter without space, press enter: ";
                        break;
                }
                i++;
        }while(title[i] != '\0');
        }while(flag == 1);

        cout<<"\nEnter firstname: ";
        cin.getline(firstname,100);
        cout<<"\nEnter lastname: ";
        cin.getline(lastname,100);
        cout<<"\nEnter height (Number): ";
        cin>>height;
        cout<<"\nEnter width (Number): ";
        cin>>width;
	if(ptype == 1)
	{
		cout<<"\nEnter the people count:";
		cin>>count;
		char pnames[count][100];
		cout<<"\nEnter their names:";

		gets(pool);
		for(int i=0;i<count;i++)
		{
		cout<<"\nName("<<i+1<<"):";

		cin.getline(pnames[i],100);
		}
		
		Painting *p = new Portrait(title,firstname,lastname,height,width,count,pnames);
                pManager->add(p);
		}
	
	   else if(ptype == 2)
        {
                cout<<"\nEnter the country of landscape: ";
		gets(pool);
                cin.getline(country,100);
                Painting *p = new Landscape(title,firstname,lastname,height,width,country);
                pManager->add(p);
        }
        else if(ptype == 3)
        {
		
                int type;
		do
		{
         cout<<"\nSelect the type of painting: \n1)Oil-Based Medium \n2)Water colors \nSelect Option:";
                cin>>type;
		if(type == 1)
		{
		Painting *p = new Stilllife(title,firstname,lastname,height,width,oil);
                pManager->add(p);
		}
		else if(type == 2)
		{
		Painting *p = new Stilllife(title,firstname,lastname,height,width,water);
                pManager->add(p);
		}
		else
		{
			cout<<"\nWrong choice entered";
			continue;
		}
	
		}while((type <1) || ( type >2));
	}
	else
	{
		break;
	}
//        }	
        //pManager->add(title,firstname,lastname,1,height,width);
        break;

        case 'z':
        case 'Z':
        system("clear");
        break;

        case 'r':
        case 'R':
//      system("clear");
        cout<<"\nOption selected: r";
//      system("clear");
        cout<<"\nPlease enter painting details to remove";
      //  do
       // {
        flag =0;
        gets(pool);
	int it;
        cout<<"\nEnter Id:";
	cin>>it;
        //cin.getline(title,100);
	/*
        if(strlen(title) == 0)
                {
                        flag = 1;
                        cout<<"Please enter title correctly, press enter: ";
           continue;
                }

        int i=0;
        do
        {
                 if((int)title[i] == 32)
                {
                        flag = 1;
                        cout<<"Please enter without space, press enter: ";
                        break;
                }
                i++;

        }while(title[i] != '\0');
        }while(flag == 1);
	*/
    //    cout<<"\nEnter firstname of artist: ";
    //    cin.getline(firstname,100);
    //    cout<<"\nEnter lastname of artist: ";
    //    cin.getline(lastname,100);
        pManager->remove(it);
        break;

        case 'd':
        case 'D':
//      system("clear");
        cout<<"Option selected: d";
        cout<<"\nEnter artist firstname and lastname to delete";
        gets(pool);
  	
	cout<<"\nEnter firstname: ";
        cin.getline(firstname,100);
        cout<<"\nEnter lastname: ";
        cin.getline(lastname,100);
        pManager->removeList(firstname,lastname);
        break;

        case 'c':
        case 'C':
//      system("clear");
        cout<<"\nOption selected: c";
        cout<<"\nPlease enter painting details to perform copy";
       
        flag =0;
        gets(pool);
        cout<<"\nEnter the firstname of artist: ";
        cin.getline(firstname,100);
        cout<<"\nEnter the lastname of artist: ";
        cin.getline(lastname,100);
        pManager->performCopy(firstname,lastname);
        break;

        case 'l':
        case 'L':
//      system("clear");
        cout<<"\nOption selected: l";
        cout<<"\nPaintingManager Manager Details: ";
        pManager->display();
        break;

        case 'q':
        case 'Q':
        system("clear");
        delete pManager; // deleting the entire painting manager 
        break;

        default:
        cout<<"\nPlease select correct option";
 break;
        }
        }while(choice != 'q');
        cout<<"\n Thank you!\n";
        return 0;

}


//int main()
//{
//char ch[50]="ashwath";
//char
//Painting *p = new Portrait("ashwath","lol","lol",5,10,12);
//Painting *ls = p->copy();
//Painting *test = new Painting(*p);
//cout<<"\nfirstname:";
//cout<<ls->getFirstname();
//Painting *pt = p;
//Painting *p = new Portrait(ch,30,50,504);

//cout<<"\nCreated\n";
//p->copy();
//cout<<"\n";
//cout<<"\n id is"<<Painting::id;
//p->sample();
//cout<<"\n\nAfter performing the copy of the object\n";
//delete p;
/*
Linkedlist *ll = new Linkedlist();
Portrait *po = new Portrait("ashwath","lol","lol",3,4,4);
Landscape *ls = new Landscape("ashwath","lol","pol",4,5,"india");
ll->add(*po);
ll->add(*ls);
cout<<"\nThe size is:";

Linkedlist *lp = new Linkedlist(ll);
cout<<lp->getSize();
cout<<"\n";
*/
/*Stilllife *pt = dynamic_cast <Stilllife*>(ll->head->next);
if(pt != NULL)
{
cout<<pt->getPainttype();
cout<<"\n";
//ll->display();
}
else
cout<<"\nout";
*/
/*ll->display();
cout<<"\n";
lp->display();
cout<<"\n";
return 0;
}*/




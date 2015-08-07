/*****************************************************************************
* 								EPhysicalGroup.h
* 								================
*
* AUTHOR: Sumeet Kumar Sinha (sumeet.kumar507@gmail.com)
* CREATED: 28-06-2015
*******************************************************************************/
#ifndef PHYSICALGROUP_H
#define PHYSICALGROUP_H

#include "Tokenizer.h"
#include <vector>

class PhysicalGroup{

	public:

		PhysicalGroup();
		PhysicalGroup(const string& PhysicDes);
		~PhysicalGroup();
		void setPhysicalGroup(const string& PhysicDes);
		void setId(const int& id);
		void setType(const int& type);
		void setPhysicTag(const string& physicTag);
		void Process(const string& Command);
		int getId();
		int getType();
		string getPhysicTag();
		string getPhysicDes();
		vector<string> getCommandList();
		vector<string> getUserCommandList();
		vector<vector<string>> getVariableList();
		vector<int> getNofVariables();

	private:

		void setContents(const string& PhysicDes);
		string delSpaces( string str);
		int Id;
		int Type;
		string PhysicDes;
		string PhysicTag;
		vector<string> UserCommandList;
		vector<string> CommandList;
		vector<vector<string>> VariableList;
		vector<int> NofVariables;
};


#endif //PHYSICALGROUP_H
#include <iostream>
#include <algorithm>

using namespace std;

int main() {
	 string str;
	 string speaker;

	 cout << "What is the quote? ";
	 cin >> str;

	 cout << "Who said it? ";
	 cin >> speaker;

	 cout << speaker << " says, \"" << str << "\"";

	 return 0;
}

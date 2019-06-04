#include <iostream>

using namespace std;

extern "C" int CalcResult1_(int vall, int val2, int* quo, int* rem);

int main()
{
	int val1 = 42;
	int val2 = 9;
	int quo;
	int rem;
	int prod = CalcResult1_(val1, val2, &quo, &rem);

	cout << "Results for Example1\n";
	cout << "val1 = " << val1 << '\n';
	cout << "val2 = " << val2 << '\n';
	cout << "quo = " << quo << '\n';
	cout << "rem = " << rem << '\n';
	cout << "prod = " << prod << '\n';

	return 0;
}
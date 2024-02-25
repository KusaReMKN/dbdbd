#include <algorithm>
#include <array>
#include <iostream>
#include <numeric>
#include <random>

int
main(int argc, char *argv[])
{
	constexpr std::array str{ "chipi", "chapa", "dubi", "daba", };
	constexpr std::array correct{ 1, 2, 3, 4, };
	std::array index(correct);

	std::random_device sgen;
	std::default_random_engine rng(sgen());
	do {
		std::shuffle(index.begin(), index.end(), rng);
		for (const auto &e: index)
			std::cout << str[e] << ' ' << str[e] << ' ';
	} while (index != correct);

	std::cout << "mágico mi dubi dubi boom boom boom boom" << std::endl;

	return 0;
}

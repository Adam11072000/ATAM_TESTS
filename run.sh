echo running symbol table tests...
../part1/binutils-2.36.1/binutils/readelf -s ../prog > output/prog_symbolTable_out.txt
../part1/binutils-2.36.1/binutils/readelf -s ../part2/a.o > output/a_symbolTable_out.txt
../part1/binutils-2.36.1/binutils/readelf -s ../part2/b.o > output/b_symbolTable_out.txt
diff -q expected/a_symbolTable_expected.txt output/a_symbolTable_out.txt
diff -q expected/b_symbolTable_expected.txt output/b_symbolTable_out.txt
diff -q expected/prog_symbolTable_expected.txt output/prog_symbolTable_out.txt
echo running section table tests...
../part1/binutils-2.36.1/binutils/readelf -S ../prog > output/prog_sectionTable_out.txt
../part1/binutils-2.36.1/binutils/readelf -S ../part2/a.o > output/a_sectionTable_out.txt
../part1/binutils-2.36.1/binutils/readelf -S ../part2/b.o > output/b_sectionTable_out.txt
diff -q expected/a_sectionTable_expected.txt output/a_sectionTable_out.txt
diff -q expected/b_sectionTable_expected.txt output/b_sectionTable_out.txt
diff -q expected/prog_sectionTable_expected.txt output/prog_sectionTable_out.txt
echo done!

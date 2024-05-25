# cmake_concept

Steps for Proof of Concept:

The focus is on the export_library folder.

1. Remove the CMakeCache.txt in the build folder of both ProjectA and ProjectB.
2. Within source of ProjectA, set the paths to where you want the install destination to be.
3. Within source of ProjectB, set the CMAKE_PREFIX_PATH to that same path in step 2. Make sure they are all the same.
4. Within projectA root, `cmake -S source -B build`
5. `cd build`
6. `make`
7. `make install`
8. Go to Project B
9. Within projectB root, `cmake -S source -B build`
10. `cd build`
11.  `make`

Now to see if the dependency is linked

1. Go to the header in `projectA/source/library/include`
2. Change the spelling of a function
3. Go to the build folder in projectA
4. `make`
5. `make install`
6. Go to the build folder in projectB
7. `make`

You should see it rebuild. 

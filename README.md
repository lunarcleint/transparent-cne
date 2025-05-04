# Transparent Window (WINDOWS ONLY FOR NOW)
Pls credit me guys this is like acuttaly a culmantion of multpile YEARS of attempts >:D

The c++ source code for the ndll is located in the [transparent-ndll](https://github.com/lunarcleint/transparent-ndll) repo!!!

## How to use:
There are two main ways:
- Create a addons/ folder right next to your cne .exe and drag the repo inside there
- Drag the files in this repo into your mod

Then use the `setWindowTransparent(true)` to set the window as transparent.'
For example this is in a song's scripts/ folder:
```haxe
// Code outside a code block gets instantly ran as the script is interperated for the first time
setWindowTransparent(true);

// Undo the code
function destroy() 
    setWindowTransparent(false);
```

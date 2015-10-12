//// Prevent the flash that happens before the font is loaded
// first, create the object that contains
// configuration variables
MTIConfig = {};

// next, add a variable that will control
// whether or not FOUT will be prevented
MTIConfig.EnableCustomFOUTHandler = true // true = prevent FOUT
// Ourselves:
#include <exaegir/resources.h>

// Standard library:
#include <iostream>
#include <cstdlib>

namespace exaegir {

  std::string get_resource_dir()
  {
    char * path = getenv("EXAEGIR_RESOURCE_DIR");
    if (path != NULL) {
      // std::cerr << "[devel] exaegir::get_resource_dir(): " << path << std::endl;
      return std::string(path);
    }
    std::string resDir = "/sps/nemo/scratch/amendl/AI/ExAegir/_install.d/share/exaegir-1.0.0";
    return resDir;
  }
  
} // end of namespace exaegir

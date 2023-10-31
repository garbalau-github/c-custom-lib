#include "file_reader.h"

int read_file(const char *filename)
{
  FILE *file;
  char line[1000];

  file = fopen(filename, "r");

  if (file == NULL)
  {
    printf("Error: Unable to open file '%s'.\n", filename);
    return 1;
  }

  while (fgets(line, sizeof(line), file) != NULL)
  {
    printf("%s\n", line);
  }

  fclose(file);

  return 0;
}
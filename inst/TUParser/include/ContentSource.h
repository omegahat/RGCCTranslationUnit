#include "Utils.h"

/*
  This is an abstract class that is used to represent
  input from various sources such as a string in memory or a file.
  Basically, it is just an interface that knows how to read one line at a time
  and make it available.
 */
class ContentSource {
 public:
    virtual const char *getLine() = 0;
    virtual ~ContentSource() {}
 
};

/*
 Read the content from a collection of strings, 
 e.g. as created in R with readLines() or strsplit()
 */
class StringContentSource : public ContentSource {

protected:
    const char **content;
    int cur;
    int len;

   public:
    StringContentSource(const char **value, int num, bool dup = false) {
	content = value;
	cur = 0;
	len = num;
    }

    const char *getLine() {
	if(cur >= len)
	    return(NULL);

	return(content[cur++]);
    }

};


/*
 Read the content from a file.
 */
class FileContentSource : public ContentSource {

    static const int MAX_SIZE = 500;

protected:
    FILE *stream;
    bool close;
    char buf[MAX_SIZE];

public:
    FileContentSource(const char *filename) {
	stream = fopen(filename, "r");
	if(!stream) {
	    // raise an error
          raiseError("Can't open file %s", filename);
	}
	close = true;
    }

    const char *getLine() {
	return(fgets(buf, MAX_SIZE, stream) > 0 ? buf : NULL);}
};




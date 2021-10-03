#ifndef SDLAPPH
#define SDLAPPH
#if defined (UIQ2) || defined (UIQ3) || defined (__SERIES60_3X__)
#define EPOC_AS_APP
#define MY_IMPORT_C
#define MY_EXPORT_C
#endif

#if defined (__AVKON_ELAF__)
#include <aknapp.h>
typedef CAknApplication BaseApplication_t;
#elif defined (UIQ) || defined(UIQ3)
#include <qikapplication.h>
typedef CQikApplication BaseApplication_t;
#else
#include <eikapp.h>
typedef CEikApplication BaseApplication_t;
#endif

class RWindow;

class CSDLApp: public BaseApplication_t
{
public:
	MY_IMPORT_C CSDLApp();
	MY_IMPORT_C  ~CSDLApp();
	MY_IMPORT_C CApaDocument*		CreateDocumentL();
	MY_IMPORT_C static TFileName	GetExecutablePath();
	MY_IMPORT_C  static char*		GetExecutablePathCStr();

	/**
	 * This has a default empty implementation.
	 * Is called just before SDL_Main is called to allow init of system vars
	 */
	MY_IMPORT_C virtual	void PreInitializeAppL();
	
	/**
	 * This has a default empty implementation.
	 * This should call SDL Main and this is not located in the SDL main
	 * param argc
	 * param argv
	 */
	MY_IMPORT_C virtual void LaunchAppL(int argc, char** argv);
	
	/**
	 * This has a default empty implementation.
	 * Is called to get the name of the SDL data folder for the app 
	 * The name is appended to either c:\data or c:\shared
	 * If a zero length string is returned then application name 
	 * will be used for default datapath
	 * Max length is 64 chars
	 */
	MY_IMPORT_C virtual	void GetDataFolder(TDes& aDataFolder);			
#if defined(UIQ3)
	/**
			 * Returns the resource id to be used to declare the views supported by this UIQ3 app
			 * @return TInt, resource id
			 */
	virtual TInt		ViewResourceId() = 0;
#endif			
	MY_IMPORT_C RWindow& MainWindow();
};
#endif


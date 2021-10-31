
#include <hal.h>
#include "sdlapp.h"
#include "SDL_log.h"
#include "SDL_error.h"
#include "SDL_video.h"
#include <math.h>

// SDL 2.0 code comes here
int SDL_GetDisplayDPI(int displayIndex, float * ddpi, float * hdpi, float * vdpi)
{
    TInt twipX;
    TInt twipY;
    TInt pixelX;
    TInt pixelY;
    
    HAL::Get(HALData::EDisplayXTwips, twipX);
    HAL::Get(HALData::EDisplayYTwips, twipY);
    HAL::Get(HALData::EDisplayXPixels, pixelX);
    HAL::Get(HALData::EDisplayYPixels, pixelY);
    SDL_Log("twipX = %d\ttwipY = %d\tpixelX = %d\tpixelY = %d", twipX, twipY, pixelX, pixelY);
    
    if ((twipX * twipY <= 0) || (pixelX * pixelY <= 0)) {
    	SDL_LogWarn(SDL_LOG_CATEGORY_VIDEO, "Got negative value for DPI: twipX * twipY = %d\tpixelX * pixelY = %d",
    			twipX * twipY, pixelX * pixelY);
        if (vdpi) *vdpi = 1.0f;
        return -1;
	}
    
    if (ddpi) {
        *ddpi = sqrt( (pixelX * pixelX + pixelY * pixelY) /
        		((float)(twipX * twipX)/(KTwipsPerInch * KTwipsPerInch) + //avoid int overflow
        		 (float)(twipY * twipY)/(KTwipsPerInch * KTwipsPerInch)) );
//    	SDL_Log("ddpi: %f", *ddpi);
    }
    if (hdpi) {
        *hdpi = (float)(pixelX * KTwipsPerInch) / twipX;
//    	SDL_Log("hdpi: %f", *hdpi);
    }
    if (vdpi) {
        *vdpi = (float)(pixelY * KTwipsPerInch) / twipY;
//    	SDL_Log("vdpi: %f", *vdpi);
    }
    
    if (*ddpi != 0.0f)
    	return 0;
    SDL_SetError("Couldn't get DPI");
    return -1; 
}

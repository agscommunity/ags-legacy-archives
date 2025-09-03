///////////////////////////////////////////////////////////////////////////////
// THE TWEEN MODULE ///////////////////////////////////////////////////////////
///////////////////////////////////////////////////////////////////////////////

///////////////////////////////////////////////////////////////////////////////
// SETTINGS - Feel free to change this for your game!
///////////////////////////////////////////////////////////////////////////////

// Max number of simultaneous tweens that this module can play
// Feel free to change this number, but the higher it is, the slower it might be
// So just increase or decrease it to however many you need.
#define MAX_TWEENS 8

// Default Tween Timing
#define DEFAULT_TweenTiming eLinearTween // All Tweens Except GUI and GUI element Tweens
#define DEFAULT_GUI_TweenTiming eLinearTween // For GUI and GUI element Tweens Only
#define DEFAULT_Audio_TweenTiming eLinearTween // For Audio Tweens Only

// Default Tween Style
#define DEFAULT_TweenStyle eBlockTween // All Tweens Except GUI and GUI element Tweens
#define DEFAULT_GUI_TweenStyle eBlockTween // For GUI and GUI element Tweens Only
#define DEFAULT_Audio_TweenStyle eNoBlockTween // For Audio Tweens only

// Default Stop Result
#define DEFAULT_StopResult ePauseTween // The expected behavior for stopping all tweens


///////////////////////////////////////////////////////////////////////////////
// ENUMERATIONS
///////////////////////////////////////////////////////////////////////////////

#define eLinearTween 0
#define eEaseInTween 1
#define eEaseOutTween 2
#define eEaseInEaseOutTween 3

#define eBlockTween 0
#define eNoBlockTween 1
#define eRepeatTween 2
#define eReverseRepeatTween 3

#define ePauseTween 0
#define eResetTween 1
#define eFinishTween 2

///////////////////////////////////////////////////////////////////////////////
// HANDY-DANDY UTILITY FUNCTIONS
///////////////////////////////////////////////////////////////////////////////

/// Converts number of milliseconds to number of game loops. (Part of the Tween module)
import int MillisecondsToLoops(int milliseconds);

/// Waits a number of milliseconds. (Part of the Tween module)
import function WaitMilliseconds(int milliseconds);

/// Gets the distance between two points (returns value * 1000 for fixed-point). (Part of the Tween module)
import int GetDistance(int fromX, int fromY, int toX, int toY);

///////////////////////////////////////////////////////////////////////////////
// TWEENS
///////////////////////////////////////////////////////////////////////////////

/// Stops all Tweens that are currently running.
import function TweenStopAll(int result);

/// Waits until all non-looping Tweens are finished playing.
import function WaitForTweensToStop();

import int TweenViewportX(int milliseconds, short toX, int timing, int style);
import int TweenViewportXBySpeed(int speed, short toX, int timing, int style);
import int TweenViewportY(int milliseconds, short toY, int timing, int style);
import int TweenViewportYBySpeed(int speed, short toY, int timing, int style);
import int TweenViewportPosition(int milliseconds, short toX, short toY, int timing, int style);
import int TweenViewportPositionBySpeed(int speed, short toX, short toY, int timing, int style);

import int TweenShakeScreen(int milliseconds, short fromDelay, short toDelay, short fromAmount, short toAmount, int timing, int style);
import int TweenAreaScaling(int milliseconds, int area, short fromMin, short toMin, short fromMax, short toMax, int timing, int style);

import int TweenSpeechVolume(int milliseconds, short fromVolume, short toVolume, int timing, int style);

import int TweenMusicMasterVolume(int milliseconds, short fromVolume, short toVolume, int timing, int style);
import int TweenDigitalMasterVolume(int milliseconds, short fromVolume, short toVolume, int timing, int style);
import int TweenSoundVolume(int milliseconds, short fromVolume, short toVolume, int timing, int style);
import int TweenChannelVolume(int milliseconds, int channel, short fromVolume, short toVolume, int timing, int style);

import int TweenGUIPosition(int guiID, int milliseconds, short fromX, short fromY, short toX, short toY, int timing, int style);
import int TweenGUIPositionBySpeed(int guiID, int speed, short fromX, short fromY, short toX, short toY, int timing, int style);
import int TweenGUITransparency(int guiID, int milliseconds, short fromTransparency, short toTransparency, int timing, int style);
import int TweenGUISize(int guiID, int milliseconds, short fromWidth, short fromHeight, short toWidth, short toHeight, int timing, int style);
import function TweenStopAllForGUI(int guiID, int result);

import int TweenObjectPosition(int objectID, int milliseconds, short fromX, short fromY, short toX, short toY, int timing, int style);
import int TweenObjectPositionBySpeed(int objectID, int speed, short fromX, short fromY, short toX, short toY, int timing, int style);
import int TweenObjectTransparency(int objectID, int milliseconds, short fromTransparency, short toTransparency, int timing, int style);
import int TweenObjectImage(int objectID, int tmpObjectID, int milliseconds, short toSprite, int timing, int style);
import function TweenStopAllForObject(int objectID, int result);

import int TweenCharacterPosition(int characterID, int milliseconds, short toX, short toY, int timing, int style);
import int TweenCharacterPositionBySpeed(int characterID, int speed, short toX, short toY, int timing, int style);

import int TweenCharacterTransparency(int characterID, int milliseconds, short fromTransparency, short toTransparency, int timing, int style);

import function TweenStopAllForCharacter(int characterID, int result);

import int TweenRegionLightLevel(int regionID, int milliseconds, short fromLightLevel, short toLightLevel, int timing, int style);

import function TweenStopAllForRegion(int regionID, int result);

import int TweenLabelColor(int guiID, int objectID, int milliseconds, short fromR, short fromG, short fromB, short toR, short toG, short toB, int timing, int style);
import int TweenSliderValue(int guiID, int objectID, int milliseconds, short toValue, int timing, int style);

///////////////////////////////////////////////////////////////////////////////
// END OF TWEEN MODULE ////////////////////////////////////////////////////////
///////////////////////////////////////////////////////////////////////////////

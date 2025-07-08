// Copyright Epic Games, Inc. All Rights Reserved.

#include "SpeichernGameMode.h"
#include "SpeichernCharacter.h"
#include "UObject/ConstructorHelpers.h"

ASpeichernGameMode::ASpeichernGameMode()
{
	// set default pawn class to our Blueprinted character
	static ConstructorHelpers::FClassFinder<APawn> PlayerPawnBPClass(TEXT("/Game/ThirdPerson/Blueprints/BP_ThirdPersonCharacter"));
	if (PlayerPawnBPClass.Class != NULL)
	{
		DefaultPawnClass = PlayerPawnBPClass.Class;
	}
}

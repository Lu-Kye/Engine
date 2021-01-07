#pragma once

#include "Interface.hpp"
#include "IRuntimeModule.hpp"

namespace My 
{
    Interface IApplication : implements IRuntimeModule 
    {
public:
        virtual ~IApplication() {};

        virtual int Initialize() = 0;
        virtual void Finalize() = 0;
        virtual void Tick() = 0;

        // Used to check is it time to quit
        virtual bool IsQuit() = 0;
    };
}


; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/Genesis-Plus-GX/PVGenesis/Genesis/GenesisCore/genplusgx_source/win/extr_main.c_sdl_sync_init.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/Genesis-Plus-GX/PVGenesis/Genesis/GenesisCore/genplusgx_source/win/extr_main.c_sdl_sync_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64, i32 }

@SDL_INIT_TIMER = common dso_local global i32 0, align 4
@SDL_INIT_EVENTTHREAD = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [32 x i8] c"SDL Timer initialization failed\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"Error\00", align 1
@sdl_sync = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @sdl_sync_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sdl_sync_init() #0 {
  %1 = alloca i32, align 4
  %2 = load i32, i32* @SDL_INIT_TIMER, align 4
  %3 = load i32, i32* @SDL_INIT_EVENTTHREAD, align 4
  %4 = or i32 %2, %3
  %5 = call i64 @SDL_InitSubSystem(i32 %4)
  %6 = icmp slt i64 %5, 0
  br i1 %6, label %7, label %9

7:                                                ; preds = %0
  %8 = call i32 @MessageBox(i32* null, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i32 0)
  store i32 0, i32* %1, align 4
  br label %11

9:                                                ; preds = %0
  %10 = call i32 @SDL_CreateSemaphore(i32 0)
  store i32 %10, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @sdl_sync, i32 0, i32 1), align 8
  store i64 0, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @sdl_sync, i32 0, i32 0), align 8
  store i32 1, i32* %1, align 4
  br label %11

11:                                               ; preds = %9, %7
  %12 = load i32, i32* %1, align 4
  ret i32 %12
}

declare dso_local i64 @SDL_InitSubSystem(i32) #1

declare dso_local i32 @MessageBox(i32*, i8*, i8*, i32) #1

declare dso_local i32 @SDL_CreateSemaphore(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

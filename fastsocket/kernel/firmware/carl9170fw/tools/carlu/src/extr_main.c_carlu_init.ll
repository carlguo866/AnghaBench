; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/firmware/carl9170fw/tools/carlu/src/extr_main.c_carlu_init.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/firmware/carl9170fw/tools/carlu/src/extr_main.c_carlu_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.SDL_version = type { i32, i32, i32 }

@.str = private unnamed_addr constant [22 x i8] c"=== SDL %d.%d.%d ===\0A\00", align 1
@SDL_INIT_TIMER = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [32 x i8] c"Unable to initialize SDL: (%s)\0A\00", align 1
@EXIT_FAILURE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @carlu_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @carlu_init() #0 {
  %1 = alloca i32, align 4
  %2 = alloca %struct.SDL_version, align 4
  %3 = alloca i32, align 4
  %4 = call i32 @SDL_VERSION(%struct.SDL_version* %2)
  %5 = getelementptr inbounds %struct.SDL_version, %struct.SDL_version* %2, i32 0, i32 2
  %6 = load i32, i32* %5, align 4
  %7 = getelementptr inbounds %struct.SDL_version, %struct.SDL_version* %2, i32 0, i32 1
  %8 = load i32, i32* %7, align 4
  %9 = getelementptr inbounds %struct.SDL_version, %struct.SDL_version* %2, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = call i32 @dbg(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i32 %6, i32 %8, i32 %10)
  %12 = load i32, i32* @SDL_INIT_TIMER, align 4
  %13 = call i32 @SDL_Init(i32 %12)
  store i32 %13, i32* %3, align 4
  %14 = load i32, i32* %3, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %20

16:                                               ; preds = %0
  %17 = call i32 (...) @SDL_GetError()
  %18 = call i32 @err(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0), i32 %17)
  %19 = load i32, i32* @EXIT_FAILURE, align 4
  store i32 %19, i32* %1, align 4
  br label %22

20:                                               ; preds = %0
  %21 = call i32 (...) @usb_init()
  store i32 %21, i32* %1, align 4
  br label %22

22:                                               ; preds = %20, %16
  %23 = load i32, i32* %1, align 4
  ret i32 %23
}

declare dso_local i32 @SDL_VERSION(%struct.SDL_version*) #1

declare dso_local i32 @dbg(i8*, i32, i32, i32) #1

declare dso_local i32 @SDL_Init(i32) #1

declare dso_local i32 @err(i8*, i32) #1

declare dso_local i32 @SDL_GetError(...) #1

declare dso_local i32 @usb_init(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

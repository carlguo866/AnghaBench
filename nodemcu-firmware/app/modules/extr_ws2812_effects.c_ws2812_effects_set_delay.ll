; ModuleID = '/home/carl/AnghaBench/nodemcu-firmware/app/modules/extr_ws2812_effects.c_ws2812_effects_set_delay.c'
source_filename = "/home/carl/AnghaBench/nodemcu-firmware/app/modules/extr_ws2812_effects.c_ws2812_effects_set_delay.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i64 }

@state = common dso_local global %struct.TYPE_2__* null, align 8
@LIBRARY_NOT_INITIALIZED_ERROR_MSG = common dso_local global i8* null, align 8
@.str = private unnamed_addr constant [31 x i8] c"must be equal / larger than 10\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*)* @ws2812_effects_set_delay to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ws2812_effects_set_delay(i32* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca i32, align 4
  store i32* %0, i32** %2, align 8
  %4 = load i32*, i32** %2, align 8
  %5 = load %struct.TYPE_2__*, %struct.TYPE_2__** @state, align 8
  %6 = icmp ne %struct.TYPE_2__* %5, null
  %7 = zext i1 %6 to i32
  %8 = load i8*, i8** @LIBRARY_NOT_INITIALIZED_ERROR_MSG, align 8
  %9 = call i32 @luaL_argcheck(i32* %4, i32 %7, i32 1, i8* %8)
  %10 = load i32*, i32** %2, align 8
  %11 = call i32 @luaL_checkinteger(i32* %10, i32 1)
  store i32 %11, i32* %3, align 4
  %12 = load i32*, i32** %2, align 8
  %13 = load i32, i32* %3, align 4
  %14 = icmp sge i32 %13, 10
  %15 = zext i1 %14 to i32
  %16 = call i32 @luaL_argcheck(i32* %12, i32 %15, i32 1, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0))
  %17 = load i32, i32* %3, align 4
  %18 = load %struct.TYPE_2__*, %struct.TYPE_2__** @state, align 8
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 0
  store i32 %17, i32* %19, align 8
  %20 = load %struct.TYPE_2__*, %struct.TYPE_2__** @state, align 8
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 1
  store i64 0, i64* %21, align 8
  ret i32 1
}

declare dso_local i32 @luaL_argcheck(i32*, i32, i32, i8*) #1

declare dso_local i32 @luaL_checkinteger(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

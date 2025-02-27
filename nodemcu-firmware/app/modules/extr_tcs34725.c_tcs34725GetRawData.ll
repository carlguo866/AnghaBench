; ModuleID = '/home/carl/AnghaBench/nodemcu-firmware/app/modules/extr_tcs34725.c_tcs34725GetRawData.c'
source_filename = "/home/carl/AnghaBench/nodemcu-firmware/app/modules/extr_tcs34725.c_tcs34725GetRawData.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@_tcs34725Initialised = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [26 x i8] c"TCS34725 not initialised.\00", align 1
@TCS34725_CDATAL = common dso_local global i32 0, align 4
@TCS34725_RDATAL = common dso_local global i32 0, align 4
@TCS34725_GDATAL = common dso_local global i32 0, align 4
@TCS34725_BDATAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @tcs34725GetRawData(i32* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i32* %0, i32** %3, align 8
  %8 = load i32, i32* @_tcs34725Initialised, align 4
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %13, label %10

10:                                               ; preds = %1
  %11 = load i32*, i32** %3, align 8
  %12 = call i32 @luaL_error(i32* %11, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0))
  store i32 %12, i32* %2, align 4
  br label %34

13:                                               ; preds = %1
  %14 = load i32, i32* @TCS34725_CDATAL, align 4
  %15 = call i32 @tcs34725Read16(i32 %14)
  store i32 %15, i32* %7, align 4
  %16 = load i32, i32* @TCS34725_RDATAL, align 4
  %17 = call i32 @tcs34725Read16(i32 %16)
  store i32 %17, i32* %4, align 4
  %18 = load i32, i32* @TCS34725_GDATAL, align 4
  %19 = call i32 @tcs34725Read16(i32 %18)
  store i32 %19, i32* %5, align 4
  %20 = load i32, i32* @TCS34725_BDATAL, align 4
  %21 = call i32 @tcs34725Read16(i32 %20)
  store i32 %21, i32* %6, align 4
  %22 = load i32*, i32** %3, align 8
  %23 = load i32, i32* %7, align 4
  %24 = call i32 @lua_pushinteger(i32* %22, i32 %23)
  %25 = load i32*, i32** %3, align 8
  %26 = load i32, i32* %4, align 4
  %27 = call i32 @lua_pushinteger(i32* %25, i32 %26)
  %28 = load i32*, i32** %3, align 8
  %29 = load i32, i32* %5, align 4
  %30 = call i32 @lua_pushinteger(i32* %28, i32 %29)
  %31 = load i32*, i32** %3, align 8
  %32 = load i32, i32* %6, align 4
  %33 = call i32 @lua_pushinteger(i32* %31, i32 %32)
  store i32 4, i32* %2, align 4
  br label %34

34:                                               ; preds = %13, %10
  %35 = load i32, i32* %2, align 4
  ret i32 %35
}

declare dso_local i32 @luaL_error(i32*, i8*) #1

declare dso_local i32 @tcs34725Read16(i32) #1

declare dso_local i32 @lua_pushinteger(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

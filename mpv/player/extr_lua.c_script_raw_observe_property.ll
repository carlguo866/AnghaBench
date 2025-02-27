; ModuleID = '/home/carl/AnghaBench/mpv/player/extr_lua.c_script_raw_observe_property.c'
source_filename = "/home/carl/AnghaBench/mpv/player/extr_lua.c_script_raw_observe_property.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.script_ctx = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*)* @script_raw_observe_property to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @script_raw_observe_property(i32* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca %struct.script_ctx*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  store i32* %0, i32** %2, align 8
  %7 = load i32*, i32** %2, align 8
  %8 = call %struct.script_ctx* @get_ctx(i32* %7)
  store %struct.script_ctx* %8, %struct.script_ctx** %3, align 8
  %9 = load i32*, i32** %2, align 8
  %10 = call i32 @luaL_checknumber(i32* %9, i32 1)
  store i32 %10, i32* %4, align 4
  %11 = load i32*, i32** %2, align 8
  %12 = call i8* @luaL_checkstring(i32* %11, i32 2)
  store i8* %12, i8** %5, align 8
  %13 = load i32*, i32** %2, align 8
  %14 = call i32 @check_property_format(i32* %13, i32 3)
  store i32 %14, i32* %6, align 4
  %15 = load i32*, i32** %2, align 8
  %16 = load %struct.script_ctx*, %struct.script_ctx** %3, align 8
  %17 = getelementptr inbounds %struct.script_ctx, %struct.script_ctx* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = load i32, i32* %4, align 4
  %20 = load i8*, i8** %5, align 8
  %21 = load i32, i32* %6, align 4
  %22 = call i32 @mpv_observe_property(i32 %18, i32 %19, i8* %20, i32 %21)
  %23 = call i32 @check_error(i32* %15, i32 %22)
  ret i32 %23
}

declare dso_local %struct.script_ctx* @get_ctx(i32*) #1

declare dso_local i32 @luaL_checknumber(i32*, i32) #1

declare dso_local i8* @luaL_checkstring(i32*, i32) #1

declare dso_local i32 @check_property_format(i32*, i32) #1

declare dso_local i32 @check_error(i32*, i32) #1

declare dso_local i32 @mpv_observe_property(i32, i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

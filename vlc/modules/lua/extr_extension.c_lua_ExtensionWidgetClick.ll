; ModuleID = '/home/carl/AnghaBench/vlc/modules/lua/extr_extension.c_lua_ExtensionWidgetClick.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/lua/extr_extension.c_lua_ExtensionWidgetClick.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i32 }

@VLC_SUCCESS = common dso_local global i32 0, align 4
@LUA_REGISTRYINDEX = common dso_local global i32 0, align 4
@LUA_END = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @lua_ExtensionWidgetClick(i32* %0, %struct.TYPE_7__* %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca %struct.TYPE_7__*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  store i32* %0, i32** %5, align 8
  store %struct.TYPE_7__* %1, %struct.TYPE_7__** %6, align 8
  store i32* %2, i32** %7, align 8
  %9 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %10 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %9, i32 0, i32 0
  %11 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %17, label %15

15:                                               ; preds = %3
  %16 = load i32, i32* @VLC_SUCCESS, align 4
  store i32 %16, i32* %4, align 4
  br label %31

17:                                               ; preds = %3
  %18 = load i32*, i32** %5, align 8
  %19 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %20 = call i32* @GetLuaState(i32* %18, %struct.TYPE_7__* %19)
  store i32* %20, i32** %8, align 8
  %21 = load i32*, i32** %8, align 8
  %22 = load i32*, i32** %7, align 8
  %23 = call i32 @lua_pushlightuserdata(i32* %21, i32* %22)
  %24 = load i32*, i32** %8, align 8
  %25 = load i32, i32* @LUA_REGISTRYINDEX, align 4
  %26 = call i32 @lua_gettable(i32* %24, i32 %25)
  %27 = load i32*, i32** %5, align 8
  %28 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %29 = load i32, i32* @LUA_END, align 4
  %30 = call i32 @lua_ExecuteFunction(i32* %27, %struct.TYPE_7__* %28, i32* null, i32 %29)
  store i32 %30, i32* %4, align 4
  br label %31

31:                                               ; preds = %17, %15
  %32 = load i32, i32* %4, align 4
  ret i32 %32
}

declare dso_local i32* @GetLuaState(i32*, %struct.TYPE_7__*) #1

declare dso_local i32 @lua_pushlightuserdata(i32*, i32*) #1

declare dso_local i32 @lua_gettable(i32*, i32) #1

declare dso_local i32 @lua_ExecuteFunction(i32*, %struct.TYPE_7__*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

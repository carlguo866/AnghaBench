; ModuleID = '/home/carl/AnghaBench/nodemcu-firmware/app/lua/extr_ldblib.c_gethooktable.c'
source_filename = "/home/carl/AnghaBench/nodemcu-firmware/app/lua/extr_ldblib.c_gethooktable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@KEY_HOOK = common dso_local global i32 0, align 4
@LUA_REGISTRYINDEX = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*)* @gethooktable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @gethooktable(i32* %0) #0 {
  %2 = alloca i32*, align 8
  store i32* %0, i32** %2, align 8
  %3 = load i32*, i32** %2, align 8
  %4 = call i32 @lua_pushlightuserdata(i32* %3, i8* bitcast (i32* @KEY_HOOK to i8*))
  %5 = load i32*, i32** %2, align 8
  %6 = load i32, i32* @LUA_REGISTRYINDEX, align 4
  %7 = call i32 @lua_rawget(i32* %5, i32 %6)
  %8 = load i32*, i32** %2, align 8
  %9 = call i32 @lua_istable(i32* %8, i32 -1)
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %23, label %11

11:                                               ; preds = %1
  %12 = load i32*, i32** %2, align 8
  %13 = call i32 @lua_pop(i32* %12, i32 1)
  %14 = load i32*, i32** %2, align 8
  %15 = call i32 @lua_createtable(i32* %14, i32 0, i32 1)
  %16 = load i32*, i32** %2, align 8
  %17 = call i32 @lua_pushlightuserdata(i32* %16, i8* bitcast (i32* @KEY_HOOK to i8*))
  %18 = load i32*, i32** %2, align 8
  %19 = call i32 @lua_pushvalue(i32* %18, i32 -2)
  %20 = load i32*, i32** %2, align 8
  %21 = load i32, i32* @LUA_REGISTRYINDEX, align 4
  %22 = call i32 @lua_rawset(i32* %20, i32 %21)
  br label %23

23:                                               ; preds = %11, %1
  ret void
}

declare dso_local i32 @lua_pushlightuserdata(i32*, i8*) #1

declare dso_local i32 @lua_rawget(i32*, i32) #1

declare dso_local i32 @lua_istable(i32*, i32) #1

declare dso_local i32 @lua_pop(i32*, i32) #1

declare dso_local i32 @lua_createtable(i32*, i32, i32) #1

declare dso_local i32 @lua_pushvalue(i32*, i32) #1

declare dso_local i32 @lua_rawset(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

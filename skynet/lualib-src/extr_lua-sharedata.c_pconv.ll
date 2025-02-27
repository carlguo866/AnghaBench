; ModuleID = '/home/carl/AnghaBench/skynet/lualib-src/extr_lua-sharedata.c_pconv.c'
source_filename = "/home/carl/AnghaBench/skynet/lualib-src/extr_lua-sharedata.c_pconv.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.context = type { i64 }

@convtable = common dso_local global i32 0, align 4
@LUA_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*)* @pconv to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pconv(i32* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca %struct.context*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i8*, align 8
  store i32* %0, i32** %2, align 8
  %8 = load i32*, i32** %2, align 8
  %9 = call i8* @lua_touserdata(i32* %8, i32 1)
  %10 = bitcast i8* %9 to %struct.context*
  store %struct.context* %10, %struct.context** %3, align 8
  %11 = load i32*, i32** %2, align 8
  %12 = call i8* @lua_touserdata(i32* %11, i32 2)
  %13 = bitcast i8* %12 to i32*
  store i32* %13, i32** %4, align 8
  %14 = load i32*, i32** %2, align 8
  %15 = call i32 @lua_settop(i32* %14, i32 0)
  %16 = load i32*, i32** %2, align 8
  %17 = call i32 @lua_newtable(i32* %16)
  %18 = load i32*, i32** %4, align 8
  %19 = load i32, i32* @convtable, align 4
  %20 = call i32 @lua_pushcfunction(i32* %18, i32 %19)
  %21 = load i32*, i32** %4, align 8
  %22 = call i32 @lua_pushvalue(i32* %21, i32 1)
  %23 = load i32*, i32** %4, align 8
  %24 = load %struct.context*, %struct.context** %3, align 8
  %25 = call i32 @lua_pushlightuserdata(i32* %23, %struct.context* %24)
  %26 = load i32*, i32** %4, align 8
  %27 = call i32 @lua_pcall(i32* %26, i32 2, i32 0, i32 0)
  store i32 %27, i32* %5, align 4
  %28 = load i32, i32* %5, align 4
  %29 = load i32, i32* @LUA_OK, align 4
  %30 = icmp ne i32 %28, %29
  br i1 %30, label %31, label %40

31:                                               ; preds = %1
  store i64 0, i64* %6, align 8
  %32 = load i32*, i32** %4, align 8
  %33 = call i8* @lua_tolstring(i32* %32, i32 -1, i64* %6)
  store i8* %33, i8** %7, align 8
  %34 = load i32*, i32** %2, align 8
  %35 = load i8*, i8** %7, align 8
  %36 = load i64, i64* %6, align 8
  %37 = call i32 @lua_pushlstring(i32* %34, i8* %35, i64 %36)
  %38 = load i32*, i32** %2, align 8
  %39 = call i32 @lua_error(i32* %38)
  br label %40

40:                                               ; preds = %31, %1
  %41 = load i32*, i32** %2, align 8
  %42 = load %struct.context*, %struct.context** %3, align 8
  %43 = getelementptr inbounds %struct.context, %struct.context* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = add nsw i64 %44, 3
  %46 = call i32 @luaL_checkstack(i32* %41, i64 %45, i32* null)
  %47 = load i32*, i32** %2, align 8
  %48 = call i32 @lua_settop(i32* %47, i32 1)
  ret i32 1
}

declare dso_local i8* @lua_touserdata(i32*, i32) #1

declare dso_local i32 @lua_settop(i32*, i32) #1

declare dso_local i32 @lua_newtable(i32*) #1

declare dso_local i32 @lua_pushcfunction(i32*, i32) #1

declare dso_local i32 @lua_pushvalue(i32*, i32) #1

declare dso_local i32 @lua_pushlightuserdata(i32*, %struct.context*) #1

declare dso_local i32 @lua_pcall(i32*, i32, i32, i32) #1

declare dso_local i8* @lua_tolstring(i32*, i32, i64*) #1

declare dso_local i32 @lua_pushlstring(i32*, i8*, i64) #1

declare dso_local i32 @lua_error(i32*) #1

declare dso_local i32 @luaL_checkstack(i32*, i64, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

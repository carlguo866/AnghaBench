; ModuleID = '/home/carl/AnghaBench/xLua/build/luajit-2.1.0b3/src/extr_lib_package.c_mksymname.c'
source_filename = "/home/carl/AnghaBench/xLua/build/luajit-2.1.0b3/src/extr_lib_package.c_mksymname.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@LUA_IGMARK = common dso_local global i32* null, align 8
@.str = private unnamed_addr constant [2 x i8] c".\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"_\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i32*, i8*, i8*)* @mksymname to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @mksymname(i32* %0, i8* %1, i8* %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  store i32* %0, i32** %4, align 8
  store i8* %1, i8** %5, align 8
  store i8* %2, i8** %6, align 8
  %9 = load i8*, i8** %5, align 8
  %10 = load i32*, i32** @LUA_IGMARK, align 8
  %11 = load i32, i32* %10, align 4
  %12 = call i8* @strchr(i8* %9, i32 %11)
  store i8* %12, i8** %8, align 8
  %13 = load i8*, i8** %8, align 8
  %14 = icmp ne i8* %13, null
  br i1 %14, label %15, label %18

15:                                               ; preds = %3
  %16 = load i8*, i8** %8, align 8
  %17 = getelementptr inbounds i8, i8* %16, i64 1
  store i8* %17, i8** %5, align 8
  br label %18

18:                                               ; preds = %15, %3
  %19 = load i32*, i32** %4, align 8
  %20 = load i8*, i8** %5, align 8
  %21 = call i8* @luaL_gsub(i32* %19, i8* %20, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  store i8* %21, i8** %7, align 8
  %22 = load i32*, i32** %4, align 8
  %23 = load i8*, i8** %6, align 8
  %24 = load i8*, i8** %7, align 8
  %25 = call i8* @lua_pushfstring(i32* %22, i8* %23, i8* %24)
  store i8* %25, i8** %7, align 8
  %26 = load i32*, i32** %4, align 8
  %27 = call i32 @lua_remove(i32* %26, i32 -2)
  %28 = load i8*, i8** %7, align 8
  ret i8* %28
}

declare dso_local i8* @strchr(i8*, i32) #1

declare dso_local i8* @luaL_gsub(i32*, i8*, i8*, i8*) #1

declare dso_local i8* @lua_pushfstring(i32*, i8*, i8*) #1

declare dso_local i32 @lua_remove(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

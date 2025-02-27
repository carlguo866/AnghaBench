; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/lua/src/extr_lua.c_docall.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/lua/src/extr_lua.c_docall.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@msghandler = common dso_local global i32 0, align 4
@globalL = common dso_local global i32* null, align 8
@SIGINT = common dso_local global i32 0, align 4
@laction = common dso_local global i32 0, align 4
@SIG_DFL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32, i32)* @docall to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @docall(i32* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i32* %0, i32** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %9 = load i32*, i32** %4, align 8
  %10 = call i32 @lua_gettop(i32* %9)
  %11 = load i32, i32* %5, align 4
  %12 = sub nsw i32 %10, %11
  store i32 %12, i32* %8, align 4
  %13 = load i32*, i32** %4, align 8
  %14 = load i32, i32* @msghandler, align 4
  %15 = call i32 @lua_pushcfunction(i32* %13, i32 %14)
  %16 = load i32*, i32** %4, align 8
  %17 = load i32, i32* %8, align 4
  %18 = call i32 @lua_insert(i32* %16, i32 %17)
  %19 = load i32*, i32** %4, align 8
  store i32* %19, i32** @globalL, align 8
  %20 = load i32, i32* @SIGINT, align 4
  %21 = load i32, i32* @laction, align 4
  %22 = call i32 @signal(i32 %20, i32 %21)
  %23 = load i32*, i32** %4, align 8
  %24 = load i32, i32* %5, align 4
  %25 = load i32, i32* %6, align 4
  %26 = load i32, i32* %8, align 4
  %27 = call i32 @lua_pcall(i32* %23, i32 %24, i32 %25, i32 %26)
  store i32 %27, i32* %7, align 4
  %28 = load i32, i32* @SIGINT, align 4
  %29 = load i32, i32* @SIG_DFL, align 4
  %30 = call i32 @signal(i32 %28, i32 %29)
  %31 = load i32*, i32** %4, align 8
  %32 = load i32, i32* %8, align 4
  %33 = call i32 @lua_remove(i32* %31, i32 %32)
  %34 = load i32, i32* %7, align 4
  ret i32 %34
}

declare dso_local i32 @lua_gettop(i32*) #1

declare dso_local i32 @lua_pushcfunction(i32*, i32) #1

declare dso_local i32 @lua_insert(i32*, i32) #1

declare dso_local i32 @signal(i32, i32) #1

declare dso_local i32 @lua_pcall(i32*, i32, i32, i32) #1

declare dso_local i32 @lua_remove(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/redis/deps/lua/src/extr_lauxlib.c_errfile.c'
source_filename = "/home/carl/AnghaBench/redis/deps/lua/src/extr_lauxlib.c_errfile.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@errno = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [17 x i8] c"cannot %s %s: %s\00", align 1
@LUA_ERRFILE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i8*, i32)* @errfile to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @errfile(i32* %0, i8* %1, i32 %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  store i32* %0, i32** %4, align 8
  store i8* %1, i8** %5, align 8
  store i32 %2, i32* %6, align 4
  %9 = load i32, i32* @errno, align 4
  %10 = call i8* @strerror(i32 %9)
  store i8* %10, i8** %7, align 8
  %11 = load i32*, i32** %4, align 8
  %12 = load i32, i32* %6, align 4
  %13 = call i8* @lua_tostring(i32* %11, i32 %12)
  %14 = getelementptr inbounds i8, i8* %13, i64 1
  store i8* %14, i8** %8, align 8
  %15 = load i32*, i32** %4, align 8
  %16 = load i8*, i8** %5, align 8
  %17 = load i8*, i8** %8, align 8
  %18 = load i8*, i8** %7, align 8
  %19 = call i32 @lua_pushfstring(i32* %15, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0), i8* %16, i8* %17, i8* %18)
  %20 = load i32*, i32** %4, align 8
  %21 = load i32, i32* %6, align 4
  %22 = call i32 @lua_remove(i32* %20, i32 %21)
  %23 = load i32, i32* @LUA_ERRFILE, align 4
  ret i32 %23
}

declare dso_local i8* @strerror(i32) #1

declare dso_local i8* @lua_tostring(i32*, i32) #1

declare dso_local i32 @lua_pushfstring(i32*, i8*, i8*, i8*, i8*) #1

declare dso_local i32 @lua_remove(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

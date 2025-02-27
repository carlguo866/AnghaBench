; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/lua/src/extr_lua.c_doREPL.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/lua/src/extr_lua.c_doREPL.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@progname = common dso_local global i8* null, align 8
@LUA_OK = common dso_local global i32 0, align 4
@LUA_MULTRET = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*)* @doREPL to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @doREPL(i32* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  store i32* %0, i32** %2, align 8
  %5 = load i8*, i8** @progname, align 8
  store i8* %5, i8** %4, align 8
  store i8* null, i8** @progname, align 8
  br label %6

6:                                                ; preds = %29, %1
  %7 = load i32*, i32** %2, align 8
  %8 = call i32 @loadline(i32* %7)
  store i32 %8, i32* %3, align 4
  %9 = icmp ne i32 %8, -1
  br i1 %9, label %10, label %30

10:                                               ; preds = %6
  %11 = load i32, i32* %3, align 4
  %12 = load i32, i32* @LUA_OK, align 4
  %13 = icmp eq i32 %11, %12
  br i1 %13, label %14, label %18

14:                                               ; preds = %10
  %15 = load i32*, i32** %2, align 8
  %16 = load i32, i32* @LUA_MULTRET, align 4
  %17 = call i32 @docall(i32* %15, i32 0, i32 %16)
  store i32 %17, i32* %3, align 4
  br label %18

18:                                               ; preds = %14, %10
  %19 = load i32, i32* %3, align 4
  %20 = load i32, i32* @LUA_OK, align 4
  %21 = icmp eq i32 %19, %20
  br i1 %21, label %22, label %25

22:                                               ; preds = %18
  %23 = load i32*, i32** %2, align 8
  %24 = call i32 @l_print(i32* %23)
  br label %29

25:                                               ; preds = %18
  %26 = load i32*, i32** %2, align 8
  %27 = load i32, i32* %3, align 4
  %28 = call i32 @report(i32* %26, i32 %27)
  br label %29

29:                                               ; preds = %25, %22
  br label %6

30:                                               ; preds = %6
  %31 = load i32*, i32** %2, align 8
  %32 = call i32 @lua_settop(i32* %31, i32 0)
  %33 = call i32 (...) @lua_writeline()
  %34 = load i8*, i8** %4, align 8
  store i8* %34, i8** @progname, align 8
  ret void
}

declare dso_local i32 @loadline(i32*) #1

declare dso_local i32 @docall(i32*, i32, i32) #1

declare dso_local i32 @l_print(i32*) #1

declare dso_local i32 @report(i32*, i32) #1

declare dso_local i32 @lua_settop(i32*, i32) #1

declare dso_local i32 @lua_writeline(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

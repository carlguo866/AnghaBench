; ModuleID = '/home/carl/AnghaBench/xLua/build/lua-5.3.3/src/extr_lua.c_incomplete.c'
source_filename = "/home/carl/AnghaBench/xLua/build/lua-5.3.3/src/extr_lua.c_incomplete.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@LUA_ERRSYNTAX = common dso_local global i32 0, align 4
@marklen = common dso_local global i64 0, align 8
@EOFMARK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32)* @incomplete to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @incomplete(i32* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i8*, align 8
  store i32* %0, i32** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = load i32, i32* %5, align 4
  %9 = load i32, i32* @LUA_ERRSYNTAX, align 4
  %10 = icmp eq i32 %8, %9
  br i1 %10, label %11, label %31

11:                                               ; preds = %2
  %12 = load i32*, i32** %4, align 8
  %13 = call i8* @lua_tolstring(i32* %12, i32 -1, i64* %6)
  store i8* %13, i8** %7, align 8
  %14 = load i64, i64* %6, align 8
  %15 = load i64, i64* @marklen, align 8
  %16 = icmp uge i64 %14, %15
  br i1 %16, label %17, label %30

17:                                               ; preds = %11
  %18 = load i8*, i8** %7, align 8
  %19 = load i64, i64* %6, align 8
  %20 = getelementptr inbounds i8, i8* %18, i64 %19
  %21 = load i64, i64* @marklen, align 8
  %22 = sub i64 0, %21
  %23 = getelementptr inbounds i8, i8* %20, i64 %22
  %24 = load i32, i32* @EOFMARK, align 4
  %25 = call i64 @strcmp(i8* %23, i32 %24)
  %26 = icmp eq i64 %25, 0
  br i1 %26, label %27, label %30

27:                                               ; preds = %17
  %28 = load i32*, i32** %4, align 8
  %29 = call i32 @lua_pop(i32* %28, i32 1)
  store i32 1, i32* %3, align 4
  br label %32

30:                                               ; preds = %17, %11
  br label %31

31:                                               ; preds = %30, %2
  store i32 0, i32* %3, align 4
  br label %32

32:                                               ; preds = %31, %27
  %33 = load i32, i32* %3, align 4
  ret i32 %33
}

declare dso_local i8* @lua_tolstring(i32*, i32, i64*) #1

declare dso_local i64 @strcmp(i8*, i32) #1

declare dso_local i32 @lua_pop(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

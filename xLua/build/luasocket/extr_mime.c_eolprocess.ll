; ModuleID = '/home/carl/AnghaBench/xLua/build/luasocket/extr_mime.c_eolprocess.c'
source_filename = "/home/carl/AnghaBench/xLua/build/luasocket/extr_mime.c_eolprocess.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, i8*, i32*)* @eolprocess to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @eolprocess(i32 %0, i32 %1, i8* %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i32*, align 8
  store i32 %0, i32* %6, align 4
  store i32 %1, i32* %7, align 4
  store i8* %2, i8** %8, align 8
  store i32* %3, i32** %9, align 8
  %10 = load i32, i32* %6, align 4
  %11 = call i64 @eolcandidate(i32 %10)
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %31

13:                                               ; preds = %4
  %14 = load i32, i32* %7, align 4
  %15 = call i64 @eolcandidate(i32 %14)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %26

17:                                               ; preds = %13
  %18 = load i32, i32* %6, align 4
  %19 = load i32, i32* %7, align 4
  %20 = icmp eq i32 %18, %19
  br i1 %20, label %21, label %25

21:                                               ; preds = %17
  %22 = load i32*, i32** %9, align 8
  %23 = load i8*, i8** %8, align 8
  %24 = call i32 @luaL_addstring(i32* %22, i8* %23)
  br label %25

25:                                               ; preds = %21, %17
  store i32 0, i32* %5, align 4
  br label %36

26:                                               ; preds = %13
  %27 = load i32*, i32** %9, align 8
  %28 = load i8*, i8** %8, align 8
  %29 = call i32 @luaL_addstring(i32* %27, i8* %28)
  %30 = load i32, i32* %6, align 4
  store i32 %30, i32* %5, align 4
  br label %36

31:                                               ; preds = %4
  %32 = load i32*, i32** %9, align 8
  %33 = load i32, i32* %6, align 4
  %34 = trunc i32 %33 to i8
  %35 = call i32 @luaL_addchar(i32* %32, i8 signext %34)
  store i32 0, i32* %5, align 4
  br label %36

36:                                               ; preds = %31, %26, %25
  %37 = load i32, i32* %5, align 4
  ret i32 %37
}

declare dso_local i64 @eolcandidate(i32) #1

declare dso_local i32 @luaL_addstring(i32*, i8*) #1

declare dso_local i32 @luaL_addchar(i32*, i8 signext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/nodemcu-firmware/app/lua/extr_lcode.c_luaK_concat.c'
source_filename = "/home/carl/AnghaBench/nodemcu-firmware/app/lua/extr_lcode.c_luaK_concat.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@NO_JUMP = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @luaK_concat(i32* %0, i32* %1, i32 %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i32* %0, i32** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32 %2, i32* %6, align 4
  %9 = load i32, i32* %6, align 4
  %10 = load i32, i32* @NO_JUMP, align 4
  %11 = icmp eq i32 %9, %10
  br i1 %11, label %12, label %13

12:                                               ; preds = %3
  br label %38

13:                                               ; preds = %3
  %14 = load i32*, i32** %5, align 8
  %15 = load i32, i32* %14, align 4
  %16 = load i32, i32* @NO_JUMP, align 4
  %17 = icmp eq i32 %15, %16
  br i1 %17, label %18, label %21

18:                                               ; preds = %13
  %19 = load i32, i32* %6, align 4
  %20 = load i32*, i32** %5, align 8
  store i32 %19, i32* %20, align 4
  br label %37

21:                                               ; preds = %13
  %22 = load i32*, i32** %5, align 8
  %23 = load i32, i32* %22, align 4
  store i32 %23, i32* %7, align 4
  br label %24

24:                                               ; preds = %30, %21
  %25 = load i32*, i32** %4, align 8
  %26 = load i32, i32* %7, align 4
  %27 = call i32 @getjump(i32* %25, i32 %26)
  store i32 %27, i32* %8, align 4
  %28 = load i32, i32* @NO_JUMP, align 4
  %29 = icmp ne i32 %27, %28
  br i1 %29, label %30, label %32

30:                                               ; preds = %24
  %31 = load i32, i32* %8, align 4
  store i32 %31, i32* %7, align 4
  br label %24

32:                                               ; preds = %24
  %33 = load i32*, i32** %4, align 8
  %34 = load i32, i32* %7, align 4
  %35 = load i32, i32* %6, align 4
  %36 = call i32 @fixjump(i32* %33, i32 %34, i32 %35)
  br label %37

37:                                               ; preds = %32, %18
  br label %38

38:                                               ; preds = %12, %37
  ret void
}

declare dso_local i32 @getjump(i32*, i32) #1

declare dso_local i32 @fixjump(i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

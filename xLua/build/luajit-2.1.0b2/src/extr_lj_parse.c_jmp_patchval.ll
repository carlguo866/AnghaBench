; ModuleID = '/home/carl/AnghaBench/xLua/build/luajit-2.1.0b2/src/extr_lj_parse.c_jmp_patchval.c'
source_filename = "/home/carl/AnghaBench/xLua/build/luajit-2.1.0b2/src/extr_lj_parse.c_jmp_patchval.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@NO_JMP = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i64, i64, i32, i64)* @jmp_patchval to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @jmp_patchval(i32* %0, i64 %1, i64 %2, i32 %3, i64 %4) #0 {
  %6 = alloca i32*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  store i32* %0, i32** %6, align 8
  store i64 %1, i64* %7, align 8
  store i64 %2, i64* %8, align 8
  store i32 %3, i32* %9, align 4
  store i64 %4, i64* %10, align 8
  br label %12

12:                                               ; preds = %35, %5
  %13 = load i64, i64* %7, align 8
  %14 = load i64, i64* @NO_JMP, align 8
  %15 = icmp ne i64 %13, %14
  br i1 %15, label %16, label %37

16:                                               ; preds = %12
  %17 = load i32*, i32** %6, align 8
  %18 = load i64, i64* %7, align 8
  %19 = call i64 @jmp_next(i32* %17, i64 %18)
  store i64 %19, i64* %11, align 8
  %20 = load i32*, i32** %6, align 8
  %21 = load i64, i64* %7, align 8
  %22 = load i32, i32* %9, align 4
  %23 = call i64 @jmp_patchtestreg(i32* %20, i64 %21, i32 %22)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %30

25:                                               ; preds = %16
  %26 = load i32*, i32** %6, align 8
  %27 = load i64, i64* %7, align 8
  %28 = load i64, i64* %8, align 8
  %29 = call i32 @jmp_patchins(i32* %26, i64 %27, i64 %28)
  br label %35

30:                                               ; preds = %16
  %31 = load i32*, i32** %6, align 8
  %32 = load i64, i64* %7, align 8
  %33 = load i64, i64* %10, align 8
  %34 = call i32 @jmp_patchins(i32* %31, i64 %32, i64 %33)
  br label %35

35:                                               ; preds = %30, %25
  %36 = load i64, i64* %11, align 8
  store i64 %36, i64* %7, align 8
  br label %12

37:                                               ; preds = %12
  ret void
}

declare dso_local i64 @jmp_next(i32*, i64) #1

declare dso_local i64 @jmp_patchtestreg(i32*, i64, i32) #1

declare dso_local i32 @jmp_patchins(i32*, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

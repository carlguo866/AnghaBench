; ModuleID = '/home/carl/AnghaBench/RetroArch/deps/lua/src/extr_lvm.c_LEnum.c'
source_filename = "/home/carl/AnghaBench/RetroArch/deps/lua/src/extr_lvm.c_LEnum.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32*)* @LEnum to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @LEnum(i32* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  store i32* %0, i32** %4, align 8
  store i32* %1, i32** %5, align 8
  %8 = load i32*, i32** %4, align 8
  %9 = call i64 @ttisinteger(i32* %8)
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %28

11:                                               ; preds = %2
  %12 = load i32*, i32** %4, align 8
  %13 = call i64 @ivalue(i32* %12)
  store i64 %13, i64* %6, align 8
  %14 = load i32*, i32** %5, align 8
  %15 = call i64 @ttisinteger(i32* %14)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %23

17:                                               ; preds = %11
  %18 = load i64, i64* %6, align 8
  %19 = load i32*, i32** %5, align 8
  %20 = call i64 @ivalue(i32* %19)
  %21 = icmp sle i64 %18, %20
  %22 = zext i1 %21 to i32
  store i32 %22, i32* %3, align 4
  br label %52

23:                                               ; preds = %11
  %24 = load i64, i64* %6, align 8
  %25 = load i32*, i32** %5, align 8
  %26 = call i32 @fltvalue(i32* %25)
  %27 = call i32 @LEintfloat(i64 %24, i32 %26)
  store i32 %27, i32* %3, align 4
  br label %52

28:                                               ; preds = %2
  %29 = load i32*, i32** %4, align 8
  %30 = call i32 @fltvalue(i32* %29)
  store i32 %30, i32* %7, align 4
  %31 = load i32*, i32** %5, align 8
  %32 = call i64 @ttisfloat(i32* %31)
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %39

34:                                               ; preds = %28
  %35 = load i32, i32* %7, align 4
  %36 = load i32*, i32** %5, align 8
  %37 = call i32 @fltvalue(i32* %36)
  %38 = call i32 @luai_numle(i32 %35, i32 %37)
  store i32 %38, i32* %3, align 4
  br label %52

39:                                               ; preds = %28
  %40 = load i32, i32* %7, align 4
  %41 = call i64 @luai_numisnan(i32 %40)
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %44

43:                                               ; preds = %39
  store i32 0, i32* %3, align 4
  br label %52

44:                                               ; preds = %39
  %45 = load i32*, i32** %5, align 8
  %46 = call i64 @ivalue(i32* %45)
  %47 = load i32, i32* %7, align 4
  %48 = call i32 @LTintfloat(i64 %46, i32 %47)
  %49 = icmp ne i32 %48, 0
  %50 = xor i1 %49, true
  %51 = zext i1 %50 to i32
  store i32 %51, i32* %3, align 4
  br label %52

52:                                               ; preds = %44, %43, %34, %23, %17
  %53 = load i32, i32* %3, align 4
  ret i32 %53
}

declare dso_local i64 @ttisinteger(i32*) #1

declare dso_local i64 @ivalue(i32*) #1

declare dso_local i32 @LEintfloat(i64, i32) #1

declare dso_local i32 @fltvalue(i32*) #1

declare dso_local i64 @ttisfloat(i32*) #1

declare dso_local i32 @luai_numle(i32, i32) #1

declare dso_local i64 @luai_numisnan(i32) #1

declare dso_local i32 @LTintfloat(i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

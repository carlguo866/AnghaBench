; ModuleID = '/home/carl/AnghaBench/radare2/libr/core/extr_agraph.c_place_sequence.c'
source_filename = "/home/carl/AnghaBench/radare2/libr/core/extr_agraph.c_place_sequence.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32, i32*, i32*, i32, i32, i32)* @place_sequence to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @place_sequence(i32* %0, i32 %1, i32* %2, i32* %3, i32 %4, i32 %5, i32 %6) #0 {
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store i32* %0, i32** %8, align 8
  store i32 %1, i32* %9, align 4
  store i32* %2, i32** %10, align 8
  store i32* %3, i32** %11, align 8
  store i32 %4, i32* %12, align 4
  store i32 %5, i32* %13, align 4
  store i32 %6, i32* %14, align 4
  %16 = load i32, i32* %14, align 4
  %17 = load i32, i32* %13, align 4
  %18 = add nsw i32 %17, 1
  %19 = icmp eq i32 %16, %18
  br i1 %19, label %20, label %28

20:                                               ; preds = %7
  %21 = load i32*, i32** %8, align 8
  %22 = load i32, i32* %9, align 4
  %23 = load i32*, i32** %10, align 8
  %24 = load i32*, i32** %11, align 8
  %25 = load i32, i32* %12, align 4
  %26 = load i32, i32* %13, align 4
  %27 = call i32 @place_single(i32* %21, i32 %22, i32* %23, i32* %24, i32 %25, i32 %26)
  br label %61

28:                                               ; preds = %7
  %29 = load i32, i32* %14, align 4
  %30 = load i32, i32* %13, align 4
  %31 = add nsw i32 %30, 1
  %32 = icmp sgt i32 %29, %31
  br i1 %32, label %33, label %60

33:                                               ; preds = %28
  %34 = load i32, i32* %14, align 4
  %35 = load i32, i32* %13, align 4
  %36 = add nsw i32 %34, %35
  %37 = sdiv i32 %36, 2
  store i32 %37, i32* %15, align 4
  %38 = load i32*, i32** %8, align 8
  %39 = load i32, i32* %9, align 4
  %40 = load i32*, i32** %10, align 8
  %41 = load i32*, i32** %11, align 8
  %42 = load i32, i32* %12, align 4
  %43 = load i32, i32* %13, align 4
  %44 = load i32, i32* %15, align 4
  call void @place_sequence(i32* %38, i32 %39, i32* %40, i32* %41, i32 %42, i32 %43, i32 %44)
  %45 = load i32*, i32** %8, align 8
  %46 = load i32, i32* %9, align 4
  %47 = load i32*, i32** %10, align 8
  %48 = load i32*, i32** %11, align 8
  %49 = load i32, i32* %12, align 4
  %50 = load i32, i32* %15, align 4
  %51 = load i32, i32* %14, align 4
  call void @place_sequence(i32* %45, i32 %46, i32* %47, i32* %48, i32 %49, i32 %50, i32 %51)
  %52 = load i32*, i32** %8, align 8
  %53 = load i32, i32* %9, align 4
  %54 = load i32*, i32** %10, align 8
  %55 = load i32*, i32** %11, align 8
  %56 = load i32, i32* %12, align 4
  %57 = load i32, i32* %13, align 4
  %58 = load i32, i32* %14, align 4
  %59 = call i32 @combine_sequences(i32* %52, i32 %53, i32* %54, i32* %55, i32 %56, i32 %57, i32 %58)
  br label %60

60:                                               ; preds = %33, %28
  br label %61

61:                                               ; preds = %60, %20
  ret void
}

declare dso_local i32 @place_single(i32*, i32, i32*, i32*, i32, i32) #1

declare dso_local i32 @combine_sequences(i32*, i32, i32*, i32*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

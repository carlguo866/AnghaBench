; ModuleID = '/home/carl/AnghaBench/HandBrake/libhb/platform/macosx/extr_encca_aac.c_readDescrLen.c'
source_filename = "/home/carl/AnghaBench/HandBrake/libhb/platform/macosx/extr_encca_aac.c_readDescrLen.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32**)* @readDescrLen to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @readDescrLen(i32** %0) #0 {
  %2 = alloca i32**, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store i32** %0, i32*** %2, align 8
  store i32 0, i32* %3, align 4
  store i32 4, i32* %4, align 4
  br label %6

6:                                                ; preds = %24, %1
  %7 = load i32, i32* %4, align 4
  %8 = add nsw i32 %7, -1
  store i32 %8, i32* %4, align 4
  %9 = icmp ne i32 %7, 0
  br i1 %9, label %10, label %25

10:                                               ; preds = %6
  %11 = load i32**, i32*** %2, align 8
  %12 = load i32*, i32** %11, align 8
  %13 = getelementptr inbounds i32, i32* %12, i32 1
  store i32* %13, i32** %11, align 8
  %14 = load i32, i32* %12, align 4
  store i32 %14, i32* %5, align 4
  %15 = load i32, i32* %3, align 4
  %16 = shl i32 %15, 7
  %17 = load i32, i32* %5, align 4
  %18 = and i32 %17, 127
  %19 = or i32 %16, %18
  store i32 %19, i32* %3, align 4
  %20 = load i32, i32* %5, align 4
  %21 = and i32 %20, 128
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %24, label %23

23:                                               ; preds = %10
  br label %25

24:                                               ; preds = %10
  br label %6

25:                                               ; preds = %23, %6
  %26 = load i32, i32* %3, align 4
  ret i32 %26
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

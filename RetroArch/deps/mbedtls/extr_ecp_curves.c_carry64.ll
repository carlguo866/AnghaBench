; ModuleID = '/home/carl/AnghaBench/RetroArch/deps/mbedtls/extr_ecp_curves.c_carry64.c'
source_filename = "/home/carl/AnghaBench/RetroArch/deps/mbedtls/extr_ecp_curves.c_carry64.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32*)* @carry64 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @carry64(i32* %0, i32* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i8, align 1
  store i32* %0, i32** %3, align 8
  store i32* %1, i32** %4, align 8
  store i8 0, i8* %5, align 1
  br label %6

6:                                                ; preds = %23, %2
  %7 = load i8, i8* %5, align 1
  %8 = zext i8 %7 to i64
  %9 = icmp ult i64 %8, 2
  br i1 %9, label %10, label %28

10:                                               ; preds = %6
  %11 = load i32*, i32** %4, align 8
  %12 = load i32, i32* %11, align 4
  %13 = load i32*, i32** %3, align 8
  %14 = load i32, i32* %13, align 4
  %15 = add nsw i32 %14, %12
  store i32 %15, i32* %13, align 4
  %16 = load i32*, i32** %3, align 8
  %17 = load i32, i32* %16, align 4
  %18 = load i32*, i32** %4, align 8
  %19 = load i32, i32* %18, align 4
  %20 = icmp slt i32 %17, %19
  %21 = zext i1 %20 to i32
  %22 = load i32*, i32** %4, align 8
  store i32 %21, i32* %22, align 4
  br label %23

23:                                               ; preds = %10
  %24 = load i8, i8* %5, align 1
  %25 = add i8 %24, 1
  store i8 %25, i8* %5, align 1
  %26 = load i32*, i32** %3, align 8
  %27 = getelementptr inbounds i32, i32* %26, i32 1
  store i32* %27, i32** %3, align 8
  br label %6

28:                                               ; preds = %6
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

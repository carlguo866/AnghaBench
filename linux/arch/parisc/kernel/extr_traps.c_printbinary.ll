; ModuleID = '/home/carl/AnghaBench/linux/arch/parisc/kernel/extr_traps.c_printbinary.c'
source_filename = "/home/carl/AnghaBench/linux/arch/parisc/kernel/extr_traps.c_printbinary.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i64, i32)* @printbinary to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @printbinary(i8* %0, i64 %1, i32 %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  store i8* %0, i8** %4, align 8
  store i64 %1, i64* %5, align 8
  store i32 %2, i32* %6, align 4
  %8 = load i32, i32* %6, align 4
  %9 = sub nsw i32 %8, 1
  %10 = zext i32 %9 to i64
  %11 = shl i64 1, %10
  store i64 %11, i64* %7, align 8
  br label %12

12:                                               ; preds = %15, %3
  %13 = load i64, i64* %7, align 8
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %27

15:                                               ; preds = %12
  %16 = load i64, i64* %7, align 8
  %17 = load i64, i64* %5, align 8
  %18 = and i64 %16, %17
  %19 = icmp ne i64 %18, 0
  %20 = zext i1 %19 to i64
  %21 = select i1 %19, i32 49, i32 48
  %22 = trunc i32 %21 to i8
  %23 = load i8*, i8** %4, align 8
  %24 = getelementptr inbounds i8, i8* %23, i32 1
  store i8* %24, i8** %4, align 8
  store i8 %22, i8* %23, align 1
  %25 = load i64, i64* %7, align 8
  %26 = lshr i64 %25, 1
  store i64 %26, i64* %7, align 8
  br label %12

27:                                               ; preds = %12
  %28 = load i8*, i8** %4, align 8
  store i8 0, i8* %28, align 1
  %29 = load i32, i32* %6, align 4
  ret i32 %29
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

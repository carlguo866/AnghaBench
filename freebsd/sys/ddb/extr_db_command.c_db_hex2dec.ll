; ModuleID = '/home/carl/AnghaBench/freebsd/sys/ddb/extr_db_command.c_db_hex2dec.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/ddb/extr_db_command.c_db_hex2dec.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @db_hex2dec(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i64 1, i64* %5, align 8
  store i32 0, i32* %6, align 4
  %7 = load i32, i32* %3, align 4
  %8 = sext i32 %7 to i64
  store i64 %8, i64* %4, align 8
  br label %9

9:                                                ; preds = %17, %1
  %10 = load i64, i64* %4, align 8
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %30

12:                                               ; preds = %9
  %13 = load i64, i64* %4, align 8
  %14 = urem i64 %13, 16
  %15 = icmp ugt i64 %14, 9
  br i1 %15, label %16, label %17

16:                                               ; preds = %12
  store i32 -1, i32* %2, align 4
  br label %32

17:                                               ; preds = %12
  %18 = load i64, i64* %4, align 8
  %19 = urem i64 %18, 16
  %20 = load i64, i64* %5, align 8
  %21 = mul i64 %19, %20
  %22 = load i32, i32* %6, align 4
  %23 = sext i32 %22 to i64
  %24 = add i64 %23, %21
  %25 = trunc i64 %24 to i32
  store i32 %25, i32* %6, align 4
  %26 = load i64, i64* %4, align 8
  %27 = lshr i64 %26, 4
  store i64 %27, i64* %4, align 8
  %28 = load i64, i64* %5, align 8
  %29 = mul i64 %28, 10
  store i64 %29, i64* %5, align 8
  br label %9

30:                                               ; preds = %9
  %31 = load i32, i32* %6, align 4
  store i32 %31, i32* %2, align 4
  br label %32

32:                                               ; preds = %30, %16
  %33 = load i32, i32* %2, align 4
  ret i32 %33
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

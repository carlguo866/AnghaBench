; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/compiler-rt/lib/profile/extr_GCDAProfiling.c_read_le_32bit_value.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/compiler-rt/lib/profile/extr_GCDAProfiling.c_read_le_32bit_value.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@new_file = common dso_local global i64 0, align 8
@write_buffer = common dso_local global i32* null, align 8
@cur_pos = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @read_le_32bit_value to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @read_le_32bit_value() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  store i32 0, i32* %2, align 4
  %4 = load i64, i64* @new_file, align 8
  %5 = icmp ne i64 %4, 0
  br i1 %5, label %6, label %7

6:                                                ; preds = %0
  store i32 -1, i32* %1, align 4
  br label %28

7:                                                ; preds = %0
  store i32 0, i32* %3, align 4
  br label %8

8:                                                ; preds = %23, %7
  %9 = load i32, i32* %3, align 4
  %10 = icmp slt i32 %9, 4
  br i1 %10, label %11, label %26

11:                                               ; preds = %8
  %12 = load i32*, i32** @write_buffer, align 8
  %13 = load i32, i32* @cur_pos, align 4
  %14 = add nsw i32 %13, 1
  store i32 %14, i32* @cur_pos, align 4
  %15 = sext i32 %13 to i64
  %16 = getelementptr inbounds i32, i32* %12, i64 %15
  %17 = load i32, i32* %16, align 4
  %18 = load i32, i32* %3, align 4
  %19 = mul nsw i32 8, %18
  %20 = shl i32 %17, %19
  %21 = load i32, i32* %2, align 4
  %22 = or i32 %21, %20
  store i32 %22, i32* %2, align 4
  br label %23

23:                                               ; preds = %11
  %24 = load i32, i32* %3, align 4
  %25 = add nsw i32 %24, 1
  store i32 %25, i32* %3, align 4
  br label %8

26:                                               ; preds = %8
  %27 = load i32, i32* %2, align 4
  store i32 %27, i32* %1, align 4
  br label %28

28:                                               ; preds = %26, %6
  %29 = load i32, i32* %1, align 4
  ret i32 %29
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

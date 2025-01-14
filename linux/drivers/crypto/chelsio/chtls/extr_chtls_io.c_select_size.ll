; ModuleID = '/home/carl/AnghaBench/linux/drivers/crypto/chelsio/chtls/extr_chtls_io.c_select_size.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/crypto/chelsio/chtls/extr_chtls_io.c_select_size.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sock = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sock*, i32, i32, i32)* @select_size to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @select_size(%struct.sock* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.sock*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.sock* %0, %struct.sock** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %11 = load i32, i32* %9, align 4
  %12 = call i32 @SKB_MAX_HEAD(i32 %11)
  store i32 %12, i32* %10, align 4
  %13 = load i32, i32* %7, align 4
  %14 = load i32, i32* %10, align 4
  %15 = icmp sgt i32 %13, %14
  br i1 %15, label %16, label %17

16:                                               ; preds = %4
  store i32 0, i32* %5, align 4
  br label %26

17:                                               ; preds = %4
  %18 = load %struct.sock*, %struct.sock** %6, align 8
  %19 = load i32, i32* %8, align 4
  %20 = call i32 @send_should_push(%struct.sock* %18, i32 %19)
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %24, label %22

22:                                               ; preds = %17
  %23 = load i32, i32* %10, align 4
  store i32 %23, i32* %5, align 4
  br label %26

24:                                               ; preds = %17
  %25 = load i32, i32* %7, align 4
  store i32 %25, i32* %5, align 4
  br label %26

26:                                               ; preds = %24, %22, %16
  %27 = load i32, i32* %5, align 4
  ret i32 %27
}

declare dso_local i32 @SKB_MAX_HEAD(i32) #1

declare dso_local i32 @send_should_push(%struct.sock*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

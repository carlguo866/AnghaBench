; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/emulex/benet/extr_be_cmds.c_be_mac_to_link_speed.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/emulex/benet/extr_be_cmds.c_be_mac_to_link_speed.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @be_mac_to_link_speed to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @be_mac_to_link_speed(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %4 = load i32, i32* %3, align 4
  switch i32 %4, label %13 [
    i32 128, label %5
    i32 133, label %6
    i32 135, label %7
    i32 132, label %8
    i32 134, label %9
    i32 131, label %10
    i32 130, label %11
    i32 129, label %12
  ]

5:                                                ; preds = %1
  store i32 0, i32* %2, align 4
  br label %14

6:                                                ; preds = %1
  store i32 10, i32* %2, align 4
  br label %14

7:                                                ; preds = %1
  store i32 100, i32* %2, align 4
  br label %14

8:                                                ; preds = %1
  store i32 1000, i32* %2, align 4
  br label %14

9:                                                ; preds = %1
  store i32 10000, i32* %2, align 4
  br label %14

10:                                               ; preds = %1
  store i32 20000, i32* %2, align 4
  br label %14

11:                                               ; preds = %1
  store i32 25000, i32* %2, align 4
  br label %14

12:                                               ; preds = %1
  store i32 40000, i32* %2, align 4
  br label %14

13:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %14

14:                                               ; preds = %13, %12, %11, %10, %9, %8, %7, %6, %5
  %15 = load i32, i32* %2, align 4
  ret i32 %15
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/device_handler/extr_scsi_dh_alua.c_print_alua_state.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/device_handler/extr_scsi_dh_alua.c_print_alua_state.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (i8 (i32)* @print_alua_state to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal signext i8 @print_alua_state(i32 %0) #0 {
  %2 = alloca i8, align 1
  %3 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %4 = load i32, i32* %3, align 4
  switch i32 %4, label %12 [
    i32 131, label %5
    i32 133, label %6
    i32 130, label %7
    i32 128, label %8
    i32 134, label %9
    i32 132, label %10
    i32 129, label %11
  ]

5:                                                ; preds = %1
  store i8 65, i8* %2, align 1
  br label %13

6:                                                ; preds = %1
  store i8 78, i8* %2, align 1
  br label %13

7:                                                ; preds = %1
  store i8 83, i8* %2, align 1
  br label %13

8:                                                ; preds = %1
  store i8 85, i8* %2, align 1
  br label %13

9:                                                ; preds = %1
  store i8 76, i8* %2, align 1
  br label %13

10:                                               ; preds = %1
  store i8 79, i8* %2, align 1
  br label %13

11:                                               ; preds = %1
  store i8 84, i8* %2, align 1
  br label %13

12:                                               ; preds = %1
  store i8 88, i8* %2, align 1
  br label %13

13:                                               ; preds = %12, %11, %10, %9, %8, %7, %6, %5
  %14 = load i8, i8* %2, align 1
  ret i8 %14
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

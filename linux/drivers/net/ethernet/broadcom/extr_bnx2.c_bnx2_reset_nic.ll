; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/extr_bnx2.c_bnx2_reset_nic.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/extr_bnx2.c_bnx2_reset_nic.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bnx2 = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.bnx2*, i32)* @bnx2_reset_nic to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bnx2_reset_nic(%struct.bnx2* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.bnx2*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.bnx2* %0, %struct.bnx2** %4, align 8
  store i32 %1, i32* %5, align 4
  %7 = load %struct.bnx2*, %struct.bnx2** %4, align 8
  %8 = load i32, i32* %5, align 4
  %9 = call i32 @bnx2_reset_chip(%struct.bnx2* %7, i32 %8)
  store i32 %9, i32* %6, align 4
  %10 = load %struct.bnx2*, %struct.bnx2** %4, align 8
  %11 = call i32 @bnx2_free_skbs(%struct.bnx2* %10)
  %12 = load i32, i32* %6, align 4
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %16

14:                                               ; preds = %2
  %15 = load i32, i32* %6, align 4
  store i32 %15, i32* %3, align 4
  br label %25

16:                                               ; preds = %2
  %17 = load %struct.bnx2*, %struct.bnx2** %4, align 8
  %18 = call i32 @bnx2_init_chip(%struct.bnx2* %17)
  store i32 %18, i32* %6, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %22

20:                                               ; preds = %16
  %21 = load i32, i32* %6, align 4
  store i32 %21, i32* %3, align 4
  br label %25

22:                                               ; preds = %16
  %23 = load %struct.bnx2*, %struct.bnx2** %4, align 8
  %24 = call i32 @bnx2_init_all_rings(%struct.bnx2* %23)
  store i32 0, i32* %3, align 4
  br label %25

25:                                               ; preds = %22, %20, %14
  %26 = load i32, i32* %3, align 4
  ret i32 %26
}

declare dso_local i32 @bnx2_reset_chip(%struct.bnx2*, i32) #1

declare dso_local i32 @bnx2_free_skbs(%struct.bnx2*) #1

declare dso_local i32 @bnx2_init_chip(%struct.bnx2*) #1

declare dso_local i32 @bnx2_init_all_rings(%struct.bnx2*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

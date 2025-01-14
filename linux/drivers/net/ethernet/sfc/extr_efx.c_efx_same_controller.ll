; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/sfc/extr_efx.c_efx_same_controller.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/sfc/extr_efx.c_efx_same_controller.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.efx_nic = type { i64, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.efx_nic*, %struct.efx_nic*)* @efx_same_controller to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @efx_same_controller(%struct.efx_nic* %0, %struct.efx_nic* %1) #0 {
  %3 = alloca %struct.efx_nic*, align 8
  %4 = alloca %struct.efx_nic*, align 8
  store %struct.efx_nic* %0, %struct.efx_nic** %3, align 8
  store %struct.efx_nic* %1, %struct.efx_nic** %4, align 8
  %5 = load %struct.efx_nic*, %struct.efx_nic** %3, align 8
  %6 = getelementptr inbounds %struct.efx_nic, %struct.efx_nic* %5, i32 0, i32 0
  %7 = load i64, i64* %6, align 8
  %8 = load %struct.efx_nic*, %struct.efx_nic** %4, align 8
  %9 = getelementptr inbounds %struct.efx_nic, %struct.efx_nic* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = icmp eq i64 %7, %10
  br i1 %11, label %12, label %32

12:                                               ; preds = %2
  %13 = load %struct.efx_nic*, %struct.efx_nic** %3, align 8
  %14 = getelementptr inbounds %struct.efx_nic, %struct.efx_nic* %13, i32 0, i32 1
  %15 = load i64, i64* %14, align 8
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %32

17:                                               ; preds = %12
  %18 = load %struct.efx_nic*, %struct.efx_nic** %4, align 8
  %19 = getelementptr inbounds %struct.efx_nic, %struct.efx_nic* %18, i32 0, i32 1
  %20 = load i64, i64* %19, align 8
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %32

22:                                               ; preds = %17
  %23 = load %struct.efx_nic*, %struct.efx_nic** %3, align 8
  %24 = getelementptr inbounds %struct.efx_nic, %struct.efx_nic* %23, i32 0, i32 1
  %25 = load i64, i64* %24, align 8
  %26 = load %struct.efx_nic*, %struct.efx_nic** %4, align 8
  %27 = getelementptr inbounds %struct.efx_nic, %struct.efx_nic* %26, i32 0, i32 1
  %28 = load i64, i64* %27, align 8
  %29 = call i32 @strcmp(i64 %25, i64 %28)
  %30 = icmp ne i32 %29, 0
  %31 = xor i1 %30, true
  br label %32

32:                                               ; preds = %22, %17, %12, %2
  %33 = phi i1 [ false, %17 ], [ false, %12 ], [ false, %2 ], [ %31, %22 ]
  %34 = zext i1 %33 to i32
  ret i32 %34
}

declare dso_local i32 @strcmp(i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

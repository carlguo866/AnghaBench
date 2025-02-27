; ModuleID = '/home/carl/AnghaBench/linux/drivers/crypto/qat/qat_common/extr_adf_transport.c_adf_reserve_ring.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/crypto/qat/qat_common/extr_adf_transport.c_adf_reserve_ring.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.adf_etr_bank_data = type { i32, i32 }

@EFAULT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.adf_etr_bank_data*, i32)* @adf_reserve_ring to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @adf_reserve_ring(%struct.adf_etr_bank_data* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.adf_etr_bank_data*, align 8
  %5 = alloca i32, align 4
  store %struct.adf_etr_bank_data* %0, %struct.adf_etr_bank_data** %4, align 8
  store i32 %1, i32* %5, align 4
  %6 = load %struct.adf_etr_bank_data*, %struct.adf_etr_bank_data** %4, align 8
  %7 = getelementptr inbounds %struct.adf_etr_bank_data, %struct.adf_etr_bank_data* %6, i32 0, i32 1
  %8 = call i32 @spin_lock(i32* %7)
  %9 = load %struct.adf_etr_bank_data*, %struct.adf_etr_bank_data** %4, align 8
  %10 = getelementptr inbounds %struct.adf_etr_bank_data, %struct.adf_etr_bank_data* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = load i32, i32* %5, align 4
  %13 = shl i32 1, %12
  %14 = and i32 %11, %13
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %22

16:                                               ; preds = %2
  %17 = load %struct.adf_etr_bank_data*, %struct.adf_etr_bank_data** %4, align 8
  %18 = getelementptr inbounds %struct.adf_etr_bank_data, %struct.adf_etr_bank_data* %17, i32 0, i32 1
  %19 = call i32 @spin_unlock(i32* %18)
  %20 = load i32, i32* @EFAULT, align 4
  %21 = sub nsw i32 0, %20
  store i32 %21, i32* %3, align 4
  br label %32

22:                                               ; preds = %2
  %23 = load i32, i32* %5, align 4
  %24 = shl i32 1, %23
  %25 = load %struct.adf_etr_bank_data*, %struct.adf_etr_bank_data** %4, align 8
  %26 = getelementptr inbounds %struct.adf_etr_bank_data, %struct.adf_etr_bank_data* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = or i32 %27, %24
  store i32 %28, i32* %26, align 4
  %29 = load %struct.adf_etr_bank_data*, %struct.adf_etr_bank_data** %4, align 8
  %30 = getelementptr inbounds %struct.adf_etr_bank_data, %struct.adf_etr_bank_data* %29, i32 0, i32 1
  %31 = call i32 @spin_unlock(i32* %30)
  store i32 0, i32* %3, align 4
  br label %32

32:                                               ; preds = %22, %16
  %33 = load i32, i32* %3, align 4
  ret i32 %33
}

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @spin_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

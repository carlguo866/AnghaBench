; ModuleID = '/home/carl/AnghaBench/linux/drivers/iommu/extr_intel_irq_remapping.c_set_irte_sid.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iommu/extr_intel_irq_remapping.c_set_irte_sid.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.irte = type { i32, i32, i32 }

@disable_sourceid_checking = common dso_local global i64 0, align 8
@SVT_NO_VERIFY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.irte*, i32, i32, i32)* @set_irte_sid to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @set_irte_sid(%struct.irte* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.irte*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.irte* %0, %struct.irte** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %9 = load i64, i64* @disable_sourceid_checking, align 8
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %13

11:                                               ; preds = %4
  %12 = load i32, i32* @SVT_NO_VERIFY, align 4
  store i32 %12, i32* %6, align 4
  br label %13

13:                                               ; preds = %11, %4
  %14 = load i32, i32* %6, align 4
  %15 = load %struct.irte*, %struct.irte** %5, align 8
  %16 = getelementptr inbounds %struct.irte, %struct.irte* %15, i32 0, i32 0
  store i32 %14, i32* %16, align 4
  %17 = load i32, i32* %7, align 4
  %18 = load %struct.irte*, %struct.irte** %5, align 8
  %19 = getelementptr inbounds %struct.irte, %struct.irte* %18, i32 0, i32 1
  store i32 %17, i32* %19, align 4
  %20 = load i32, i32* %8, align 4
  %21 = load %struct.irte*, %struct.irte** %5, align 8
  %22 = getelementptr inbounds %struct.irte, %struct.irte* %21, i32 0, i32 2
  store i32 %20, i32* %22, align 4
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

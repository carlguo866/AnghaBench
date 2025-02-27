; ModuleID = '/home/carl/AnghaBench/linux/drivers/acpi/apei/extr_ghes.c_apei_sdei_register_ghes.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/acpi/apei/extr_ghes.c_apei_sdei_register_ghes.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ghes = type { i32 }

@CONFIG_ARM_SDE_INTERFACE = common dso_local global i32 0, align 4
@EOPNOTSUPP = common dso_local global i32 0, align 4
@ghes_sdei_normal_callback = common dso_local global i32 0, align 4
@ghes_sdei_critical_callback = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ghes*)* @apei_sdei_register_ghes to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @apei_sdei_register_ghes(%struct.ghes* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ghes*, align 8
  store %struct.ghes* %0, %struct.ghes** %3, align 8
  %4 = load i32, i32* @CONFIG_ARM_SDE_INTERFACE, align 4
  %5 = call i32 @IS_ENABLED(i32 %4)
  %6 = icmp ne i32 %5, 0
  br i1 %6, label %10, label %7

7:                                                ; preds = %1
  %8 = load i32, i32* @EOPNOTSUPP, align 4
  %9 = sub nsw i32 0, %8
  store i32 %9, i32* %2, align 4
  br label %15

10:                                               ; preds = %1
  %11 = load %struct.ghes*, %struct.ghes** %3, align 8
  %12 = load i32, i32* @ghes_sdei_normal_callback, align 4
  %13 = load i32, i32* @ghes_sdei_critical_callback, align 4
  %14 = call i32 @sdei_register_ghes(%struct.ghes* %11, i32 %12, i32 %13)
  store i32 %14, i32* %2, align 4
  br label %15

15:                                               ; preds = %10, %7
  %16 = load i32, i32* %2, align 4
  ret i32 %16
}

declare dso_local i32 @IS_ENABLED(i32) #1

declare dso_local i32 @sdei_register_ghes(%struct.ghes*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/linux/drivers/acpi/extr_ec.c___acpi_ec_enable_event.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/acpi/extr_ec.c___acpi_ec_enable_event.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.acpi_ec = type { i32 }

@EC_FLAGS_QUERY_ENABLED = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [16 x i8] c"event unblocked\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.acpi_ec*)* @__acpi_ec_enable_event to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @__acpi_ec_enable_event(%struct.acpi_ec* %0) #0 {
  %2 = alloca %struct.acpi_ec*, align 8
  store %struct.acpi_ec* %0, %struct.acpi_ec** %2, align 8
  %3 = load i32, i32* @EC_FLAGS_QUERY_ENABLED, align 4
  %4 = load %struct.acpi_ec*, %struct.acpi_ec** %2, align 8
  %5 = getelementptr inbounds %struct.acpi_ec, %struct.acpi_ec* %4, i32 0, i32 0
  %6 = call i32 @test_and_set_bit(i32 %3, i32* %5)
  %7 = icmp ne i32 %6, 0
  br i1 %7, label %10, label %8

8:                                                ; preds = %1
  %9 = call i32 @ec_log_drv(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0))
  br label %10

10:                                               ; preds = %8, %1
  %11 = load %struct.acpi_ec*, %struct.acpi_ec** %2, align 8
  %12 = call i32 @advance_transaction(%struct.acpi_ec* %11)
  ret void
}

declare dso_local i32 @test_and_set_bit(i32, i32*) #1

declare dso_local i32 @ec_log_drv(i8*) #1

declare dso_local i32 @advance_transaction(%struct.acpi_ec*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

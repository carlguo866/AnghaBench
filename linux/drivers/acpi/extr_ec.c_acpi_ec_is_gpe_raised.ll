; ModuleID = '/home/carl/AnghaBench/linux/drivers/acpi/extr_ec.c_acpi_ec_is_gpe_raised.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/acpi/extr_ec.c_acpi_ec_is_gpe_raised.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.acpi_ec = type { i32 }

@ACPI_EVENT_FLAG_STATUS_SET = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.acpi_ec*)* @acpi_ec_is_gpe_raised to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @acpi_ec_is_gpe_raised(%struct.acpi_ec* %0) #0 {
  %2 = alloca %struct.acpi_ec*, align 8
  %3 = alloca i32, align 4
  store %struct.acpi_ec* %0, %struct.acpi_ec** %2, align 8
  store i32 0, i32* %3, align 4
  %4 = load %struct.acpi_ec*, %struct.acpi_ec** %2, align 8
  %5 = getelementptr inbounds %struct.acpi_ec, %struct.acpi_ec* %4, i32 0, i32 0
  %6 = load i32, i32* %5, align 4
  %7 = call i32 @acpi_get_gpe_status(i32* null, i32 %6, i32* %3)
  %8 = load i32, i32* %3, align 4
  %9 = load i32, i32* @ACPI_EVENT_FLAG_STATUS_SET, align 4
  %10 = and i32 %8, %9
  %11 = icmp ne i32 %10, 0
  %12 = zext i1 %11 to i64
  %13 = select i1 %11, i32 1, i32 0
  ret i32 %13
}

declare dso_local i32 @acpi_get_gpe_status(i32*, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

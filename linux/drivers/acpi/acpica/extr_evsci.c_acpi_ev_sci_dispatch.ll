; ModuleID = '/home/carl/AnghaBench/linux/drivers/acpi/acpica/extr_evsci.c_acpi_ev_sci_dispatch.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/acpi/acpica/extr_evsci.c_acpi_ev_sci_dispatch.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.acpi_sci_handler_info = type { %struct.acpi_sci_handler_info*, i32, i32 (i32)* }

@ACPI_INTERRUPT_NOT_HANDLED = common dso_local global i32 0, align 4
@ev_sci_dispatch = common dso_local global i32 0, align 4
@acpi_gbl_sci_handler_list = common dso_local global %struct.acpi_sci_handler_info* null, align 8
@acpi_gbl_gpe_lock = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @acpi_ev_sci_dispatch() #0 {
  %1 = alloca i32, align 4
  %2 = alloca %struct.acpi_sci_handler_info*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = load i32, i32* @ACPI_INTERRUPT_NOT_HANDLED, align 4
  store i32 %5, i32* %4, align 4
  %6 = load i32, i32* @ev_sci_dispatch, align 4
  %7 = call i32 @ACPI_FUNCTION_NAME(i32 %6)
  %8 = load %struct.acpi_sci_handler_info*, %struct.acpi_sci_handler_info** @acpi_gbl_sci_handler_list, align 8
  %9 = icmp ne %struct.acpi_sci_handler_info* %8, null
  br i1 %9, label %12, label %10

10:                                               ; preds = %0
  %11 = load i32, i32* %4, align 4
  store i32 %11, i32* %1, align 4
  br label %37

12:                                               ; preds = %0
  %13 = load i32, i32* @acpi_gbl_gpe_lock, align 4
  %14 = call i32 @acpi_os_acquire_lock(i32 %13)
  store i32 %14, i32* %3, align 4
  %15 = load %struct.acpi_sci_handler_info*, %struct.acpi_sci_handler_info** @acpi_gbl_sci_handler_list, align 8
  store %struct.acpi_sci_handler_info* %15, %struct.acpi_sci_handler_info** %2, align 8
  br label %16

16:                                               ; preds = %19, %12
  %17 = load %struct.acpi_sci_handler_info*, %struct.acpi_sci_handler_info** %2, align 8
  %18 = icmp ne %struct.acpi_sci_handler_info* %17, null
  br i1 %18, label %19, label %32

19:                                               ; preds = %16
  %20 = load %struct.acpi_sci_handler_info*, %struct.acpi_sci_handler_info** %2, align 8
  %21 = getelementptr inbounds %struct.acpi_sci_handler_info, %struct.acpi_sci_handler_info* %20, i32 0, i32 2
  %22 = load i32 (i32)*, i32 (i32)** %21, align 8
  %23 = load %struct.acpi_sci_handler_info*, %struct.acpi_sci_handler_info** %2, align 8
  %24 = getelementptr inbounds %struct.acpi_sci_handler_info, %struct.acpi_sci_handler_info* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 8
  %26 = call i32 %22(i32 %25)
  %27 = load i32, i32* %4, align 4
  %28 = or i32 %27, %26
  store i32 %28, i32* %4, align 4
  %29 = load %struct.acpi_sci_handler_info*, %struct.acpi_sci_handler_info** %2, align 8
  %30 = getelementptr inbounds %struct.acpi_sci_handler_info, %struct.acpi_sci_handler_info* %29, i32 0, i32 0
  %31 = load %struct.acpi_sci_handler_info*, %struct.acpi_sci_handler_info** %30, align 8
  store %struct.acpi_sci_handler_info* %31, %struct.acpi_sci_handler_info** %2, align 8
  br label %16

32:                                               ; preds = %16
  %33 = load i32, i32* @acpi_gbl_gpe_lock, align 4
  %34 = load i32, i32* %3, align 4
  %35 = call i32 @acpi_os_release_lock(i32 %33, i32 %34)
  %36 = load i32, i32* %4, align 4
  store i32 %36, i32* %1, align 4
  br label %37

37:                                               ; preds = %32, %10
  %38 = load i32, i32* %1, align 4
  ret i32 %38
}

declare dso_local i32 @ACPI_FUNCTION_NAME(i32) #1

declare dso_local i32 @acpi_os_acquire_lock(i32) #1

declare dso_local i32 @acpi_os_release_lock(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

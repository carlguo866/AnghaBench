; ModuleID = '/home/carl/AnghaBench/linux/drivers/acpi/acpica/extr_utstate.c_acpi_ut_create_control_state.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/acpi/acpica/extr_utstate.c_acpi_ut_create_control_state.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%union.acpi_generic_state = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32 }

@ACPI_DESC_TYPE_STATE_CONTROL = common dso_local global i32 0, align 4
@ACPI_CONTROL_CONDITIONAL_EXECUTING = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %union.acpi_generic_state* @acpi_ut_create_control_state() #0 {
  %1 = alloca %union.acpi_generic_state*, align 8
  %2 = alloca %union.acpi_generic_state*, align 8
  %3 = call i32 (...) @ACPI_FUNCTION_ENTRY()
  %4 = call %union.acpi_generic_state* (...) @acpi_ut_create_generic_state()
  store %union.acpi_generic_state* %4, %union.acpi_generic_state** %2, align 8
  %5 = load %union.acpi_generic_state*, %union.acpi_generic_state** %2, align 8
  %6 = icmp ne %union.acpi_generic_state* %5, null
  br i1 %6, label %8, label %7

7:                                                ; preds = %0
  store %union.acpi_generic_state* null, %union.acpi_generic_state** %1, align 8
  br label %18

8:                                                ; preds = %0
  %9 = load i32, i32* @ACPI_DESC_TYPE_STATE_CONTROL, align 4
  %10 = load %union.acpi_generic_state*, %union.acpi_generic_state** %2, align 8
  %11 = bitcast %union.acpi_generic_state* %10 to %struct.TYPE_2__*
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 1
  store i32 %9, i32* %12, align 4
  %13 = load i32, i32* @ACPI_CONTROL_CONDITIONAL_EXECUTING, align 4
  %14 = load %union.acpi_generic_state*, %union.acpi_generic_state** %2, align 8
  %15 = bitcast %union.acpi_generic_state* %14 to %struct.TYPE_2__*
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 0
  store i32 %13, i32* %16, align 4
  %17 = load %union.acpi_generic_state*, %union.acpi_generic_state** %2, align 8
  store %union.acpi_generic_state* %17, %union.acpi_generic_state** %1, align 8
  br label %18

18:                                               ; preds = %8, %7
  %19 = load %union.acpi_generic_state*, %union.acpi_generic_state** %1, align 8
  ret %union.acpi_generic_state* %19
}

declare dso_local i32 @ACPI_FUNCTION_ENTRY(...) #1

declare dso_local %union.acpi_generic_state* @acpi_ut_create_generic_state(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/linux/drivers/acpi/acpica/extr_exutils.c_acpi_ex_release_global_lock.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/acpi/acpica/extr_exutils.c_acpi_ex_release_global_lock.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@ex_release_global_lock = common dso_local global i32 0, align 4
@AML_FIELD_LOCK_RULE_MASK = common dso_local global i32 0, align 4
@return_VOID = common dso_local global i32 0, align 4
@acpi_gbl_global_lock_mutex = common dso_local global i32 0, align 4
@AE_INFO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [30 x i8] c"Could not release Global Lock\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @acpi_ex_release_global_lock(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %4 = load i32, i32* @ex_release_global_lock, align 4
  %5 = call i32 @ACPI_FUNCTION_TRACE(i32 %4)
  %6 = load i32, i32* %2, align 4
  %7 = load i32, i32* @AML_FIELD_LOCK_RULE_MASK, align 4
  %8 = and i32 %6, %7
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %12, label %10

10:                                               ; preds = %1
  %11 = load i32, i32* @return_VOID, align 4
  br label %12

12:                                               ; preds = %10, %1
  %13 = load i32, i32* @acpi_gbl_global_lock_mutex, align 4
  %14 = call i32 @acpi_ex_release_mutex_object(i32 %13)
  store i32 %14, i32* %3, align 4
  %15 = load i32, i32* %3, align 4
  %16 = call i64 @ACPI_FAILURE(i32 %15)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %22

18:                                               ; preds = %12
  %19 = load i32, i32* @AE_INFO, align 4
  %20 = load i32, i32* %3, align 4
  %21 = call i32 @ACPI_EXCEPTION(i32 ptrtoint ([30 x i8]* @.str to i32))
  br label %22

22:                                               ; preds = %18, %12
  %23 = load i32, i32* @return_VOID, align 4
  ret void
}

declare dso_local i32 @ACPI_FUNCTION_TRACE(i32) #1

declare dso_local i32 @acpi_ex_release_mutex_object(i32) #1

declare dso_local i64 @ACPI_FAILURE(i32) #1

declare dso_local i32 @ACPI_EXCEPTION(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

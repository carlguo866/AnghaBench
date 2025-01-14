; ModuleID = '/home/carl/AnghaBench/linux/drivers/acpi/acpica/extr_utownerid.c_acpi_ut_release_owner_id.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/acpi/acpica/extr_utownerid.c_acpi_ut_release_owner_id.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@ut_release_owner_id = common dso_local global i32 0, align 4
@AE_INFO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"Invalid OwnerId: 0x%3.3X\00", align 1
@return_VOID = common dso_local global i32 0, align 4
@ACPI_MTX_CACHES = common dso_local global i32 0, align 4
@acpi_gbl_owner_id_mask = common dso_local global i64* null, align 8
@.str.1 = private unnamed_addr constant [52 x i8] c"Attempted release of non-allocated OwnerId: 0x%3.3X\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @acpi_ut_release_owner_id(i64* %0) #0 {
  %2 = alloca i64*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  store i64* %0, i64** %2, align 8
  %7 = load i64*, i64** %2, align 8
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %3, align 8
  %9 = load i32, i32* @ut_release_owner_id, align 4
  %10 = load i64, i64* %3, align 8
  %11 = call i32 @ACPI_FUNCTION_TRACE_U32(i32 %9, i64 %10)
  %12 = load i64*, i64** %2, align 8
  store i64 0, i64* %12, align 8
  %13 = load i64, i64* %3, align 8
  %14 = icmp eq i64 %13, 0
  br i1 %14, label %15, label %21

15:                                               ; preds = %1
  %16 = load i32, i32* @AE_INFO, align 4
  %17 = load i64, i64* %3, align 8
  %18 = trunc i64 %17 to i32
  %19 = call i32 @ACPI_ERROR(i32 %18)
  %20 = load i32, i32* @return_VOID, align 4
  br label %21

21:                                               ; preds = %15, %1
  %22 = load i32, i32* @ACPI_MTX_CACHES, align 4
  %23 = call i32 @acpi_ut_acquire_mutex(i32 %22)
  store i32 %23, i32* %4, align 4
  %24 = load i32, i32* %4, align 4
  %25 = call i64 @ACPI_FAILURE(i32 %24)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %29

27:                                               ; preds = %21
  %28 = load i32, i32* @return_VOID, align 4
  br label %29

29:                                               ; preds = %27, %21
  %30 = load i64, i64* %3, align 8
  %31 = add nsw i64 %30, -1
  store i64 %31, i64* %3, align 8
  %32 = load i64, i64* %3, align 8
  %33 = call i64 @ACPI_DIV_32(i64 %32)
  store i64 %33, i64* %5, align 8
  %34 = load i64, i64* %3, align 8
  %35 = call i64 @ACPI_MOD_32(i64 %34)
  %36 = shl i64 1, %35
  store i64 %36, i64* %6, align 8
  %37 = load i64*, i64** @acpi_gbl_owner_id_mask, align 8
  %38 = load i64, i64* %5, align 8
  %39 = getelementptr inbounds i64, i64* %37, i64 %38
  %40 = load i64, i64* %39, align 8
  %41 = load i64, i64* %6, align 8
  %42 = and i64 %40, %41
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %51

44:                                               ; preds = %29
  %45 = load i64, i64* %6, align 8
  %46 = load i64*, i64** @acpi_gbl_owner_id_mask, align 8
  %47 = load i64, i64* %5, align 8
  %48 = getelementptr inbounds i64, i64* %46, i64 %47
  %49 = load i64, i64* %48, align 8
  %50 = xor i64 %49, %45
  store i64 %50, i64* %48, align 8
  br label %57

51:                                               ; preds = %29
  %52 = load i32, i32* @AE_INFO, align 4
  %53 = load i64, i64* %3, align 8
  %54 = add nsw i64 %53, 1
  %55 = trunc i64 %54 to i32
  %56 = call i32 @ACPI_ERROR(i32 %55)
  br label %57

57:                                               ; preds = %51, %44
  %58 = load i32, i32* @ACPI_MTX_CACHES, align 4
  %59 = call i32 @acpi_ut_release_mutex(i32 %58)
  %60 = load i32, i32* @return_VOID, align 4
  ret void
}

declare dso_local i32 @ACPI_FUNCTION_TRACE_U32(i32, i64) #1

declare dso_local i32 @ACPI_ERROR(i32) #1

declare dso_local i32 @acpi_ut_acquire_mutex(i32) #1

declare dso_local i64 @ACPI_FAILURE(i32) #1

declare dso_local i64 @ACPI_DIV_32(i64) #1

declare dso_local i64 @ACPI_MOD_32(i64) #1

declare dso_local i32 @acpi_ut_release_mutex(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/linux/drivers/acpi/acpica/extr_utdecode.c_acpi_ut_get_region_name.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/acpi/acpica/extr_utdecode.c_acpi_ut_get_region_name.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@ACPI_USER_REGION_BEGIN = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [18 x i8] c"UserDefinedRegion\00", align 1
@ACPI_ADR_SPACE_DATA_TABLE = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [10 x i8] c"DataTable\00", align 1
@ACPI_ADR_SPACE_FIXED_HARDWARE = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [18 x i8] c"FunctionalFixedHW\00", align 1
@ACPI_NUM_PREDEFINED_REGIONS = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [15 x i8] c"InvalidSpaceId\00", align 1
@acpi_gbl_region_types = common dso_local global i8** null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @acpi_ut_get_region_name(i64 %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i64, align 8
  store i64 %0, i64* %3, align 8
  %4 = load i64, i64* %3, align 8
  %5 = load i64, i64* @ACPI_USER_REGION_BEGIN, align 8
  %6 = icmp uge i64 %4, %5
  br i1 %6, label %7, label %8

7:                                                ; preds = %1
  store i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0), i8** %2, align 8
  br label %31

8:                                                ; preds = %1
  %9 = load i64, i64* %3, align 8
  %10 = load i64, i64* @ACPI_ADR_SPACE_DATA_TABLE, align 8
  %11 = icmp eq i64 %9, %10
  br i1 %11, label %12, label %13

12:                                               ; preds = %8
  store i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0), i8** %2, align 8
  br label %31

13:                                               ; preds = %8
  %14 = load i64, i64* %3, align 8
  %15 = load i64, i64* @ACPI_ADR_SPACE_FIXED_HARDWARE, align 8
  %16 = icmp eq i64 %14, %15
  br i1 %16, label %17, label %18

17:                                               ; preds = %13
  store i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.2, i64 0, i64 0), i8** %2, align 8
  br label %31

18:                                               ; preds = %13
  %19 = load i64, i64* %3, align 8
  %20 = load i64, i64* @ACPI_NUM_PREDEFINED_REGIONS, align 8
  %21 = icmp uge i64 %19, %20
  br i1 %21, label %22, label %23

22:                                               ; preds = %18
  store i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.3, i64 0, i64 0), i8** %2, align 8
  br label %31

23:                                               ; preds = %18
  br label %24

24:                                               ; preds = %23
  br label %25

25:                                               ; preds = %24
  br label %26

26:                                               ; preds = %25
  %27 = load i8**, i8*** @acpi_gbl_region_types, align 8
  %28 = load i64, i64* %3, align 8
  %29 = getelementptr inbounds i8*, i8** %27, i64 %28
  %30 = load i8*, i8** %29, align 8
  store i8* %30, i8** %2, align 8
  br label %31

31:                                               ; preds = %26, %22, %17, %12, %7
  %32 = load i8*, i8** %2, align 8
  ret i8* %32
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

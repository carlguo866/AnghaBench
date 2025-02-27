; ModuleID = '/home/carl/AnghaBench/linux/drivers/acpi/acpica/extr_rsdump.c_acpi_rs_dump_resource_list.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/acpi/acpica/extr_rsdump.c_acpi_rs_dump_resource_list.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.acpi_resource = type { i64, %struct.TYPE_4__, i32 }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i64 }

@ACPI_LV_RESOURCES = common dso_local global i32 0, align 4
@_COMPONENT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [9 x i8] c"\0A[%02X] \00", align 1
@ACPI_RESOURCE_TYPE_MAX = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [47 x i8] c"Invalid descriptor type (%X) in resource list\0A\00", align 1
@.str.2 = private unnamed_addr constant [49 x i8] c"Invalid zero length descriptor in resource list\0A\00", align 1
@ACPI_RESOURCE_TYPE_SERIAL_BUS = common dso_local global i64 0, align 8
@acpi_gbl_dump_serial_bus_dispatch = common dso_local global i32* null, align 8
@acpi_gbl_dump_resource_dispatch = common dso_local global i32* null, align 8
@ACPI_RESOURCE_TYPE_END_TAG = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @acpi_rs_dump_resource_list(%struct.acpi_resource* %0) #0 {
  %2 = alloca %struct.acpi_resource*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  store %struct.acpi_resource* %0, %struct.acpi_resource** %2, align 8
  store i64 0, i64* %3, align 8
  %5 = call i32 (...) @ACPI_FUNCTION_ENTRY()
  %6 = load i32, i32* @ACPI_LV_RESOURCES, align 4
  %7 = load i32, i32* @_COMPONENT, align 4
  %8 = call i32 @ACPI_IS_DEBUG_ENABLED(i32 %6, i32 %7)
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %11, label %10

10:                                               ; preds = %1
  br label %66

11:                                               ; preds = %1
  br label %12

12:                                               ; preds = %62, %11
  %13 = load i64, i64* %3, align 8
  %14 = call i32 (i8*, ...) @acpi_os_printf(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i64 %13)
  %15 = load i64, i64* %3, align 8
  %16 = add i64 %15, 1
  store i64 %16, i64* %3, align 8
  %17 = load %struct.acpi_resource*, %struct.acpi_resource** %2, align 8
  %18 = getelementptr inbounds %struct.acpi_resource, %struct.acpi_resource* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  store i64 %19, i64* %4, align 8
  %20 = load i64, i64* %4, align 8
  %21 = load i64, i64* @ACPI_RESOURCE_TYPE_MAX, align 8
  %22 = icmp ugt i64 %20, %21
  br i1 %22, label %23, label %28

23:                                               ; preds = %12
  %24 = load %struct.acpi_resource*, %struct.acpi_resource** %2, align 8
  %25 = getelementptr inbounds %struct.acpi_resource, %struct.acpi_resource* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = call i32 (i8*, ...) @acpi_os_printf(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.1, i64 0, i64 0), i64 %26)
  br label %66

28:                                               ; preds = %12
  %29 = load %struct.acpi_resource*, %struct.acpi_resource** %2, align 8
  %30 = getelementptr inbounds %struct.acpi_resource, %struct.acpi_resource* %29, i32 0, i32 2
  %31 = load i32, i32* %30, align 8
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %35, label %33

33:                                               ; preds = %28
  %34 = call i32 (i8*, ...) @acpi_os_printf(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.2, i64 0, i64 0))
  br label %66

35:                                               ; preds = %28
  %36 = load i64, i64* %4, align 8
  %37 = load i64, i64* @ACPI_RESOURCE_TYPE_SERIAL_BUS, align 8
  %38 = icmp eq i64 %36, %37
  br i1 %38, label %39, label %51

39:                                               ; preds = %35
  %40 = load %struct.acpi_resource*, %struct.acpi_resource** %2, align 8
  %41 = getelementptr inbounds %struct.acpi_resource, %struct.acpi_resource* %40, i32 0, i32 1
  %42 = load i32*, i32** @acpi_gbl_dump_serial_bus_dispatch, align 8
  %43 = load %struct.acpi_resource*, %struct.acpi_resource** %2, align 8
  %44 = getelementptr inbounds %struct.acpi_resource, %struct.acpi_resource* %43, i32 0, i32 1
  %45 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %44, i32 0, i32 0
  %46 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = getelementptr inbounds i32, i32* %42, i64 %47
  %49 = load i32, i32* %48, align 4
  %50 = call i32 @acpi_rs_dump_descriptor(%struct.TYPE_4__* %41, i32 %49)
  br label %59

51:                                               ; preds = %35
  %52 = load %struct.acpi_resource*, %struct.acpi_resource** %2, align 8
  %53 = getelementptr inbounds %struct.acpi_resource, %struct.acpi_resource* %52, i32 0, i32 1
  %54 = load i32*, i32** @acpi_gbl_dump_resource_dispatch, align 8
  %55 = load i64, i64* %4, align 8
  %56 = getelementptr inbounds i32, i32* %54, i64 %55
  %57 = load i32, i32* %56, align 4
  %58 = call i32 @acpi_rs_dump_descriptor(%struct.TYPE_4__* %53, i32 %57)
  br label %59

59:                                               ; preds = %51, %39
  %60 = load %struct.acpi_resource*, %struct.acpi_resource** %2, align 8
  %61 = call %struct.acpi_resource* @ACPI_NEXT_RESOURCE(%struct.acpi_resource* %60)
  store %struct.acpi_resource* %61, %struct.acpi_resource** %2, align 8
  br label %62

62:                                               ; preds = %59
  %63 = load i64, i64* %4, align 8
  %64 = load i64, i64* @ACPI_RESOURCE_TYPE_END_TAG, align 8
  %65 = icmp ne i64 %63, %64
  br i1 %65, label %12, label %66

66:                                               ; preds = %10, %23, %33, %62
  ret void
}

declare dso_local i32 @ACPI_FUNCTION_ENTRY(...) #1

declare dso_local i32 @ACPI_IS_DEBUG_ENABLED(i32, i32) #1

declare dso_local i32 @acpi_os_printf(i8*, ...) #1

declare dso_local i32 @acpi_rs_dump_descriptor(%struct.TYPE_4__*, i32) #1

declare dso_local %struct.acpi_resource* @ACPI_NEXT_RESOURCE(%struct.acpi_resource*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

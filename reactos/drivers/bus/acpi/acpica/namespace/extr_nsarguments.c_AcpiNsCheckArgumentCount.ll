; ModuleID = '/home/carl/AnghaBench/reactos/drivers/bus/acpi/acpica/namespace/extr_nsarguments.c_AcpiNsCheckArgumentCount.c'
source_filename = "/home/carl/AnghaBench/reactos/drivers/bus/acpi/acpica/namespace/extr_nsarguments.c_AcpiNsCheckArgumentCount.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { i32, i64, %struct.TYPE_9__* }
%struct.TYPE_9__ = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i64 }
%struct.TYPE_11__ = type { %struct.TYPE_10__ }
%struct.TYPE_10__ = type { i32 }

@ANOBJ_EVALUATED = common dso_local global i32 0, align 4
@ACPI_TYPE_METHOD = common dso_local global i64 0, align 8
@AE_INFO = common dso_local global i32 0, align 4
@ACPI_WARN_ALWAYS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [58 x i8] c"%u arguments were passed to a non-method ACPI object (%s)\00", align 1
@.str.1 = private unnamed_addr constant [62 x i8] c"Insufficient arguments - Caller passed %u, method requires %u\00", align 1
@.str.2 = private unnamed_addr constant [56 x i8] c"Excess arguments - Caller passed %u, method requires %u\00", align 1
@.str.3 = private unnamed_addr constant [60 x i8] c"Insufficient arguments - Caller passed %u, ACPI requires %u\00", align 1
@ARG_COUNT_IS_MINIMUM = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [54 x i8] c"Excess arguments - Caller passed %u, ACPI requires %u\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @AcpiNsCheckArgumentCount(i8* %0, %struct.TYPE_12__* %1, i64 %2, %struct.TYPE_11__* %3) #0 {
  %5 = alloca i8*, align 8
  %6 = alloca %struct.TYPE_12__*, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.TYPE_11__*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  store i8* %0, i8** %5, align 8
  store %struct.TYPE_12__* %1, %struct.TYPE_12__** %6, align 8
  store i64 %2, i64* %7, align 8
  store %struct.TYPE_11__* %3, %struct.TYPE_11__** %8, align 8
  %11 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %12 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  %14 = load i32, i32* @ANOBJ_EVALUATED, align 4
  %15 = and i32 %13, %14
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %18

17:                                               ; preds = %4
  br label %111

18:                                               ; preds = %4
  %19 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %20 = icmp ne %struct.TYPE_11__* %19, null
  br i1 %20, label %73, label %21

21:                                               ; preds = %18
  %22 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %23 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %22, i32 0, i32 1
  %24 = load i64, i64* %23, align 8
  %25 = load i64, i64* @ACPI_TYPE_METHOD, align 8
  %26 = icmp ne i64 %24, %25
  br i1 %26, label %27, label %41

27:                                               ; preds = %21
  %28 = load i64, i64* %7, align 8
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %40

30:                                               ; preds = %27
  %31 = load i32, i32* @AE_INFO, align 4
  %32 = load i8*, i8** %5, align 8
  %33 = load i32, i32* @ACPI_WARN_ALWAYS, align 4
  %34 = load i64, i64* %7, align 8
  %35 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %36 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %35, i32 0, i32 1
  %37 = load i64, i64* %36, align 8
  %38 = call i32 @AcpiUtGetTypeName(i64 %37)
  %39 = call i32 @ACPI_INFO_PREDEFINED(i32 %38)
  br label %40

40:                                               ; preds = %30, %27
  br label %111

41:                                               ; preds = %21
  %42 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %43 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %42, i32 0, i32 2
  %44 = load %struct.TYPE_9__*, %struct.TYPE_9__** %43, align 8
  %45 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %44, i32 0, i32 0
  %46 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  store i64 %47, i64* %9, align 8
  %48 = load i64, i64* %7, align 8
  %49 = load i64, i64* %9, align 8
  %50 = icmp slt i64 %48, %49
  br i1 %50, label %51, label %59

51:                                               ; preds = %41
  %52 = load i32, i32* @AE_INFO, align 4
  %53 = load i8*, i8** %5, align 8
  %54 = load i32, i32* @ACPI_WARN_ALWAYS, align 4
  %55 = load i64, i64* %7, align 8
  %56 = load i64, i64* %9, align 8
  %57 = trunc i64 %56 to i32
  %58 = call i32 @ACPI_WARN_PREDEFINED(i32 %57)
  br label %72

59:                                               ; preds = %41
  %60 = load i64, i64* %7, align 8
  %61 = load i64, i64* %9, align 8
  %62 = icmp sgt i64 %60, %61
  br i1 %62, label %63, label %71

63:                                               ; preds = %59
  %64 = load i32, i32* @AE_INFO, align 4
  %65 = load i8*, i8** %5, align 8
  %66 = load i32, i32* @ACPI_WARN_ALWAYS, align 4
  %67 = load i64, i64* %7, align 8
  %68 = load i64, i64* %9, align 8
  %69 = trunc i64 %68 to i32
  %70 = call i32 @ACPI_INFO_PREDEFINED(i32 %69)
  br label %71

71:                                               ; preds = %63, %59
  br label %72

72:                                               ; preds = %71, %51
  br label %111

73:                                               ; preds = %18
  %74 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %75 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %74, i32 0, i32 0
  %76 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 4
  %78 = call i64 @METHOD_GET_ARG_COUNT(i32 %77)
  store i64 %78, i64* %10, align 8
  %79 = load i64, i64* %7, align 8
  %80 = load i64, i64* %10, align 8
  %81 = icmp slt i64 %79, %80
  br i1 %81, label %82, label %90

82:                                               ; preds = %73
  %83 = load i32, i32* @AE_INFO, align 4
  %84 = load i8*, i8** %5, align 8
  %85 = load i32, i32* @ACPI_WARN_ALWAYS, align 4
  %86 = load i64, i64* %7, align 8
  %87 = load i64, i64* %10, align 8
  %88 = trunc i64 %87 to i32
  %89 = call i32 @ACPI_WARN_PREDEFINED(i32 %88)
  br label %111

90:                                               ; preds = %73
  %91 = load i64, i64* %7, align 8
  %92 = load i64, i64* %10, align 8
  %93 = icmp sgt i64 %91, %92
  br i1 %93, label %94, label %110

94:                                               ; preds = %90
  %95 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %96 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %95, i32 0, i32 0
  %97 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %96, i32 0, i32 0
  %98 = load i32, i32* %97, align 4
  %99 = load i32, i32* @ARG_COUNT_IS_MINIMUM, align 4
  %100 = and i32 %98, %99
  %101 = icmp ne i32 %100, 0
  br i1 %101, label %110, label %102

102:                                              ; preds = %94
  %103 = load i32, i32* @AE_INFO, align 4
  %104 = load i8*, i8** %5, align 8
  %105 = load i32, i32* @ACPI_WARN_ALWAYS, align 4
  %106 = load i64, i64* %7, align 8
  %107 = load i64, i64* %10, align 8
  %108 = trunc i64 %107 to i32
  %109 = call i32 @ACPI_INFO_PREDEFINED(i32 %108)
  br label %110

110:                                              ; preds = %102, %94, %90
  br label %111

111:                                              ; preds = %17, %40, %72, %110, %82
  ret void
}

declare dso_local i32 @ACPI_INFO_PREDEFINED(i32) #1

declare dso_local i32 @AcpiUtGetTypeName(i64) #1

declare dso_local i32 @ACPI_WARN_PREDEFINED(i32) #1

declare dso_local i64 @METHOD_GET_ARG_COUNT(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/reactos/drivers/bus/acpi/acpica/utilities/extr_utdecode.c_AcpiUtGetNodeName.c'
source_filename = "/home/carl/AnghaBench/reactos/drivers/bus/acpi/acpica/utilities/extr_utdecode.c_AcpiUtGetNodeName.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i8* }

@.str = private unnamed_addr constant [5 x i8] c"NULL\00", align 1
@ACPI_ROOT_OBJECT = common dso_local global i8* null, align 8
@AcpiGbl_RootNode = common dso_local global i8* null, align 8
@.str.1 = private unnamed_addr constant [5 x i8] c"\22\\\22 \00", align 1
@ACPI_DESC_TYPE_NAMED = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [5 x i8] c"####\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @AcpiUtGetNodeName(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca %struct.TYPE_5__*, align 8
  store i8* %0, i8** %3, align 8
  %5 = load i8*, i8** %3, align 8
  %6 = bitcast i8* %5 to %struct.TYPE_5__*
  store %struct.TYPE_5__* %6, %struct.TYPE_5__** %4, align 8
  %7 = load i8*, i8** %3, align 8
  %8 = icmp ne i8* %7, null
  br i1 %8, label %10, label %9

9:                                                ; preds = %1
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i8** %2, align 8
  br label %35

10:                                               ; preds = %1
  %11 = load i8*, i8** %3, align 8
  %12 = load i8*, i8** @ACPI_ROOT_OBJECT, align 8
  %13 = icmp eq i8* %11, %12
  br i1 %13, label %18, label %14

14:                                               ; preds = %10
  %15 = load i8*, i8** %3, align 8
  %16 = load i8*, i8** @AcpiGbl_RootNode, align 8
  %17 = icmp eq i8* %15, %16
  br i1 %17, label %18, label %19

18:                                               ; preds = %14, %10
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i8** %2, align 8
  br label %35

19:                                               ; preds = %14
  %20 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %21 = call i64 @ACPI_GET_DESCRIPTOR_TYPE(%struct.TYPE_5__* %20)
  %22 = load i64, i64* @ACPI_DESC_TYPE_NAMED, align 8
  %23 = icmp ne i64 %21, %22
  br i1 %23, label %24, label %25

24:                                               ; preds = %19
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0), i8** %2, align 8
  br label %35

25:                                               ; preds = %19
  %26 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %27 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %27, i32 0, i32 0
  %29 = load i8*, i8** %28, align 8
  %30 = call i32 @AcpiUtRepairName(i8* %29)
  %31 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %32 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %32, i32 0, i32 0
  %34 = load i8*, i8** %33, align 8
  store i8* %34, i8** %2, align 8
  br label %35

35:                                               ; preds = %25, %24, %18, %9
  %36 = load i8*, i8** %2, align 8
  ret i8* %36
}

declare dso_local i64 @ACPI_GET_DESCRIPTOR_TYPE(%struct.TYPE_5__*) #1

declare dso_local i32 @AcpiUtRepairName(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

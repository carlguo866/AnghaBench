; ModuleID = '/home/carl/AnghaBench/reactos/drivers/bus/acpi/acpica/executer/extr_exstore.c_AcpiExStoreDirectToNode.c'
source_filename = "/home/carl/AnghaBench/reactos/drivers/bus/acpi/acpica/executer/extr_exstore.c_AcpiExStoreDirectToNode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_13__ = type { %struct.TYPE_12__ }
%struct.TYPE_12__ = type { i32 }
%struct.TYPE_14__ = type { i32 }

@ExStoreDirectToNode = common dso_local global i32 0, align 4
@ACPI_DB_EXEC = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [76 x i8] c"Storing [%s] (%p) directly into node [%s] (%p) with no implicit conversion\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_13__*, %struct.TYPE_14__*, i32*)* @AcpiExStoreDirectToNode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @AcpiExStoreDirectToNode(%struct.TYPE_13__* %0, %struct.TYPE_14__* %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_13__*, align 8
  %6 = alloca %struct.TYPE_14__*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_13__*, align 8
  store %struct.TYPE_13__* %0, %struct.TYPE_13__** %5, align 8
  store %struct.TYPE_14__* %1, %struct.TYPE_14__** %6, align 8
  store i32* %2, i32** %7, align 8
  %10 = load i32, i32* @ExStoreDirectToNode, align 4
  %11 = call i32 @ACPI_FUNCTION_TRACE(i32 %10)
  %12 = load i32, i32* @ACPI_DB_EXEC, align 4
  %13 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %14 = call i32 @AcpiUtGetObjectTypeName(%struct.TYPE_13__* %13)
  %15 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %16 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %17 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = call i32 @AcpiUtGetTypeName(i32 %18)
  %20 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %21 = ptrtoint %struct.TYPE_14__* %20 to i32
  %22 = call i32 @ACPI_DEBUG_PRINT(i32 %21)
  %23 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %24 = load i32*, i32** %7, align 8
  %25 = call i32 @AcpiUtCopyIobjectToIobject(%struct.TYPE_13__* %23, %struct.TYPE_13__** %9, i32* %24)
  store i32 %25, i32* %8, align 4
  %26 = load i32, i32* %8, align 4
  %27 = call i64 @ACPI_FAILURE(i32 %26)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %32

29:                                               ; preds = %3
  %30 = load i32, i32* %8, align 4
  %31 = call i32 @return_ACPI_STATUS(i32 %30)
  br label %32

32:                                               ; preds = %29, %3
  %33 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %34 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %35 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %36 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = call i32 @AcpiNsAttachObject(%struct.TYPE_14__* %33, %struct.TYPE_13__* %34, i32 %38)
  store i32 %39, i32* %8, align 4
  %40 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %41 = call i32 @AcpiUtRemoveReference(%struct.TYPE_13__* %40)
  %42 = load i32, i32* %8, align 4
  %43 = call i32 @return_ACPI_STATUS(i32 %42)
  %44 = load i32, i32* %4, align 4
  ret i32 %44
}

declare dso_local i32 @ACPI_FUNCTION_TRACE(i32) #1

declare dso_local i32 @ACPI_DEBUG_PRINT(i32) #1

declare dso_local i32 @AcpiUtGetObjectTypeName(%struct.TYPE_13__*) #1

declare dso_local i32 @AcpiUtGetTypeName(i32) #1

declare dso_local i32 @AcpiUtCopyIobjectToIobject(%struct.TYPE_13__*, %struct.TYPE_13__**, i32*) #1

declare dso_local i64 @ACPI_FAILURE(i32) #1

declare dso_local i32 @return_ACPI_STATUS(i32) #1

declare dso_local i32 @AcpiNsAttachObject(%struct.TYPE_14__*, %struct.TYPE_13__*, i32) #1

declare dso_local i32 @AcpiUtRemoveReference(%struct.TYPE_13__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

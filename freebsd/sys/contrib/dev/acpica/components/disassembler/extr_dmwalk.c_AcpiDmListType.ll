; ModuleID = '/home/carl/AnghaBench/freebsd/sys/contrib/dev/acpica/components/disassembler/extr_dmwalk.c_AcpiDmListType.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/contrib/dev/acpica/components/disassembler/extr_dmwalk.c_AcpiDmListType.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_8__ = type { i32 }

@BLOCK_NONE = common dso_local global i32 0, align 4
@BLOCK_COMMA_LIST = common dso_local global i32 0, align 4
@AML_HAS_ARGS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @AcpiDmListType(%struct.TYPE_7__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_7__*, align 8
  %4 = alloca %struct.TYPE_8__*, align 8
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %3, align 8
  %5 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %6 = icmp ne %struct.TYPE_7__* %5, null
  br i1 %6, label %9, label %7

7:                                                ; preds = %1
  %8 = load i32, i32* @BLOCK_NONE, align 4
  store i32 %8, i32* %2, align 4
  br label %34

9:                                                ; preds = %1
  %10 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %11 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  switch i32 %13, label %18 [
    i32 139, label %14
    i32 135, label %14
    i32 140, label %14
    i32 131, label %14
    i32 133, label %14
    i32 132, label %14
    i32 130, label %14
    i32 137, label %14
    i32 128, label %14
    i32 138, label %14
    i32 136, label %14
    i32 142, label %14
    i32 141, label %16
    i32 134, label %16
    i32 129, label %16
  ]

14:                                               ; preds = %9, %9, %9, %9, %9, %9, %9, %9, %9, %9, %9, %9
  %15 = load i32, i32* @BLOCK_NONE, align 4
  store i32 %15, i32* %2, align 4
  br label %34

16:                                               ; preds = %9, %9, %9
  %17 = load i32, i32* @BLOCK_COMMA_LIST, align 4
  store i32 %17, i32* %2, align 4
  br label %34

18:                                               ; preds = %9
  %19 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %20 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = call %struct.TYPE_8__* @AcpiPsGetOpcodeInfo(i32 %22)
  store %struct.TYPE_8__* %23, %struct.TYPE_8__** %4, align 8
  %24 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %25 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = load i32, i32* @AML_HAS_ARGS, align 4
  %28 = and i32 %26, %27
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %32

30:                                               ; preds = %18
  %31 = load i32, i32* @BLOCK_COMMA_LIST, align 4
  store i32 %31, i32* %2, align 4
  br label %34

32:                                               ; preds = %18
  %33 = load i32, i32* @BLOCK_NONE, align 4
  store i32 %33, i32* %2, align 4
  br label %34

34:                                               ; preds = %32, %30, %16, %14, %7
  %35 = load i32, i32* %2, align 4
  ret i32 %35
}

declare dso_local %struct.TYPE_8__* @AcpiPsGetOpcodeInfo(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/elftoolchain/libdwarf/extr_dwarf_die.c_dwarf_dieoffset.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/elftoolchain/libdwarf/extr_dwarf_die.c_dwarf_dieoffset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32* }

@DW_DLE_ARGUMENT = common dso_local global i32 0, align 4
@DW_DLV_ERROR = common dso_local global i32 0, align 4
@DW_DLV_OK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @dwarf_dieoffset(%struct.TYPE_3__* %0, i32* %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_3__*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32* %2, i32** %7, align 8
  %9 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %10 = icmp ne %struct.TYPE_3__* %9, null
  br i1 %10, label %11, label %15

11:                                               ; preds = %3
  %12 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %13 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %12, i32 0, i32 1
  %14 = load i32*, i32** %13, align 8
  br label %16

15:                                               ; preds = %3
  br label %16

16:                                               ; preds = %15, %11
  %17 = phi i32* [ %14, %11 ], [ null, %15 ]
  store i32* %17, i32** %8, align 8
  %18 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %19 = icmp eq %struct.TYPE_3__* %18, null
  br i1 %19, label %23, label %20

20:                                               ; preds = %16
  %21 = load i32*, i32** %6, align 8
  %22 = icmp eq i32* %21, null
  br i1 %22, label %23, label %29

23:                                               ; preds = %20, %16
  %24 = load i32*, i32** %8, align 8
  %25 = load i32*, i32** %7, align 8
  %26 = load i32, i32* @DW_DLE_ARGUMENT, align 4
  %27 = call i32 @DWARF_SET_ERROR(i32* %24, i32* %25, i32 %26)
  %28 = load i32, i32* @DW_DLV_ERROR, align 4
  store i32 %28, i32* %4, align 4
  br label %35

29:                                               ; preds = %20
  %30 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %31 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = load i32*, i32** %6, align 8
  store i32 %32, i32* %33, align 4
  %34 = load i32, i32* @DW_DLV_OK, align 4
  store i32 %34, i32* %4, align 4
  br label %35

35:                                               ; preds = %29, %23
  %36 = load i32, i32* %4, align 4
  ret i32 %36
}

declare dso_local i32 @DWARF_SET_ERROR(i32*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

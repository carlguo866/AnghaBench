; ModuleID = '/home/carl/AnghaBench/freebsd/cddl/contrib/opensolaris/tools/ctf/cvt/extr_dwarf.c_die_sibling.c'
source_filename = "/home/carl/AnghaBench/freebsd/cddl/contrib/opensolaris/tools/ctf/cvt/extr_dwarf.c_die_sibling.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i32 }

@DW_DLV_OK = common dso_local global i32 0, align 4
@DW_DLV_NO_ENTRY = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [43 x i8] c"die %llu: failed to find type sibling: %s\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (%struct.TYPE_4__*, i32*)* @die_sibling to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @die_sibling(%struct.TYPE_4__* %0, i32* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca %struct.TYPE_4__*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %4, align 8
  store i32* %1, i32** %5, align 8
  %8 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %9 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %8, i32 0, i32 1
  %10 = load i32, i32* %9, align 4
  %11 = load i32*, i32** %5, align 8
  %12 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %13 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %12, i32 0, i32 0
  %14 = call i32 @dwarf_siblingof(i32 %10, i32* %11, i32** %6, i32* %13)
  store i32 %14, i32* %7, align 4
  %15 = load i32, i32* @DW_DLV_OK, align 4
  %16 = icmp eq i32 %14, %15
  br i1 %16, label %17, label %19

17:                                               ; preds = %2
  %18 = load i32*, i32** %6, align 8
  store i32* %18, i32** %3, align 8
  br label %34

19:                                               ; preds = %2
  %20 = load i32, i32* %7, align 4
  %21 = load i32, i32* @DW_DLV_NO_ENTRY, align 4
  %22 = icmp eq i32 %20, %21
  br i1 %22, label %23, label %24

23:                                               ; preds = %19
  store i32* null, i32** %3, align 8
  br label %34

24:                                               ; preds = %19
  br label %25

25:                                               ; preds = %24
  %26 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %27 = load i32*, i32** %5, align 8
  %28 = call i32 @die_off(%struct.TYPE_4__* %26, i32* %27)
  %29 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %30 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = call i32 @dwarf_errmsg(i32 %31)
  %33 = call i32 @terminate(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str, i64 0, i64 0), i32 %28, i32 %32)
  store i32* null, i32** %3, align 8
  br label %34

34:                                               ; preds = %25, %23, %17
  %35 = load i32*, i32** %3, align 8
  ret i32* %35
}

declare dso_local i32 @dwarf_siblingof(i32, i32*, i32**, i32*) #1

declare dso_local i32 @terminate(i8*, i32, i32) #1

declare dso_local i32 @die_off(%struct.TYPE_4__*, i32*) #1

declare dso_local i32 @dwarf_errmsg(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

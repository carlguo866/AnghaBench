; ModuleID = '/home/carl/AnghaBench/linux/tools/perf/util/extr_dwarf-aux.c___die_get_real_type.c'
source_filename = "/home/carl/AnghaBench/linux/tools/perf/util/extr_dwarf-aux.c___die_get_real_type.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@DW_TAG_const_type = common dso_local global i32 0, align 4
@DW_TAG_restrict_type = common dso_local global i32 0, align 4
@DW_TAG_volatile_type = common dso_local global i32 0, align 4
@DW_TAG_shared_type = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i32*, i32*)* @__die_get_real_type to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @__die_get_real_type(i32* %0, i32* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  store i32* %0, i32** %3, align 8
  store i32* %1, i32** %4, align 8
  br label %6

6:                                                ; preds = %32, %2
  %7 = load i32*, i32** %3, align 8
  %8 = load i32*, i32** %4, align 8
  %9 = call i32* @die_get_type(i32* %7, i32* %8)
  store i32* %9, i32** %3, align 8
  %10 = load i32*, i32** %3, align 8
  %11 = icmp ne i32* %10, null
  br i1 %11, label %13, label %12

12:                                               ; preds = %6
  br label %34

13:                                               ; preds = %6
  %14 = load i32*, i32** %3, align 8
  %15 = call i32 @dwarf_tag(i32* %14)
  store i32 %15, i32* %5, align 4
  br label %16

16:                                               ; preds = %13
  %17 = load i32, i32* %5, align 4
  %18 = load i32, i32* @DW_TAG_const_type, align 4
  %19 = icmp eq i32 %17, %18
  br i1 %19, label %32, label %20

20:                                               ; preds = %16
  %21 = load i32, i32* %5, align 4
  %22 = load i32, i32* @DW_TAG_restrict_type, align 4
  %23 = icmp eq i32 %21, %22
  br i1 %23, label %32, label %24

24:                                               ; preds = %20
  %25 = load i32, i32* %5, align 4
  %26 = load i32, i32* @DW_TAG_volatile_type, align 4
  %27 = icmp eq i32 %25, %26
  br i1 %27, label %32, label %28

28:                                               ; preds = %24
  %29 = load i32, i32* %5, align 4
  %30 = load i32, i32* @DW_TAG_shared_type, align 4
  %31 = icmp eq i32 %29, %30
  br label %32

32:                                               ; preds = %28, %24, %20, %16
  %33 = phi i1 [ true, %24 ], [ true, %20 ], [ true, %16 ], [ %31, %28 ]
  br i1 %33, label %6, label %34

34:                                               ; preds = %32, %12
  %35 = load i32*, i32** %3, align 8
  ret i32* %35
}

declare dso_local i32* @die_get_type(i32*, i32*) #1

declare dso_local i32 @dwarf_tag(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

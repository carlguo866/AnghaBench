; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_dwarf2read.c_dwarf2_get_ref_die_offset.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_dwarf2read.c_dwarf2_get_ref_die_offset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.attribute = type { i32 }
%struct.dwarf2_cu = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@symfile_complaints = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [41 x i8] c"unsupported die ref attribute form: '%s'\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.attribute*, %struct.dwarf2_cu*)* @dwarf2_get_ref_die_offset to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dwarf2_get_ref_die_offset(%struct.attribute* %0, %struct.dwarf2_cu* %1) #0 {
  %3 = alloca %struct.attribute*, align 8
  %4 = alloca %struct.dwarf2_cu*, align 8
  %5 = alloca i32, align 4
  store %struct.attribute* %0, %struct.attribute** %3, align 8
  store %struct.dwarf2_cu* %1, %struct.dwarf2_cu** %4, align 8
  store i32 0, i32* %5, align 4
  %6 = load %struct.attribute*, %struct.attribute** %3, align 8
  %7 = getelementptr inbounds %struct.attribute, %struct.attribute* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  switch i32 %8, label %20 [
    i32 129, label %9
    i32 133, label %12
    i32 132, label %12
    i32 131, label %12
    i32 130, label %12
    i32 128, label %12
  ]

9:                                                ; preds = %2
  %10 = load %struct.attribute*, %struct.attribute** %3, align 8
  %11 = call i32 @DW_ADDR(%struct.attribute* %10)
  store i32 %11, i32* %5, align 4
  br label %26

12:                                               ; preds = %2, %2, %2, %2, %2
  %13 = load %struct.dwarf2_cu*, %struct.dwarf2_cu** %4, align 8
  %14 = getelementptr inbounds %struct.dwarf2_cu, %struct.dwarf2_cu* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = load %struct.attribute*, %struct.attribute** %3, align 8
  %18 = call i32 @DW_UNSND(%struct.attribute* %17)
  %19 = add i32 %16, %18
  store i32 %19, i32* %5, align 4
  br label %26

20:                                               ; preds = %2
  %21 = load %struct.attribute*, %struct.attribute** %3, align 8
  %22 = getelementptr inbounds %struct.attribute, %struct.attribute* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = call i32 @dwarf_form_name(i32 %23)
  %25 = call i32 @complaint(i32* @symfile_complaints, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0), i32 %24)
  br label %26

26:                                               ; preds = %20, %12, %9
  %27 = load i32, i32* %5, align 4
  ret i32 %27
}

declare dso_local i32 @DW_ADDR(%struct.attribute*) #1

declare dso_local i32 @DW_UNSND(%struct.attribute*) #1

declare dso_local i32 @complaint(i32*, i8*, i32) #1

declare dso_local i32 @dwarf_form_name(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

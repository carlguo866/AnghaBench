; ModuleID = '/home/carl/AnghaBench/freebsd/sys/contrib/libfdt/extr_fdt_overlay.c_overlay_update_local_references.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/contrib/libfdt/extr_fdt_overlay.c_overlay_update_local_references.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [18 x i8] c"/__local_fixups__\00", align 1
@FDT_ERR_NOTFOUND = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i32)* @overlay_update_local_references to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @overlay_update_local_references(i8* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store i32 %1, i32* %5, align 4
  %7 = load i8*, i8** %4, align 8
  %8 = call i32 @fdt_path_offset(i8* %7, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0))
  store i32 %8, i32* %6, align 4
  %9 = load i32, i32* %6, align 4
  %10 = icmp slt i32 %9, 0
  br i1 %10, label %11, label %19

11:                                               ; preds = %2
  %12 = load i32, i32* %6, align 4
  %13 = load i32, i32* @FDT_ERR_NOTFOUND, align 4
  %14 = sub nsw i32 0, %13
  %15 = icmp eq i32 %12, %14
  br i1 %15, label %16, label %17

16:                                               ; preds = %11
  store i32 0, i32* %3, align 4
  br label %24

17:                                               ; preds = %11
  %18 = load i32, i32* %6, align 4
  store i32 %18, i32* %3, align 4
  br label %24

19:                                               ; preds = %2
  %20 = load i8*, i8** %4, align 8
  %21 = load i32, i32* %6, align 4
  %22 = load i32, i32* %5, align 4
  %23 = call i32 @overlay_update_local_node_references(i8* %20, i32 0, i32 %21, i32 %22)
  store i32 %23, i32* %3, align 4
  br label %24

24:                                               ; preds = %19, %17, %16
  %25 = load i32, i32* %3, align 4
  ret i32 %25
}

declare dso_local i32 @fdt_path_offset(i8*, i8*) #1

declare dso_local i32 @overlay_update_local_node_references(i8*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

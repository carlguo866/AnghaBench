; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/dtc/libfdt/extr_fdt_ro.c_fdt_get_max_phandle.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/dtc/libfdt/extr_fdt_ro.c_fdt_get_max_phandle.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@FDT_ERR_NOTFOUND = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @fdt_get_max_phandle(i8* %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  store i8* %0, i8** %3, align 8
  store i64 0, i64* %4, align 8
  %7 = load i8*, i8** %3, align 8
  %8 = call i32 @fdt_next_node(i8* %7, i32 -1, i32* null)
  store i32 %8, i32* %5, align 4
  br label %9

9:                                                ; preds = %34, %1
  %10 = load i32, i32* %5, align 4
  %11 = load i32, i32* @FDT_ERR_NOTFOUND, align 4
  %12 = sub nsw i32 0, %11
  %13 = icmp eq i32 %10, %12
  br i1 %13, label %14, label %16

14:                                               ; preds = %9
  %15 = load i64, i64* %4, align 8
  store i64 %15, i64* %2, align 8
  br label %38

16:                                               ; preds = %9
  %17 = load i32, i32* %5, align 4
  %18 = icmp slt i32 %17, 0
  br i1 %18, label %19, label %20

19:                                               ; preds = %16
  store i64 -1, i64* %2, align 8
  br label %38

20:                                               ; preds = %16
  %21 = load i8*, i8** %3, align 8
  %22 = load i32, i32* %5, align 4
  %23 = call i64 @fdt_get_phandle(i8* %21, i32 %22)
  store i64 %23, i64* %6, align 8
  %24 = load i64, i64* %6, align 8
  %25 = icmp eq i64 %24, -1
  br i1 %25, label %26, label %27

26:                                               ; preds = %20
  br label %34

27:                                               ; preds = %20
  %28 = load i64, i64* %6, align 8
  %29 = load i64, i64* %4, align 8
  %30 = icmp sgt i64 %28, %29
  br i1 %30, label %31, label %33

31:                                               ; preds = %27
  %32 = load i64, i64* %6, align 8
  store i64 %32, i64* %4, align 8
  br label %33

33:                                               ; preds = %31, %27
  br label %34

34:                                               ; preds = %33, %26
  %35 = load i8*, i8** %3, align 8
  %36 = load i32, i32* %5, align 4
  %37 = call i32 @fdt_next_node(i8* %35, i32 %36, i32* null)
  store i32 %37, i32* %5, align 4
  br label %9

38:                                               ; preds = %19, %14
  %39 = load i64, i64* %2, align 8
  ret i64 %39
}

declare dso_local i32 @fdt_next_node(i8*, i32, i32*) #1

declare dso_local i64 @fdt_get_phandle(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

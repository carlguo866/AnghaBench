; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/scripts/dtc/libfdt/extr_fdt_ro.c_fdt_node_offset_by_prop_value.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/scripts/dtc/libfdt/extr_fdt_ro.c_fdt_node_offset_by_prop_value.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @fdt_node_offset_by_prop_value(i8* %0, i32 %1, i8* %2, i8* %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i8*, align 8
  %14 = alloca i32, align 4
  store i8* %0, i8** %7, align 8
  store i32 %1, i32* %8, align 4
  store i8* %2, i8** %9, align 8
  store i8* %3, i8** %10, align 8
  store i32 %4, i32* %11, align 4
  %15 = load i8*, i8** %7, align 8
  %16 = call i32 @FDT_CHECK_HEADER(i8* %15)
  %17 = load i8*, i8** %7, align 8
  %18 = load i32, i32* %8, align 4
  %19 = call i32 @fdt_next_node(i8* %17, i32 %18, i32* null)
  store i32 %19, i32* %12, align 4
  br label %20

20:                                               ; preds = %43, %5
  %21 = load i32, i32* %12, align 4
  %22 = icmp sge i32 %21, 0
  br i1 %22, label %23, label %47

23:                                               ; preds = %20
  %24 = load i8*, i8** %7, align 8
  %25 = load i32, i32* %12, align 4
  %26 = load i8*, i8** %9, align 8
  %27 = call i8* @fdt_getprop(i8* %24, i32 %25, i8* %26, i32* %14)
  store i8* %27, i8** %13, align 8
  %28 = load i8*, i8** %13, align 8
  %29 = icmp ne i8* %28, null
  br i1 %29, label %30, label %42

30:                                               ; preds = %23
  %31 = load i32, i32* %14, align 4
  %32 = load i32, i32* %11, align 4
  %33 = icmp eq i32 %31, %32
  br i1 %33, label %34, label %42

34:                                               ; preds = %30
  %35 = load i8*, i8** %13, align 8
  %36 = load i8*, i8** %10, align 8
  %37 = load i32, i32* %14, align 4
  %38 = call i64 @memcmp(i8* %35, i8* %36, i32 %37)
  %39 = icmp eq i64 %38, 0
  br i1 %39, label %40, label %42

40:                                               ; preds = %34
  %41 = load i32, i32* %12, align 4
  store i32 %41, i32* %6, align 4
  br label %49

42:                                               ; preds = %34, %30, %23
  br label %43

43:                                               ; preds = %42
  %44 = load i8*, i8** %7, align 8
  %45 = load i32, i32* %12, align 4
  %46 = call i32 @fdt_next_node(i8* %44, i32 %45, i32* null)
  store i32 %46, i32* %12, align 4
  br label %20

47:                                               ; preds = %20
  %48 = load i32, i32* %12, align 4
  store i32 %48, i32* %6, align 4
  br label %49

49:                                               ; preds = %47, %40
  %50 = load i32, i32* %6, align 4
  ret i32 %50
}

declare dso_local i32 @FDT_CHECK_HEADER(i8*) #1

declare dso_local i32 @fdt_next_node(i8*, i32, i32*) #1

declare dso_local i8* @fdt_getprop(i8*, i32, i8*, i32*) #1

declare dso_local i64 @memcmp(i8*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/dtc/libfdt/extr_fdt_ro.c_fdt_get_name.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/dtc/libfdt/extr_fdt_ro.c_fdt_get_name.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fdt_node_header = type { i8* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @fdt_get_name(i8* %0, i32 %1, i32* %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca %struct.fdt_node_header*, align 8
  %9 = alloca i32, align 4
  store i8* %0, i8** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32* %2, i32** %7, align 8
  %10 = load i8*, i8** %5, align 8
  %11 = load i32, i32* %6, align 4
  %12 = call %struct.fdt_node_header* @_fdt_offset_ptr(i8* %10, i32 %11)
  store %struct.fdt_node_header* %12, %struct.fdt_node_header** %8, align 8
  %13 = load i8*, i8** %5, align 8
  %14 = call i32 @fdt_check_header(i8* %13)
  store i32 %14, i32* %9, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %21, label %16

16:                                               ; preds = %3
  %17 = load i8*, i8** %5, align 8
  %18 = load i32, i32* %6, align 4
  %19 = call i32 @_fdt_check_node_offset(i8* %17, i32 %18)
  store i32 %19, i32* %9, align 4
  %20 = icmp slt i32 %19, 0
  br i1 %20, label %21, label %22

21:                                               ; preds = %16, %3
  br label %35

22:                                               ; preds = %16
  %23 = load i32*, i32** %7, align 8
  %24 = icmp ne i32* %23, null
  br i1 %24, label %25, label %31

25:                                               ; preds = %22
  %26 = load %struct.fdt_node_header*, %struct.fdt_node_header** %8, align 8
  %27 = getelementptr inbounds %struct.fdt_node_header, %struct.fdt_node_header* %26, i32 0, i32 0
  %28 = load i8*, i8** %27, align 8
  %29 = call i32 @strlen(i8* %28)
  %30 = load i32*, i32** %7, align 8
  store i32 %29, i32* %30, align 4
  br label %31

31:                                               ; preds = %25, %22
  %32 = load %struct.fdt_node_header*, %struct.fdt_node_header** %8, align 8
  %33 = getelementptr inbounds %struct.fdt_node_header, %struct.fdt_node_header* %32, i32 0, i32 0
  %34 = load i8*, i8** %33, align 8
  store i8* %34, i8** %4, align 8
  br label %42

35:                                               ; preds = %21
  %36 = load i32*, i32** %7, align 8
  %37 = icmp ne i32* %36, null
  br i1 %37, label %38, label %41

38:                                               ; preds = %35
  %39 = load i32, i32* %9, align 4
  %40 = load i32*, i32** %7, align 8
  store i32 %39, i32* %40, align 4
  br label %41

41:                                               ; preds = %38, %35
  store i8* null, i8** %4, align 8
  br label %42

42:                                               ; preds = %41, %31
  %43 = load i8*, i8** %4, align 8
  ret i8* %43
}

declare dso_local %struct.fdt_node_header* @_fdt_offset_ptr(i8*, i32) #1

declare dso_local i32 @fdt_check_header(i8*) #1

declare dso_local i32 @_fdt_check_node_offset(i8*, i32) #1

declare dso_local i32 @strlen(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

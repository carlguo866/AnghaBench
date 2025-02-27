; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/mlx5/mlx5_fpga_tools/extr_mlx5fpga_tools_char.c_tools_char_read.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/mlx5/mlx5_fpga_tools/extr_mlx5fpga_tools_char.c_tools_char_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cdev = type { i32 }
%struct.uio = type { i64, i32 }
%struct.tools_context = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@.str = private unnamed_addr constant [46 x i8] c"tools char device reading %zu bytes at 0x%jx\0A\00", align 1
@M_DEVBUF = common dso_local global i32 0, align 4
@M_WAITOK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cdev*, %struct.uio*, i32)* @tools_char_read to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tools_char_read(%struct.cdev* %0, %struct.uio* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.cdev*, align 8
  %6 = alloca %struct.uio*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.tools_context*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  store %struct.cdev* %0, %struct.cdev** %5, align 8
  store %struct.uio* %1, %struct.uio** %6, align 8
  store i32 %2, i32* %7, align 4
  %13 = bitcast %struct.tools_context** %8 to i8**
  %14 = call i32 @devfs_get_cdevpriv(i8** %13)
  store i32 %14, i32* %12, align 4
  %15 = load i32, i32* %12, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %19

17:                                               ; preds = %3
  %18 = load i32, i32* %12, align 4
  store i32 %18, i32* %4, align 4
  br label %69

19:                                               ; preds = %3
  %20 = load %struct.tools_context*, %struct.tools_context** %8, align 8
  %21 = getelementptr inbounds %struct.tools_context, %struct.tools_context* %20, i32 0, i32 1
  %22 = load %struct.TYPE_2__*, %struct.TYPE_2__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = call i32 @mlx5_fpga_dev(i32 %24)
  %26 = load %struct.uio*, %struct.uio** %6, align 8
  %27 = getelementptr inbounds %struct.uio, %struct.uio* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 8
  %29 = load %struct.uio*, %struct.uio** %6, align 8
  %30 = getelementptr inbounds %struct.uio, %struct.uio* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = trunc i64 %31 to i32
  %33 = call i32 @dev_dbg(i32 %25, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str, i64 0, i64 0), i32 %28, i32 %32)
  %34 = load %struct.tools_context*, %struct.tools_context** %8, align 8
  %35 = load %struct.uio*, %struct.uio** %6, align 8
  %36 = call i32 @tools_char_llseek(%struct.tools_context* %34, %struct.uio* %35, i64* %10)
  %37 = load i64, i64* %10, align 8
  %38 = icmp eq i64 %37, 0
  br i1 %38, label %39, label %40

39:                                               ; preds = %19
  store i32 0, i32* %4, align 4
  br label %69

40:                                               ; preds = %19
  %41 = load i64, i64* %10, align 8
  %42 = load i32, i32* @M_DEVBUF, align 4
  %43 = load i32, i32* @M_WAITOK, align 4
  %44 = call i8* @malloc(i64 %41, i32 %42, i32 %43)
  store i8* %44, i8** %9, align 8
  %45 = load %struct.tools_context*, %struct.tools_context** %8, align 8
  %46 = getelementptr inbounds %struct.tools_context, %struct.tools_context* %45, i32 0, i32 1
  %47 = load %struct.TYPE_2__*, %struct.TYPE_2__** %46, align 8
  %48 = load i8*, i8** %9, align 8
  %49 = load i64, i64* %10, align 8
  %50 = load %struct.uio*, %struct.uio** %6, align 8
  %51 = getelementptr inbounds %struct.uio, %struct.uio* %50, i32 0, i32 0
  %52 = load i64, i64* %51, align 8
  %53 = load %struct.tools_context*, %struct.tools_context** %8, align 8
  %54 = getelementptr inbounds %struct.tools_context, %struct.tools_context* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 8
  %56 = call i32 @mem_read(%struct.TYPE_2__* %47, i8* %48, i64 %49, i64 %52, i32 %55, i64* %11)
  store i32 %56, i32* %12, align 4
  %57 = load i32, i32* %12, align 4
  %58 = icmp eq i32 %57, 0
  br i1 %58, label %59, label %64

59:                                               ; preds = %40
  %60 = load i8*, i8** %9, align 8
  %61 = load i64, i64* %11, align 8
  %62 = load %struct.uio*, %struct.uio** %6, align 8
  %63 = call i32 @uiomove(i8* %60, i64 %61, %struct.uio* %62)
  store i32 %63, i32* %12, align 4
  br label %64

64:                                               ; preds = %59, %40
  %65 = load i8*, i8** %9, align 8
  %66 = load i32, i32* @M_DEVBUF, align 4
  %67 = call i32 @free(i8* %65, i32 %66)
  %68 = load i32, i32* %12, align 4
  store i32 %68, i32* %4, align 4
  br label %69

69:                                               ; preds = %64, %39, %17
  %70 = load i32, i32* %4, align 4
  ret i32 %70
}

declare dso_local i32 @devfs_get_cdevpriv(i8**) #1

declare dso_local i32 @dev_dbg(i32, i8*, i32, i32) #1

declare dso_local i32 @mlx5_fpga_dev(i32) #1

declare dso_local i32 @tools_char_llseek(%struct.tools_context*, %struct.uio*, i64*) #1

declare dso_local i8* @malloc(i64, i32, i32) #1

declare dso_local i32 @mem_read(%struct.TYPE_2__*, i8*, i64, i64, i32, i64*) #1

declare dso_local i32 @uiomove(i8*, i64, %struct.uio*) #1

declare dso_local i32 @free(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

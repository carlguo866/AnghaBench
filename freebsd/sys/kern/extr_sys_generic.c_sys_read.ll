; ModuleID = '/home/carl/AnghaBench/freebsd/sys/kern/extr_sys_generic.c_sys_read.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/kern/extr_sys_generic.c_sys_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.thread = type { i32 }
%struct.read_args = type { i64, i32, i32 }
%struct.uio = type { i32, i64, i32, %struct.iovec* }
%struct.iovec = type { i64, i32 }

@IOSIZE_MAX = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@UIO_USERSPACE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @sys_read(%struct.thread* %0, %struct.read_args* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.thread*, align 8
  %5 = alloca %struct.read_args*, align 8
  %6 = alloca %struct.uio, align 8
  %7 = alloca %struct.iovec, align 8
  %8 = alloca i32, align 4
  store %struct.thread* %0, %struct.thread** %4, align 8
  store %struct.read_args* %1, %struct.read_args** %5, align 8
  %9 = load %struct.read_args*, %struct.read_args** %5, align 8
  %10 = getelementptr inbounds %struct.read_args, %struct.read_args* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = load i64, i64* @IOSIZE_MAX, align 8
  %13 = icmp sgt i64 %11, %12
  br i1 %13, label %14, label %16

14:                                               ; preds = %2
  %15 = load i32, i32* @EINVAL, align 4
  store i32 %15, i32* %3, align 4
  br label %39

16:                                               ; preds = %2
  %17 = load %struct.read_args*, %struct.read_args** %5, align 8
  %18 = getelementptr inbounds %struct.read_args, %struct.read_args* %17, i32 0, i32 2
  %19 = load i32, i32* %18, align 4
  %20 = getelementptr inbounds %struct.iovec, %struct.iovec* %7, i32 0, i32 1
  store i32 %19, i32* %20, align 8
  %21 = load %struct.read_args*, %struct.read_args** %5, align 8
  %22 = getelementptr inbounds %struct.read_args, %struct.read_args* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = getelementptr inbounds %struct.iovec, %struct.iovec* %7, i32 0, i32 0
  store i64 %23, i64* %24, align 8
  %25 = getelementptr inbounds %struct.uio, %struct.uio* %6, i32 0, i32 3
  store %struct.iovec* %7, %struct.iovec** %25, align 8
  %26 = getelementptr inbounds %struct.uio, %struct.uio* %6, i32 0, i32 0
  store i32 1, i32* %26, align 8
  %27 = load %struct.read_args*, %struct.read_args** %5, align 8
  %28 = getelementptr inbounds %struct.read_args, %struct.read_args* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = getelementptr inbounds %struct.uio, %struct.uio* %6, i32 0, i32 1
  store i64 %29, i64* %30, align 8
  %31 = load i32, i32* @UIO_USERSPACE, align 4
  %32 = getelementptr inbounds %struct.uio, %struct.uio* %6, i32 0, i32 2
  store i32 %31, i32* %32, align 8
  %33 = load %struct.thread*, %struct.thread** %4, align 8
  %34 = load %struct.read_args*, %struct.read_args** %5, align 8
  %35 = getelementptr inbounds %struct.read_args, %struct.read_args* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 8
  %37 = call i32 @kern_readv(%struct.thread* %33, i32 %36, %struct.uio* %6)
  store i32 %37, i32* %8, align 4
  %38 = load i32, i32* %8, align 4
  store i32 %38, i32* %3, align 4
  br label %39

39:                                               ; preds = %16, %14
  %40 = load i32, i32* %3, align 4
  ret i32 %40
}

declare dso_local i32 @kern_readv(%struct.thread*, i32, %struct.uio*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

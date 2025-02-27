; ModuleID = '/home/carl/AnghaBench/linux/tools/perf/trace/beauty/extr_ioctl.c_syscall_arg__scnprintf_ioctl_cmd.c'
source_filename = "/home/carl/AnghaBench/linux/tools/perf/trace/beauty/extr_ioctl.c_syscall_arg__scnprintf_ioctl_cmd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.syscall_arg = type { i64, i32, i32 }
%struct.file = type { i64 }

@USB_DEVICE_MAJOR = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @syscall_arg__scnprintf_ioctl_cmd(i8* %0, i64 %1, %struct.syscall_arg* %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.syscall_arg*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.file*, align 8
  store i8* %0, i8** %5, align 8
  store i64 %1, i64* %6, align 8
  store %struct.syscall_arg* %2, %struct.syscall_arg** %7, align 8
  %11 = load %struct.syscall_arg*, %struct.syscall_arg** %7, align 8
  %12 = getelementptr inbounds %struct.syscall_arg, %struct.syscall_arg* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  store i64 %13, i64* %8, align 8
  %14 = load %struct.syscall_arg*, %struct.syscall_arg** %7, align 8
  %15 = call i32 @syscall_arg__val(%struct.syscall_arg* %14, i32 0)
  store i32 %15, i32* %9, align 4
  %16 = load %struct.syscall_arg*, %struct.syscall_arg** %7, align 8
  %17 = getelementptr inbounds %struct.syscall_arg, %struct.syscall_arg* %16, i32 0, i32 2
  %18 = load i32, i32* %17, align 4
  %19 = load i32, i32* %9, align 4
  %20 = call %struct.file* @thread__files_entry(i32 %18, i32 %19)
  store %struct.file* %20, %struct.file** %10, align 8
  %21 = load %struct.file*, %struct.file** %10, align 8
  %22 = icmp ne %struct.file* %21, null
  br i1 %22, label %23, label %38

23:                                               ; preds = %3
  %24 = load %struct.file*, %struct.file** %10, align 8
  %25 = getelementptr inbounds %struct.file, %struct.file* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = load i64, i64* @USB_DEVICE_MAJOR, align 8
  %28 = icmp eq i64 %26, %27
  br i1 %28, label %29, label %37

29:                                               ; preds = %23
  %30 = load i64, i64* %8, align 8
  %31 = call i32 @_IOC_NR(i64 %30)
  %32 = load i64, i64* %8, align 8
  %33 = call i32 @_IOC_DIR(i64 %32)
  %34 = load i8*, i8** %5, align 8
  %35 = load i64, i64* %6, align 8
  %36 = call i64 @ioctl__scnprintf_usbdevfs_cmd(i32 %31, i32 %33, i8* %34, i64 %35)
  store i64 %36, i64* %4, align 8
  br label %46

37:                                               ; preds = %23
  br label %38

38:                                               ; preds = %37, %3
  %39 = load i64, i64* %8, align 8
  %40 = load i8*, i8** %5, align 8
  %41 = load i64, i64* %6, align 8
  %42 = load %struct.syscall_arg*, %struct.syscall_arg** %7, align 8
  %43 = getelementptr inbounds %struct.syscall_arg, %struct.syscall_arg* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 8
  %45 = call i64 @ioctl__scnprintf_cmd(i64 %39, i8* %40, i64 %41, i32 %44)
  store i64 %45, i64* %4, align 8
  br label %46

46:                                               ; preds = %38, %29
  %47 = load i64, i64* %4, align 8
  ret i64 %47
}

declare dso_local i32 @syscall_arg__val(%struct.syscall_arg*, i32) #1

declare dso_local %struct.file* @thread__files_entry(i32, i32) #1

declare dso_local i64 @ioctl__scnprintf_usbdevfs_cmd(i32, i32, i8*, i64) #1

declare dso_local i32 @_IOC_NR(i64) #1

declare dso_local i32 @_IOC_DIR(i64) #1

declare dso_local i64 @ioctl__scnprintf_cmd(i64, i8*, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

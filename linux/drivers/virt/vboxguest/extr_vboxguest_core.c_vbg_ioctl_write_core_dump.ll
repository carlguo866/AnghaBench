; ModuleID = '/home/carl/AnghaBench/linux/drivers/virt/vboxguest/extr_vboxguest_core.c_vbg_ioctl_write_core_dump.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/virt/vboxguest/extr_vboxguest_core.c_vbg_ioctl_write_core_dump.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vbg_dev = type { i32 }
%struct.vbg_session = type { i32 }
%struct.vbg_ioctl_write_coredump = type { %struct.TYPE_6__, %struct.TYPE_5__ }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }
%struct.vmmdev_write_core_dump = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@VMMDEVREQ_WRITE_COREDUMP = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.vbg_dev*, %struct.vbg_session*, %struct.vbg_ioctl_write_coredump*)* @vbg_ioctl_write_core_dump to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vbg_ioctl_write_core_dump(%struct.vbg_dev* %0, %struct.vbg_session* %1, %struct.vbg_ioctl_write_coredump* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.vbg_dev*, align 8
  %6 = alloca %struct.vbg_session*, align 8
  %7 = alloca %struct.vbg_ioctl_write_coredump*, align 8
  %8 = alloca %struct.vmmdev_write_core_dump*, align 8
  store %struct.vbg_dev* %0, %struct.vbg_dev** %5, align 8
  store %struct.vbg_session* %1, %struct.vbg_session** %6, align 8
  store %struct.vbg_ioctl_write_coredump* %2, %struct.vbg_ioctl_write_coredump** %7, align 8
  %9 = load %struct.vbg_ioctl_write_coredump*, %struct.vbg_ioctl_write_coredump** %7, align 8
  %10 = getelementptr inbounds %struct.vbg_ioctl_write_coredump, %struct.vbg_ioctl_write_coredump* %9, i32 0, i32 0
  %11 = call i64 @vbg_ioctl_chk(%struct.TYPE_6__* %10, i32 4, i32 0)
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %16

13:                                               ; preds = %3
  %14 = load i32, i32* @EINVAL, align 4
  %15 = sub nsw i32 0, %14
  store i32 %15, i32* %4, align 4
  br label %43

16:                                               ; preds = %3
  %17 = load i32, i32* @VMMDEVREQ_WRITE_COREDUMP, align 4
  %18 = load %struct.vbg_session*, %struct.vbg_session** %6, align 8
  %19 = getelementptr inbounds %struct.vbg_session, %struct.vbg_session* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = call %struct.vmmdev_write_core_dump* @vbg_req_alloc(i32 4, i32 %17, i32 %20)
  store %struct.vmmdev_write_core_dump* %21, %struct.vmmdev_write_core_dump** %8, align 8
  %22 = load %struct.vmmdev_write_core_dump*, %struct.vmmdev_write_core_dump** %8, align 8
  %23 = icmp ne %struct.vmmdev_write_core_dump* %22, null
  br i1 %23, label %27, label %24

24:                                               ; preds = %16
  %25 = load i32, i32* @ENOMEM, align 4
  %26 = sub nsw i32 0, %25
  store i32 %26, i32* %4, align 4
  br label %43

27:                                               ; preds = %16
  %28 = load %struct.vbg_ioctl_write_coredump*, %struct.vbg_ioctl_write_coredump** %7, align 8
  %29 = getelementptr inbounds %struct.vbg_ioctl_write_coredump, %struct.vbg_ioctl_write_coredump* %28, i32 0, i32 1
  %30 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = load %struct.vmmdev_write_core_dump*, %struct.vmmdev_write_core_dump** %8, align 8
  %34 = getelementptr inbounds %struct.vmmdev_write_core_dump, %struct.vmmdev_write_core_dump* %33, i32 0, i32 0
  store i32 %32, i32* %34, align 4
  %35 = load %struct.vbg_dev*, %struct.vbg_dev** %5, align 8
  %36 = load %struct.vmmdev_write_core_dump*, %struct.vmmdev_write_core_dump** %8, align 8
  %37 = call i32 @vbg_req_perform(%struct.vbg_dev* %35, %struct.vmmdev_write_core_dump* %36)
  %38 = load %struct.vbg_ioctl_write_coredump*, %struct.vbg_ioctl_write_coredump** %7, align 8
  %39 = getelementptr inbounds %struct.vbg_ioctl_write_coredump, %struct.vbg_ioctl_write_coredump* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %39, i32 0, i32 0
  store i32 %37, i32* %40, align 4
  %41 = load %struct.vmmdev_write_core_dump*, %struct.vmmdev_write_core_dump** %8, align 8
  %42 = call i32 @vbg_req_free(%struct.vmmdev_write_core_dump* %41, i32 4)
  store i32 0, i32* %4, align 4
  br label %43

43:                                               ; preds = %27, %24, %13
  %44 = load i32, i32* %4, align 4
  ret i32 %44
}

declare dso_local i64 @vbg_ioctl_chk(%struct.TYPE_6__*, i32, i32) #1

declare dso_local %struct.vmmdev_write_core_dump* @vbg_req_alloc(i32, i32, i32) #1

declare dso_local i32 @vbg_req_perform(%struct.vbg_dev*, %struct.vmmdev_write_core_dump*) #1

declare dso_local i32 @vbg_req_free(%struct.vmmdev_write_core_dump*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

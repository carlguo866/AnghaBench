; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/android/ion/extr_ion.c_validate_ioctl_arg.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/android/ion/extr_ion.c_validate_ioctl_arg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%union.ion_ioctl_arg = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32, i32 }

@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, %union.ion_ioctl_arg*)* @validate_ioctl_arg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @validate_ioctl_arg(i32 %0, %union.ion_ioctl_arg* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %union.ion_ioctl_arg*, align 8
  store i32 %0, i32* %4, align 4
  store %union.ion_ioctl_arg* %1, %union.ion_ioctl_arg** %5, align 8
  %6 = load i32, i32* %4, align 4
  switch i32 %6, label %29 [
    i32 128, label %7
  ]

7:                                                ; preds = %2
  %8 = load %union.ion_ioctl_arg*, %union.ion_ioctl_arg** %5, align 8
  %9 = bitcast %union.ion_ioctl_arg* %8 to %struct.TYPE_2__*
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 2
  %11 = load i32, i32* %10, align 4
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %25, label %13

13:                                               ; preds = %7
  %14 = load %union.ion_ioctl_arg*, %union.ion_ioctl_arg** %5, align 8
  %15 = bitcast %union.ion_ioctl_arg* %14 to %struct.TYPE_2__*
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %25, label %19

19:                                               ; preds = %13
  %20 = load %union.ion_ioctl_arg*, %union.ion_ioctl_arg** %5, align 8
  %21 = bitcast %union.ion_ioctl_arg* %20 to %struct.TYPE_2__*
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %28

25:                                               ; preds = %19, %13, %7
  %26 = load i32, i32* @EINVAL, align 4
  %27 = sub nsw i32 0, %26
  store i32 %27, i32* %3, align 4
  br label %31

28:                                               ; preds = %19
  br label %30

29:                                               ; preds = %2
  br label %30

30:                                               ; preds = %29, %28
  store i32 0, i32* %3, align 4
  br label %31

31:                                               ; preds = %30, %25
  %32 = load i32, i32* %3, align 4
  ret i32 %32
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

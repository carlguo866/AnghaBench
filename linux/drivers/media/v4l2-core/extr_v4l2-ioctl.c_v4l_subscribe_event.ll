; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/v4l2-core/extr_v4l2-ioctl.c_v4l_subscribe_event.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/v4l2-core/extr_v4l2-ioctl.c_v4l_subscribe_event.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.v4l2_ioctl_ops = type { i32 (i8*, i8*)* }
%struct.file = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.v4l2_ioctl_ops*, %struct.file*, i8*, i8*)* @v4l_subscribe_event to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @v4l_subscribe_event(%struct.v4l2_ioctl_ops* %0, %struct.file* %1, i8* %2, i8* %3) #0 {
  %5 = alloca %struct.v4l2_ioctl_ops*, align 8
  %6 = alloca %struct.file*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  store %struct.v4l2_ioctl_ops* %0, %struct.v4l2_ioctl_ops** %5, align 8
  store %struct.file* %1, %struct.file** %6, align 8
  store i8* %2, i8** %7, align 8
  store i8* %3, i8** %8, align 8
  %9 = load %struct.v4l2_ioctl_ops*, %struct.v4l2_ioctl_ops** %5, align 8
  %10 = getelementptr inbounds %struct.v4l2_ioctl_ops, %struct.v4l2_ioctl_ops* %9, i32 0, i32 0
  %11 = load i32 (i8*, i8*)*, i32 (i8*, i8*)** %10, align 8
  %12 = load i8*, i8** %7, align 8
  %13 = load i8*, i8** %8, align 8
  %14 = call i32 %11(i8* %12, i8* %13)
  ret i32 %14
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

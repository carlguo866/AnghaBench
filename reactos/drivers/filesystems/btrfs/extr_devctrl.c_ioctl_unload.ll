; ModuleID = '/home/carl/AnghaBench/reactos/drivers/filesystems/btrfs/extr_devctrl.c_ioctl_unload.c'
source_filename = "/home/carl/AnghaBench/reactos/drivers/filesystems/btrfs/extr_devctrl.c_ioctl_unload.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32 }

@SE_LOAD_DRIVER_PRIVILEGE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"insufficient privileges\0A\00", align 1
@STATUS_PRIVILEGE_NOT_HELD = common dso_local global i32 0, align 4
@STATUS_SUCCESS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_4__*)* @ioctl_unload to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ioctl_unload(%struct.TYPE_4__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_4__*, align 8
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %3, align 8
  %4 = load i32, i32* @SE_LOAD_DRIVER_PRIVILEGE, align 4
  %5 = call i32 @RtlConvertLongToLuid(i32 %4)
  %6 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %7 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  %9 = call i32 @SeSinglePrivilegeCheck(i32 %5, i32 %8)
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %14, label %11

11:                                               ; preds = %1
  %12 = call i32 @ERR(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0))
  %13 = load i32, i32* @STATUS_PRIVILEGE_NOT_HELD, align 4
  store i32 %13, i32* %2, align 4
  br label %18

14:                                               ; preds = %1
  %15 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %16 = call i32 @do_shutdown(%struct.TYPE_4__* %15)
  %17 = load i32, i32* @STATUS_SUCCESS, align 4
  store i32 %17, i32* %2, align 4
  br label %18

18:                                               ; preds = %14, %11
  %19 = load i32, i32* %2, align 4
  ret i32 %19
}

declare dso_local i32 @SeSinglePrivilegeCheck(i32, i32) #1

declare dso_local i32 @RtlConvertLongToLuid(i32) #1

declare dso_local i32 @ERR(i8*) #1

declare dso_local i32 @do_shutdown(%struct.TYPE_4__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

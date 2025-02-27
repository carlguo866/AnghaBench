; ModuleID = '/home/carl/AnghaBench/linux/drivers/ide/extr_ide-disk_ioctl.c_ide_disk_ioctl.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/ide/extr_ide-disk_ioctl.c_ide_disk_ioctl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.block_device = type { i32 }

@ide_disk_ioctl_mutex = common dso_local global i32 0, align 4
@ide_disk_ioctl_settings = common dso_local global i32 0, align 4
@EOPNOTSUPP = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ide_disk_ioctl(i32* %0, %struct.block_device* %1, i32 %2, i32 %3, i64 %4) #0 {
  %6 = alloca i32*, align 8
  %7 = alloca %struct.block_device*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  store i32* %0, i32** %6, align 8
  store %struct.block_device* %1, %struct.block_device** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i64 %4, i64* %10, align 8
  %12 = call i32 @mutex_lock(i32* @ide_disk_ioctl_mutex)
  %13 = load i32*, i32** %6, align 8
  %14 = load %struct.block_device*, %struct.block_device** %7, align 8
  %15 = load i32, i32* %9, align 4
  %16 = load i64, i64* %10, align 8
  %17 = load i32, i32* @ide_disk_ioctl_settings, align 4
  %18 = call i32 @ide_setting_ioctl(i32* %13, %struct.block_device* %14, i32 %15, i64 %16, i32 %17)
  store i32 %18, i32* %11, align 4
  %19 = load i32, i32* %11, align 4
  %20 = load i32, i32* @EOPNOTSUPP, align 4
  %21 = sub nsw i32 0, %20
  %22 = icmp ne i32 %19, %21
  br i1 %22, label %23, label %24

23:                                               ; preds = %5
  br label %30

24:                                               ; preds = %5
  %25 = load i32*, i32** %6, align 8
  %26 = load %struct.block_device*, %struct.block_device** %7, align 8
  %27 = load i32, i32* %9, align 4
  %28 = load i64, i64* %10, align 8
  %29 = call i32 @generic_ide_ioctl(i32* %25, %struct.block_device* %26, i32 %27, i64 %28)
  store i32 %29, i32* %11, align 4
  br label %30

30:                                               ; preds = %24, %23
  %31 = call i32 @mutex_unlock(i32* @ide_disk_ioctl_mutex)
  %32 = load i32, i32* %11, align 4
  ret i32 %32
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @ide_setting_ioctl(i32*, %struct.block_device*, i32, i64, i32) #1

declare dso_local i32 @generic_ide_ioctl(i32*, %struct.block_device*, i32, i64) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

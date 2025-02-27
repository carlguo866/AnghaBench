; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/gma500/extr_mdfld_dsi_pkg_sender.c_wait_for_gen_fifo_empty.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/gma500/extr_mdfld_dsi_pkg_sender.c_wait_for_gen_fifo_empty.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mdfld_dsi_pkg_sender = type { i32, %struct.drm_device* }
%struct.drm_device = type { i32 }

@.str = private unnamed_addr constant [26 x i8] c"fifo is NOT empty 0x%08x\0A\00", align 1
@EIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mdfld_dsi_pkg_sender*, i32)* @wait_for_gen_fifo_empty to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wait_for_gen_fifo_empty(%struct.mdfld_dsi_pkg_sender* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.mdfld_dsi_pkg_sender*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.drm_device*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.mdfld_dsi_pkg_sender* %0, %struct.mdfld_dsi_pkg_sender** %4, align 8
  store i32 %1, i32* %5, align 4
  %9 = load %struct.mdfld_dsi_pkg_sender*, %struct.mdfld_dsi_pkg_sender** %4, align 8
  %10 = getelementptr inbounds %struct.mdfld_dsi_pkg_sender, %struct.mdfld_dsi_pkg_sender* %9, i32 0, i32 1
  %11 = load %struct.drm_device*, %struct.drm_device** %10, align 8
  store %struct.drm_device* %11, %struct.drm_device** %6, align 8
  %12 = load %struct.mdfld_dsi_pkg_sender*, %struct.mdfld_dsi_pkg_sender** %4, align 8
  %13 = getelementptr inbounds %struct.mdfld_dsi_pkg_sender, %struct.mdfld_dsi_pkg_sender* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  store i32 %14, i32* %7, align 4
  store i32 65535, i32* %8, align 4
  br label %15

15:                                               ; preds = %27, %2
  %16 = load i32, i32* %8, align 4
  %17 = add nsw i32 %16, -1
  store i32 %17, i32* %8, align 4
  %18 = icmp ne i32 %16, 0
  br i1 %18, label %19, label %29

19:                                               ; preds = %15
  %20 = load i32, i32* %5, align 4
  %21 = load i32, i32* %7, align 4
  %22 = call i32 @REG_READ(i32 %21)
  %23 = and i32 %20, %22
  %24 = load i32, i32* %5, align 4
  %25 = icmp eq i32 %23, %24
  br i1 %25, label %26, label %27

26:                                               ; preds = %19
  store i32 0, i32* %3, align 4
  br label %35

27:                                               ; preds = %19
  %28 = call i32 @udelay(i32 100)
  br label %15

29:                                               ; preds = %15
  %30 = load i32, i32* %7, align 4
  %31 = call i32 @REG_READ(i32 %30)
  %32 = call i32 @DRM_ERROR(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i32 %31)
  %33 = load i32, i32* @EIO, align 4
  %34 = sub nsw i32 0, %33
  store i32 %34, i32* %3, align 4
  br label %35

35:                                               ; preds = %29, %26
  %36 = load i32, i32* %3, align 4
  ret i32 %36
}

declare dso_local i32 @REG_READ(i32) #1

declare dso_local i32 @udelay(i32) #1

declare dso_local i32 @DRM_ERROR(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

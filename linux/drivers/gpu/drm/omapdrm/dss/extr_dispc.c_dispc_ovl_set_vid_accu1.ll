; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/omapdrm/dss/extr_dispc.c_dispc_ovl_set_vid_accu1.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/omapdrm/dss/extr_dispc.c_dispc_ovl_set_vid_accu1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dispc_device = type { i32 }

@FEAT_REG_HORIZONTALACCU = common dso_local global i32 0, align 4
@FEAT_REG_VERTICALACCU = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.dispc_device*, i32, i32, i32)* @dispc_ovl_set_vid_accu1 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dispc_ovl_set_vid_accu1(%struct.dispc_device* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.dispc_device*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.dispc_device* %0, %struct.dispc_device** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %14 = load %struct.dispc_device*, %struct.dispc_device** %5, align 8
  %15 = load i32, i32* @FEAT_REG_HORIZONTALACCU, align 4
  %16 = call i32 @dispc_get_reg_field(%struct.dispc_device* %14, i32 %15, i32* %10, i32* %11)
  %17 = load %struct.dispc_device*, %struct.dispc_device** %5, align 8
  %18 = load i32, i32* @FEAT_REG_VERTICALACCU, align 4
  %19 = call i32 @dispc_get_reg_field(%struct.dispc_device* %17, i32 %18, i32* %12, i32* %13)
  %20 = load i32, i32* %8, align 4
  %21 = load i32, i32* %12, align 4
  %22 = load i32, i32* %13, align 4
  %23 = call i32 @FLD_VAL(i32 %20, i32 %21, i32 %22)
  %24 = load i32, i32* %7, align 4
  %25 = load i32, i32* %10, align 4
  %26 = load i32, i32* %11, align 4
  %27 = call i32 @FLD_VAL(i32 %24, i32 %25, i32 %26)
  %28 = or i32 %23, %27
  store i32 %28, i32* %9, align 4
  %29 = load %struct.dispc_device*, %struct.dispc_device** %5, align 8
  %30 = load i32, i32* %6, align 4
  %31 = call i32 @DISPC_OVL_ACCU1(i32 %30)
  %32 = load i32, i32* %9, align 4
  %33 = call i32 @dispc_write_reg(%struct.dispc_device* %29, i32 %31, i32 %32)
  ret void
}

declare dso_local i32 @dispc_get_reg_field(%struct.dispc_device*, i32, i32*, i32*) #1

declare dso_local i32 @FLD_VAL(i32, i32, i32) #1

declare dso_local i32 @dispc_write_reg(%struct.dispc_device*, i32, i32) #1

declare dso_local i32 @DISPC_OVL_ACCU1(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

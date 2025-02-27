; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/extr_mt9m111.c_mt9m111_set_context.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/extr_mt9m111.c_mt9m111_set_context.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i2c_client = type { i32 }

@MT9M111_CTXT_CTRL_RESTART = common dso_local global i32 0, align 4
@MT9M111_CTXT_CTRL_DEFECTCOR_B = common dso_local global i32 0, align 4
@MT9M111_CTXT_CTRL_RESIZE_B = common dso_local global i32 0, align 4
@MT9M111_CTXT_CTRL_CTRL2_B = common dso_local global i32 0, align 4
@MT9M111_CTXT_CTRL_GAMMA_B = common dso_local global i32 0, align 4
@MT9M111_CTXT_CTRL_READ_MODE_B = common dso_local global i32 0, align 4
@MT9M111_CTXT_CTRL_VBLANK_SEL_B = common dso_local global i32 0, align 4
@MT9M111_CTXT_CTRL_HBLANK_SEL_B = common dso_local global i32 0, align 4
@HIGHPOWER = common dso_local global i32 0, align 4
@CONTEXT_CONTROL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i2c_client*, i32)* @mt9m111_set_context to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mt9m111_set_context(%struct.i2c_client* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.i2c_client*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.i2c_client* %0, %struct.i2c_client** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = load i32, i32* @MT9M111_CTXT_CTRL_RESTART, align 4
  %9 = load i32, i32* @MT9M111_CTXT_CTRL_DEFECTCOR_B, align 4
  %10 = or i32 %8, %9
  %11 = load i32, i32* @MT9M111_CTXT_CTRL_RESIZE_B, align 4
  %12 = or i32 %10, %11
  %13 = load i32, i32* @MT9M111_CTXT_CTRL_CTRL2_B, align 4
  %14 = or i32 %12, %13
  %15 = load i32, i32* @MT9M111_CTXT_CTRL_GAMMA_B, align 4
  %16 = or i32 %14, %15
  %17 = load i32, i32* @MT9M111_CTXT_CTRL_READ_MODE_B, align 4
  %18 = or i32 %16, %17
  %19 = load i32, i32* @MT9M111_CTXT_CTRL_VBLANK_SEL_B, align 4
  %20 = or i32 %18, %19
  %21 = load i32, i32* @MT9M111_CTXT_CTRL_HBLANK_SEL_B, align 4
  %22 = or i32 %20, %21
  store i32 %22, i32* %6, align 4
  %23 = load i32, i32* @MT9M111_CTXT_CTRL_RESTART, align 4
  store i32 %23, i32* %7, align 4
  %24 = load i32, i32* %5, align 4
  %25 = load i32, i32* @HIGHPOWER, align 4
  %26 = icmp eq i32 %24, %25
  br i1 %26, label %27, label %31

27:                                               ; preds = %2
  %28 = load i32, i32* @CONTEXT_CONTROL, align 4
  %29 = load i32, i32* %6, align 4
  %30 = call i32 @reg_write(i32 %28, i32 %29)
  store i32 %30, i32* %3, align 4
  br label %35

31:                                               ; preds = %2
  %32 = load i32, i32* @CONTEXT_CONTROL, align 4
  %33 = load i32, i32* %7, align 4
  %34 = call i32 @reg_write(i32 %32, i32 %33)
  store i32 %34, i32* %3, align 4
  br label %35

35:                                               ; preds = %31, %27
  %36 = load i32, i32* %3, align 4
  ret i32 %36
}

declare dso_local i32 @reg_write(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

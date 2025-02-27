; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/s3c-camif/extr_camif-regs.c_camif_hw_clear_fifo_overflow.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/s3c-camif/extr_camif-regs.c_camif_hw_clear_fifo_overflow.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.camif_vp = type { i64, %struct.camif_dev* }
%struct.camif_dev = type { i32 }

@S3C_CAMIF_REG_CIWDOFST = common dso_local global i32 0, align 4
@CIWDOFST_CLROVCOFIY = common dso_local global i32 0, align 4
@CIWDOFST_CLROVCOFICB = common dso_local global i32 0, align 4
@CIWDOFST_CLROVCOFICR = common dso_local global i32 0, align 4
@CIWDOFST_CLROVPRFICB = common dso_local global i32 0, align 4
@CIWDOFST_CLROVPRFICR = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @camif_hw_clear_fifo_overflow(%struct.camif_vp* %0) #0 {
  %2 = alloca %struct.camif_vp*, align 8
  %3 = alloca %struct.camif_dev*, align 8
  %4 = alloca i32, align 4
  store %struct.camif_vp* %0, %struct.camif_vp** %2, align 8
  %5 = load %struct.camif_vp*, %struct.camif_vp** %2, align 8
  %6 = getelementptr inbounds %struct.camif_vp, %struct.camif_vp* %5, i32 0, i32 1
  %7 = load %struct.camif_dev*, %struct.camif_dev** %6, align 8
  store %struct.camif_dev* %7, %struct.camif_dev** %3, align 8
  %8 = load %struct.camif_dev*, %struct.camif_dev** %3, align 8
  %9 = load i32, i32* @S3C_CAMIF_REG_CIWDOFST, align 4
  %10 = call i32 @camif_read(%struct.camif_dev* %8, i32 %9)
  store i32 %10, i32* %4, align 4
  %11 = load %struct.camif_vp*, %struct.camif_vp** %2, align 8
  %12 = getelementptr inbounds %struct.camif_vp, %struct.camif_vp* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = icmp eq i64 %13, 0
  br i1 %14, label %15, label %23

15:                                               ; preds = %1
  %16 = load i32, i32* @CIWDOFST_CLROVCOFIY, align 4
  %17 = load i32, i32* @CIWDOFST_CLROVCOFICB, align 4
  %18 = or i32 %16, %17
  %19 = load i32, i32* @CIWDOFST_CLROVCOFICR, align 4
  %20 = or i32 %18, %19
  %21 = load i32, i32* %4, align 4
  %22 = or i32 %21, %20
  store i32 %22, i32* %4, align 4
  br label %29

23:                                               ; preds = %1
  %24 = load i32, i32* @CIWDOFST_CLROVPRFICB, align 4
  %25 = load i32, i32* @CIWDOFST_CLROVPRFICR, align 4
  %26 = or i32 %24, %25
  %27 = load i32, i32* %4, align 4
  %28 = or i32 %27, %26
  store i32 %28, i32* %4, align 4
  br label %29

29:                                               ; preds = %23, %15
  %30 = load %struct.camif_dev*, %struct.camif_dev** %3, align 8
  %31 = load i32, i32* @S3C_CAMIF_REG_CIWDOFST, align 4
  %32 = load i32, i32* %4, align 4
  %33 = call i32 @camif_write(%struct.camif_dev* %30, i32 %31, i32 %32)
  ret void
}

declare dso_local i32 @camif_read(%struct.camif_dev*, i32) #1

declare dso_local i32 @camif_write(%struct.camif_dev*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

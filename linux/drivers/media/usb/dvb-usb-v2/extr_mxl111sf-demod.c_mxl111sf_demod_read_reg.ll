; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/usb/dvb-usb-v2/extr_mxl111sf-demod.c_mxl111sf_demod_read_reg.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/usb/dvb-usb-v2/extr_mxl111sf-demod.c_mxl111sf_demod_read_reg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mxl111sf_demod_state = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 (i32, i32, i32*)* }

@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mxl111sf_demod_state*, i32, i32*)* @mxl111sf_demod_read_reg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mxl111sf_demod_read_reg(%struct.mxl111sf_demod_state* %0, i32 %1, i32* %2) #0 {
  %4 = alloca %struct.mxl111sf_demod_state*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  store %struct.mxl111sf_demod_state* %0, %struct.mxl111sf_demod_state** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32* %2, i32** %6, align 8
  %7 = load %struct.mxl111sf_demod_state*, %struct.mxl111sf_demod_state** %4, align 8
  %8 = getelementptr inbounds %struct.mxl111sf_demod_state, %struct.mxl111sf_demod_state* %7, i32 0, i32 1
  %9 = load %struct.TYPE_2__*, %struct.TYPE_2__** %8, align 8
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 0
  %11 = load i32 (i32, i32, i32*)*, i32 (i32, i32, i32*)** %10, align 8
  %12 = icmp ne i32 (i32, i32, i32*)* %11, null
  br i1 %12, label %13, label %25

13:                                               ; preds = %3
  %14 = load %struct.mxl111sf_demod_state*, %struct.mxl111sf_demod_state** %4, align 8
  %15 = getelementptr inbounds %struct.mxl111sf_demod_state, %struct.mxl111sf_demod_state* %14, i32 0, i32 1
  %16 = load %struct.TYPE_2__*, %struct.TYPE_2__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 0
  %18 = load i32 (i32, i32, i32*)*, i32 (i32, i32, i32*)** %17, align 8
  %19 = load %struct.mxl111sf_demod_state*, %struct.mxl111sf_demod_state** %4, align 8
  %20 = getelementptr inbounds %struct.mxl111sf_demod_state, %struct.mxl111sf_demod_state* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = load i32, i32* %5, align 4
  %23 = load i32*, i32** %6, align 8
  %24 = call i32 %18(i32 %21, i32 %22, i32* %23)
  br label %28

25:                                               ; preds = %3
  %26 = load i32, i32* @EINVAL, align 4
  %27 = sub nsw i32 0, %26
  br label %28

28:                                               ; preds = %25, %13
  %29 = phi i32 [ %24, %13 ], [ %27, %25 ]
  ret i32 %29
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

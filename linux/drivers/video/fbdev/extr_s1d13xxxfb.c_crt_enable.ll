; ModuleID = '/home/carl/AnghaBench/linux/drivers/video/fbdev/extr_s1d13xxxfb.c_crt_enable.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/video/fbdev/extr_s1d13xxxfb.c_crt_enable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.s1d13xxxfb_par = type { i32 }

@S1DREG_COM_DISP_MODE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.s1d13xxxfb_par*, i32)* @crt_enable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @crt_enable(%struct.s1d13xxxfb_par* %0, i32 %1) #0 {
  %3 = alloca %struct.s1d13xxxfb_par*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.s1d13xxxfb_par* %0, %struct.s1d13xxxfb_par** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.s1d13xxxfb_par*, %struct.s1d13xxxfb_par** %3, align 8
  %7 = load i32, i32* @S1DREG_COM_DISP_MODE, align 4
  %8 = call i32 @s1d13xxxfb_readreg(%struct.s1d13xxxfb_par* %6, i32 %7)
  store i32 %8, i32* %5, align 4
  %9 = load i32, i32* %4, align 4
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %11, label %14

11:                                               ; preds = %2
  %12 = load i32, i32* %5, align 4
  %13 = or i32 %12, 2
  store i32 %13, i32* %5, align 4
  br label %17

14:                                               ; preds = %2
  %15 = load i32, i32* %5, align 4
  %16 = and i32 %15, -3
  store i32 %16, i32* %5, align 4
  br label %17

17:                                               ; preds = %14, %11
  %18 = load %struct.s1d13xxxfb_par*, %struct.s1d13xxxfb_par** %3, align 8
  %19 = load i32, i32* @S1DREG_COM_DISP_MODE, align 4
  %20 = load i32, i32* %5, align 4
  %21 = call i32 @s1d13xxxfb_writereg(%struct.s1d13xxxfb_par* %18, i32 %19, i32 %20)
  ret void
}

declare dso_local i32 @s1d13xxxfb_readreg(%struct.s1d13xxxfb_par*, i32) #1

declare dso_local i32 @s1d13xxxfb_writereg(%struct.s1d13xxxfb_par*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

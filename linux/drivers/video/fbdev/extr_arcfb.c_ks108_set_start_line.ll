; ModuleID = '/home/carl/AnghaBench/linux/drivers/video/fbdev/extr_arcfb.c_ks108_set_start_line.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/video/fbdev/extr_arcfb.c_ks108_set_start_line.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.arcfb_par = type { i32 }

@KS_SET_DPY_START_LINE = common dso_local global i8 0, align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.arcfb_par*, i32, i8)* @ks108_set_start_line to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ks108_set_start_line(%struct.arcfb_par* %0, i32 %1, i8 zeroext %2) #0 {
  %4 = alloca %struct.arcfb_par*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8, align 1
  store %struct.arcfb_par* %0, %struct.arcfb_par** %4, align 8
  store i32 %1, i32* %5, align 4
  store i8 %2, i8* %6, align 1
  %7 = load %struct.arcfb_par*, %struct.arcfb_par** %4, align 8
  %8 = load i32, i32* %5, align 4
  %9 = load i8, i8* @KS_SET_DPY_START_LINE, align 1
  %10 = zext i8 %9 to i32
  %11 = load i8, i8* %6, align 1
  %12 = zext i8 %11 to i32
  %13 = or i32 %10, %12
  %14 = trunc i32 %13 to i8
  %15 = call i32 @ks108_writeb_ctl(%struct.arcfb_par* %7, i32 %8, i8 zeroext %14)
  ret void
}

declare dso_local i32 @ks108_writeb_ctl(%struct.arcfb_par*, i32, i8 zeroext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

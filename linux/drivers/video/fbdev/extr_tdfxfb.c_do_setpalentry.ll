; ModuleID = '/home/carl/AnghaBench/linux/drivers/video/fbdev/extr_tdfxfb.c_do_setpalentry.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/video/fbdev/extr_tdfxfb.c_do_setpalentry.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tdfx_par = type { i32 }

@DACADDR = common dso_local global i32 0, align 4
@DACDATA = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.tdfx_par*, i32, i32)* @do_setpalentry to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @do_setpalentry(%struct.tdfx_par* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.tdfx_par*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.tdfx_par* %0, %struct.tdfx_par** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %7 = load %struct.tdfx_par*, %struct.tdfx_par** %4, align 8
  %8 = call i32 @banshee_make_room(%struct.tdfx_par* %7, i32 2)
  %9 = load %struct.tdfx_par*, %struct.tdfx_par** %4, align 8
  %10 = load i32, i32* @DACADDR, align 4
  %11 = load i32, i32* %5, align 4
  %12 = call i32 @tdfx_outl(%struct.tdfx_par* %9, i32 %10, i32 %11)
  %13 = load %struct.tdfx_par*, %struct.tdfx_par** %4, align 8
  %14 = load i32, i32* @DACADDR, align 4
  %15 = call i32 @tdfx_inl(%struct.tdfx_par* %13, i32 %14)
  %16 = load %struct.tdfx_par*, %struct.tdfx_par** %4, align 8
  %17 = load i32, i32* @DACDATA, align 4
  %18 = load i32, i32* %6, align 4
  %19 = call i32 @tdfx_outl(%struct.tdfx_par* %16, i32 %17, i32 %18)
  ret void
}

declare dso_local i32 @banshee_make_room(%struct.tdfx_par*, i32) #1

declare dso_local i32 @tdfx_outl(%struct.tdfx_par*, i32, i32) #1

declare dso_local i32 @tdfx_inl(%struct.tdfx_par*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

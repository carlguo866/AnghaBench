; ModuleID = '/home/carl/AnghaBench/RetroArch/gfx/drivers_context/extr_wayland_ctx.c_wl_nop.c'
source_filename = "/home/carl/AnghaBench/RetroArch/gfx/drivers_context/extr_wayland_ctx.c_wl_nop.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wl_surface = type { i32 }
%struct.wl_output = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, %struct.wl_surface*, %struct.wl_output*)* @wl_nop to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @wl_nop(i8* %0, %struct.wl_surface* %1, %struct.wl_output* %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca %struct.wl_surface*, align 8
  %6 = alloca %struct.wl_output*, align 8
  store i8* %0, i8** %4, align 8
  store %struct.wl_surface* %1, %struct.wl_surface** %5, align 8
  store %struct.wl_output* %2, %struct.wl_output** %6, align 8
  %7 = load i8*, i8** %4, align 8
  %8 = load %struct.wl_surface*, %struct.wl_surface** %5, align 8
  %9 = load %struct.wl_output*, %struct.wl_output** %6, align 8
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

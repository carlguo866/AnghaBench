; ModuleID = '/home/carl/AnghaBench/linux/drivers/video/fbdev/extr_ssd1307fb.c_ssd1307fb_copyarea.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/video/fbdev/extr_ssd1307fb.c_ssd1307fb_copyarea.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fb_info = type { %struct.ssd1307fb_par* }
%struct.ssd1307fb_par = type { i32 }
%struct.fb_copyarea = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.fb_info*, %struct.fb_copyarea*)* @ssd1307fb_copyarea to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ssd1307fb_copyarea(%struct.fb_info* %0, %struct.fb_copyarea* %1) #0 {
  %3 = alloca %struct.fb_info*, align 8
  %4 = alloca %struct.fb_copyarea*, align 8
  %5 = alloca %struct.ssd1307fb_par*, align 8
  store %struct.fb_info* %0, %struct.fb_info** %3, align 8
  store %struct.fb_copyarea* %1, %struct.fb_copyarea** %4, align 8
  %6 = load %struct.fb_info*, %struct.fb_info** %3, align 8
  %7 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %6, i32 0, i32 0
  %8 = load %struct.ssd1307fb_par*, %struct.ssd1307fb_par** %7, align 8
  store %struct.ssd1307fb_par* %8, %struct.ssd1307fb_par** %5, align 8
  %9 = load %struct.fb_info*, %struct.fb_info** %3, align 8
  %10 = load %struct.fb_copyarea*, %struct.fb_copyarea** %4, align 8
  %11 = call i32 @sys_copyarea(%struct.fb_info* %9, %struct.fb_copyarea* %10)
  %12 = load %struct.ssd1307fb_par*, %struct.ssd1307fb_par** %5, align 8
  %13 = call i32 @ssd1307fb_update_display(%struct.ssd1307fb_par* %12)
  ret void
}

declare dso_local i32 @sys_copyarea(%struct.fb_info*, %struct.fb_copyarea*) #1

declare dso_local i32 @ssd1307fb_update_display(%struct.ssd1307fb_par*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

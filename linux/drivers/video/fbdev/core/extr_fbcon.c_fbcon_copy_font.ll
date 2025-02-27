; ModuleID = '/home/carl/AnghaBench/linux/drivers/video/fbdev/core/extr_fbcon.c_fbcon_copy_font.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/video/fbdev/core/extr_fbcon.c_fbcon_copy_font.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fbcon_display = type { i64, i32 }
%struct.vc_data = type { %struct.console_font }
%struct.console_font = type { i64, i32, i32 }

@fb_display = common dso_local global %struct.fbcon_display* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.vc_data*, i32)* @fbcon_copy_font to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fbcon_copy_font(%struct.vc_data* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.vc_data*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.fbcon_display*, align 8
  %7 = alloca %struct.console_font*, align 8
  store %struct.vc_data* %0, %struct.vc_data** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = load %struct.fbcon_display*, %struct.fbcon_display** @fb_display, align 8
  %9 = load i32, i32* %5, align 4
  %10 = sext i32 %9 to i64
  %11 = getelementptr inbounds %struct.fbcon_display, %struct.fbcon_display* %8, i64 %10
  store %struct.fbcon_display* %11, %struct.fbcon_display** %6, align 8
  %12 = load %struct.vc_data*, %struct.vc_data** %4, align 8
  %13 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %12, i32 0, i32 0
  store %struct.console_font* %13, %struct.console_font** %7, align 8
  %14 = load %struct.fbcon_display*, %struct.fbcon_display** %6, align 8
  %15 = getelementptr inbounds %struct.fbcon_display, %struct.fbcon_display* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = load %struct.console_font*, %struct.console_font** %7, align 8
  %18 = getelementptr inbounds %struct.console_font, %struct.console_font* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = icmp eq i64 %16, %19
  br i1 %20, label %21, label %22

21:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %37

22:                                               ; preds = %2
  %23 = load %struct.vc_data*, %struct.vc_data** %4, align 8
  %24 = load %struct.console_font*, %struct.console_font** %7, align 8
  %25 = getelementptr inbounds %struct.console_font, %struct.console_font* %24, i32 0, i32 2
  %26 = load i32, i32* %25, align 4
  %27 = load %struct.console_font*, %struct.console_font** %7, align 8
  %28 = getelementptr inbounds %struct.console_font, %struct.console_font* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 8
  %30 = load %struct.fbcon_display*, %struct.fbcon_display** %6, align 8
  %31 = getelementptr inbounds %struct.fbcon_display, %struct.fbcon_display* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = load %struct.fbcon_display*, %struct.fbcon_display** %6, align 8
  %34 = getelementptr inbounds %struct.fbcon_display, %struct.fbcon_display* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 8
  %36 = call i32 @fbcon_do_set_font(%struct.vc_data* %23, i32 %26, i32 %29, i64 %32, i32 %35)
  store i32 %36, i32* %3, align 4
  br label %37

37:                                               ; preds = %22, %21
  %38 = load i32, i32* %3, align 4
  ret i32 %38
}

declare dso_local i32 @fbcon_do_set_font(%struct.vc_data*, i32, i32, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

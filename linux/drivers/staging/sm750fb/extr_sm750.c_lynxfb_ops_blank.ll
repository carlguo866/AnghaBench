; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/sm750fb/extr_sm750.c_lynxfb_ops_blank.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/sm750fb/extr_sm750.c_lynxfb_ops_blank.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fb_info = type { %struct.lynxfb_par* }
%struct.lynxfb_par = type { %struct.lynxfb_output }
%struct.lynxfb_output = type { i32 (%struct.lynxfb_output*, i32)* }

@.str = private unnamed_addr constant [13 x i8] c"blank = %d.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, %struct.fb_info*)* @lynxfb_ops_blank to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lynxfb_ops_blank(i32 %0, %struct.fb_info* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.fb_info*, align 8
  %5 = alloca %struct.lynxfb_par*, align 8
  %6 = alloca %struct.lynxfb_output*, align 8
  store i32 %0, i32* %3, align 4
  store %struct.fb_info* %1, %struct.fb_info** %4, align 8
  %7 = load i32, i32* %3, align 4
  %8 = call i32 @pr_debug(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0), i32 %7)
  %9 = load %struct.fb_info*, %struct.fb_info** %4, align 8
  %10 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %9, i32 0, i32 0
  %11 = load %struct.lynxfb_par*, %struct.lynxfb_par** %10, align 8
  store %struct.lynxfb_par* %11, %struct.lynxfb_par** %5, align 8
  %12 = load %struct.lynxfb_par*, %struct.lynxfb_par** %5, align 8
  %13 = getelementptr inbounds %struct.lynxfb_par, %struct.lynxfb_par* %12, i32 0, i32 0
  store %struct.lynxfb_output* %13, %struct.lynxfb_output** %6, align 8
  %14 = load %struct.lynxfb_output*, %struct.lynxfb_output** %6, align 8
  %15 = getelementptr inbounds %struct.lynxfb_output, %struct.lynxfb_output* %14, i32 0, i32 0
  %16 = load i32 (%struct.lynxfb_output*, i32)*, i32 (%struct.lynxfb_output*, i32)** %15, align 8
  %17 = load %struct.lynxfb_output*, %struct.lynxfb_output** %6, align 8
  %18 = load i32, i32* %3, align 4
  %19 = call i32 %16(%struct.lynxfb_output* %17, i32 %18)
  ret i32 %19
}

declare dso_local i32 @pr_debug(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

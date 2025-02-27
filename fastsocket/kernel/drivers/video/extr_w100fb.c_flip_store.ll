; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/video/extr_w100fb.c_flip_store.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/video/extr_w100fb.c_flip_store.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.device_attribute = type { i32 }
%struct.fb_info = type { %struct.w100fb_par* }
%struct.w100fb_par = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.device*, %struct.device_attribute*, i8*, i64)* @flip_store to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @flip_store(%struct.device* %0, %struct.device_attribute* %1, i8* %2, i64 %3) #0 {
  %5 = alloca %struct.device*, align 8
  %6 = alloca %struct.device_attribute*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.fb_info*, align 8
  %11 = alloca %struct.w100fb_par*, align 8
  store %struct.device* %0, %struct.device** %5, align 8
  store %struct.device_attribute* %1, %struct.device_attribute** %6, align 8
  store i8* %2, i8** %7, align 8
  store i64 %3, i64* %8, align 8
  %12 = load %struct.device*, %struct.device** %5, align 8
  %13 = call %struct.fb_info* @dev_get_drvdata(%struct.device* %12)
  store %struct.fb_info* %13, %struct.fb_info** %10, align 8
  %14 = load %struct.fb_info*, %struct.fb_info** %10, align 8
  %15 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %14, i32 0, i32 0
  %16 = load %struct.w100fb_par*, %struct.w100fb_par** %15, align 8
  store %struct.w100fb_par* %16, %struct.w100fb_par** %11, align 8
  %17 = load i8*, i8** %7, align 8
  %18 = call i32 @simple_strtoul(i8* %17, i32* null, i32 10)
  store i32 %18, i32* %9, align 4
  %19 = load i32, i32* %9, align 4
  %20 = icmp ugt i32 %19, 0
  br i1 %20, label %21, label %24

21:                                               ; preds = %4
  %22 = load %struct.w100fb_par*, %struct.w100fb_par** %11, align 8
  %23 = getelementptr inbounds %struct.w100fb_par, %struct.w100fb_par* %22, i32 0, i32 0
  store i32 1, i32* %23, align 4
  br label %27

24:                                               ; preds = %4
  %25 = load %struct.w100fb_par*, %struct.w100fb_par** %11, align 8
  %26 = getelementptr inbounds %struct.w100fb_par, %struct.w100fb_par* %25, i32 0, i32 0
  store i32 0, i32* %26, align 4
  br label %27

27:                                               ; preds = %24, %21
  %28 = call i32 (...) @w100_update_disable()
  %29 = load %struct.w100fb_par*, %struct.w100fb_par** %11, align 8
  %30 = call i32 @w100_set_dispregs(%struct.w100fb_par* %29)
  %31 = call i32 (...) @w100_update_enable()
  %32 = load %struct.w100fb_par*, %struct.w100fb_par** %11, align 8
  %33 = call i32 @calc_hsync(%struct.w100fb_par* %32)
  %34 = load i64, i64* %8, align 8
  ret i64 %34
}

declare dso_local %struct.fb_info* @dev_get_drvdata(%struct.device*) #1

declare dso_local i32 @simple_strtoul(i8*, i32*, i32) #1

declare dso_local i32 @w100_update_disable(...) #1

declare dso_local i32 @w100_set_dispregs(%struct.w100fb_par*) #1

declare dso_local i32 @w100_update_enable(...) #1

declare dso_local i32 @calc_hsync(%struct.w100fb_par*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

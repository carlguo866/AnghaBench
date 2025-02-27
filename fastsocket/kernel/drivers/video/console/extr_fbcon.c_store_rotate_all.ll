; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/video/console/extr_fbcon.c_store_rotate_all.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/video/console/extr_fbcon.c_store_rotate_all.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fb_info = type { i32 }
%struct.device = type { i32 }
%struct.device_attribute = type { i32 }

@fbcon_has_exited = common dso_local global i64 0, align 8
@con2fb_map = common dso_local global i32* null, align 8
@fg_console = common dso_local global i64 0, align 8
@registered_fb = common dso_local global %struct.fb_info** null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.device*, %struct.device_attribute*, i8*, i64)* @store_rotate_all to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @store_rotate_all(%struct.device* %0, %struct.device_attribute* %1, i8* %2, i64 %3) #0 {
  %5 = alloca i64, align 8
  %6 = alloca %struct.device*, align 8
  %7 = alloca %struct.device_attribute*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.fb_info*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i8**, align 8
  store %struct.device* %0, %struct.device** %6, align 8
  store %struct.device_attribute* %1, %struct.device_attribute** %7, align 8
  store i8* %2, i8** %8, align 8
  store i64 %3, i64* %9, align 8
  store i8** null, i8*** %13, align 8
  %14 = load i64, i64* @fbcon_has_exited, align 8
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %18

16:                                               ; preds = %4
  %17 = load i64, i64* %9, align 8
  store i64 %17, i64* %5, align 8
  br label %49

18:                                               ; preds = %4
  %19 = call i32 (...) @acquire_console_sem()
  %20 = load i32*, i32** @con2fb_map, align 8
  %21 = load i64, i64* @fg_console, align 8
  %22 = getelementptr inbounds i32, i32* %20, i64 %21
  %23 = load i32, i32* %22, align 4
  store i32 %23, i32* %12, align 4
  %24 = load i32, i32* %12, align 4
  %25 = icmp eq i32 %24, -1
  br i1 %25, label %33, label %26

26:                                               ; preds = %18
  %27 = load %struct.fb_info**, %struct.fb_info*** @registered_fb, align 8
  %28 = load i32, i32* %12, align 4
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds %struct.fb_info*, %struct.fb_info** %27, i64 %29
  %31 = load %struct.fb_info*, %struct.fb_info** %30, align 8
  %32 = icmp eq %struct.fb_info* %31, null
  br i1 %32, label %33, label %34

33:                                               ; preds = %26, %18
  br label %46

34:                                               ; preds = %26
  %35 = load %struct.fb_info**, %struct.fb_info*** @registered_fb, align 8
  %36 = load i32, i32* %12, align 4
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds %struct.fb_info*, %struct.fb_info** %35, i64 %37
  %39 = load %struct.fb_info*, %struct.fb_info** %38, align 8
  store %struct.fb_info* %39, %struct.fb_info** %10, align 8
  %40 = load i8*, i8** %8, align 8
  %41 = load i8**, i8*** %13, align 8
  %42 = call i32 @simple_strtoul(i8* %40, i8** %41, i32 0)
  store i32 %42, i32* %11, align 4
  %43 = load %struct.fb_info*, %struct.fb_info** %10, align 8
  %44 = load i32, i32* %11, align 4
  %45 = call i32 @fbcon_rotate_all(%struct.fb_info* %43, i32 %44)
  br label %46

46:                                               ; preds = %34, %33
  %47 = call i32 (...) @release_console_sem()
  %48 = load i64, i64* %9, align 8
  store i64 %48, i64* %5, align 8
  br label %49

49:                                               ; preds = %46, %16
  %50 = load i64, i64* %5, align 8
  ret i64 %50
}

declare dso_local i32 @acquire_console_sem(...) #1

declare dso_local i32 @simple_strtoul(i8*, i8**, i32) #1

declare dso_local i32 @fbcon_rotate_all(%struct.fb_info*, i32) #1

declare dso_local i32 @release_console_sem(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

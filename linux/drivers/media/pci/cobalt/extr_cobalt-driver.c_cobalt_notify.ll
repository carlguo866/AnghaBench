; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/pci/cobalt/extr_cobalt-driver.c_cobalt_notify.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/pci/cobalt/extr_cobalt-driver.c_cobalt_notify.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.v4l2_subdev = type { i32 }
%struct.cobalt = type { %struct.cobalt_stream* }
%struct.cobalt_stream = type { i32, i64 }

@.str = private unnamed_addr constant [30 x i8] c"Set hotplug for adv %d to %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [27 x i8] c"Format changed for adv %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.v4l2_subdev*, i32, i8*)* @cobalt_notify to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cobalt_notify(%struct.v4l2_subdev* %0, i32 %1, i8* %2) #0 {
  %4 = alloca %struct.v4l2_subdev*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca %struct.cobalt*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.cobalt_stream*, align 8
  %10 = alloca i32, align 4
  store %struct.v4l2_subdev* %0, %struct.v4l2_subdev** %4, align 8
  store i32 %1, i32* %5, align 4
  store i8* %2, i8** %6, align 8
  %11 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %4, align 8
  %12 = getelementptr inbounds %struct.v4l2_subdev, %struct.v4l2_subdev* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = call %struct.cobalt* @to_cobalt(i32 %13)
  store %struct.cobalt* %14, %struct.cobalt** %7, align 8
  %15 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %4, align 8
  %16 = call i32 @cobalt_get_sd_nr(%struct.v4l2_subdev* %15)
  store i32 %16, i32* %8, align 4
  %17 = load %struct.cobalt*, %struct.cobalt** %7, align 8
  %18 = getelementptr inbounds %struct.cobalt, %struct.cobalt* %17, i32 0, i32 0
  %19 = load %struct.cobalt_stream*, %struct.cobalt_stream** %18, align 8
  %20 = load i32, i32* %8, align 4
  %21 = zext i32 %20 to i64
  %22 = getelementptr inbounds %struct.cobalt_stream, %struct.cobalt_stream* %19, i64 %21
  store %struct.cobalt_stream* %22, %struct.cobalt_stream** %9, align 8
  %23 = load i8*, i8** %6, align 8
  %24 = icmp ne i8* %23, null
  br i1 %24, label %25, label %29

25:                                               ; preds = %3
  %26 = load i8*, i8** %6, align 8
  %27 = bitcast i8* %26 to i32*
  %28 = load i32, i32* %27, align 4
  br label %30

29:                                               ; preds = %3
  br label %30

30:                                               ; preds = %29, %25
  %31 = phi i32 [ %28, %25 ], [ 0, %29 ]
  store i32 %31, i32* %10, align 4
  %32 = load %struct.cobalt_stream*, %struct.cobalt_stream** %9, align 8
  %33 = getelementptr inbounds %struct.cobalt_stream, %struct.cobalt_stream* %32, i32 0, i32 1
  %34 = load i64, i64* %33, align 8
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %37

36:                                               ; preds = %30
  br label %56

37:                                               ; preds = %30
  %38 = load i32, i32* %5, align 4
  switch i32 %38, label %55 [
    i32 129, label %39
    i32 128, label %48
  ]

39:                                               ; preds = %37
  %40 = load %struct.cobalt*, %struct.cobalt** %7, align 8
  %41 = load i32, i32* %8, align 4
  %42 = call i32 @COBALT_SYS_CTRL_HPD_TO_CONNECTOR_BIT(i32 %41)
  %43 = load i32, i32* %10, align 4
  %44 = call i32 @cobalt_s_bit_sysctrl(%struct.cobalt* %40, i32 %42, i32 %43)
  %45 = load i32, i32* %8, align 4
  %46 = load i32, i32* %10, align 4
  %47 = call i32 (i32, i8*, i32, ...) @cobalt_dbg(i32 1, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i32 %45, i32 %46)
  br label %56

48:                                               ; preds = %37
  %49 = load i32, i32* %8, align 4
  %50 = call i32 (i32, i8*, i32, ...) @cobalt_dbg(i32 1, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0), i32 %49)
  %51 = load %struct.cobalt_stream*, %struct.cobalt_stream** %9, align 8
  %52 = getelementptr inbounds %struct.cobalt_stream, %struct.cobalt_stream* %51, i32 0, i32 0
  %53 = load i8*, i8** %6, align 8
  %54 = call i32 @v4l2_event_queue(i32* %52, i8* %53)
  br label %56

55:                                               ; preds = %37
  br label %56

56:                                               ; preds = %36, %55, %48, %39
  ret void
}

declare dso_local %struct.cobalt* @to_cobalt(i32) #1

declare dso_local i32 @cobalt_get_sd_nr(%struct.v4l2_subdev*) #1

declare dso_local i32 @cobalt_s_bit_sysctrl(%struct.cobalt*, i32, i32) #1

declare dso_local i32 @COBALT_SYS_CTRL_HPD_TO_CONNECTOR_BIT(i32) #1

declare dso_local i32 @cobalt_dbg(i32, i8*, i32, ...) #1

declare dso_local i32 @v4l2_event_queue(i32*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/linux/drivers/s390/cio/extr_chp.c_chp_update_desc.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/s390/cio/extr_chp.c_chp_update_desc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.channel_path = type { i32, i32, i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @chp_update_desc(%struct.channel_path* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.channel_path*, align 8
  %4 = alloca i32, align 4
  store %struct.channel_path* %0, %struct.channel_path** %3, align 8
  %5 = load %struct.channel_path*, %struct.channel_path** %3, align 8
  %6 = getelementptr inbounds %struct.channel_path, %struct.channel_path* %5, i32 0, i32 1
  %7 = load i32, i32* %6, align 4
  %8 = load %struct.channel_path*, %struct.channel_path** %3, align 8
  %9 = getelementptr inbounds %struct.channel_path, %struct.channel_path* %8, i32 0, i32 3
  %10 = call i32 @chsc_determine_fmt0_channel_path_desc(i32 %7, i32* %9)
  store i32 %10, i32* %4, align 4
  %11 = load i32, i32* %4, align 4
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %15

13:                                               ; preds = %1
  %14 = load i32, i32* %4, align 4
  store i32 %14, i32* %2, align 4
  br label %30

15:                                               ; preds = %1
  %16 = load %struct.channel_path*, %struct.channel_path** %3, align 8
  %17 = getelementptr inbounds %struct.channel_path, %struct.channel_path* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 4
  %19 = load %struct.channel_path*, %struct.channel_path** %3, align 8
  %20 = getelementptr inbounds %struct.channel_path, %struct.channel_path* %19, i32 0, i32 2
  %21 = call i32 @chsc_determine_fmt1_channel_path_desc(i32 %18, i32* %20)
  %22 = load %struct.channel_path*, %struct.channel_path** %3, align 8
  %23 = getelementptr inbounds %struct.channel_path, %struct.channel_path* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 4
  %25 = load %struct.channel_path*, %struct.channel_path** %3, align 8
  %26 = getelementptr inbounds %struct.channel_path, %struct.channel_path* %25, i32 0, i32 0
  %27 = call i32 @chsc_determine_fmt3_channel_path_desc(i32 %24, i32* %26)
  %28 = load %struct.channel_path*, %struct.channel_path** %3, align 8
  %29 = call i32 @chsc_get_channel_measurement_chars(%struct.channel_path* %28)
  store i32 0, i32* %2, align 4
  br label %30

30:                                               ; preds = %15, %13
  %31 = load i32, i32* %2, align 4
  ret i32 %31
}

declare dso_local i32 @chsc_determine_fmt0_channel_path_desc(i32, i32*) #1

declare dso_local i32 @chsc_determine_fmt1_channel_path_desc(i32, i32*) #1

declare dso_local i32 @chsc_determine_fmt3_channel_path_desc(i32, i32*) #1

declare dso_local i32 @chsc_get_channel_measurement_chars(%struct.channel_path*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

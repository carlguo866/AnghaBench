; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/tools/lib/traceevent/extr_parse-filter.c_pevent_filter_copy.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/tools/lib/traceevent/extr_parse-filter.c_pevent_filter_copy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.event_filter = type { i32, i32* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @pevent_filter_copy(%struct.event_filter* %0, %struct.event_filter* %1) #0 {
  %3 = alloca %struct.event_filter*, align 8
  %4 = alloca %struct.event_filter*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.event_filter* %0, %struct.event_filter** %3, align 8
  store %struct.event_filter* %1, %struct.event_filter** %4, align 8
  store i32 0, i32* %5, align 4
  %7 = load %struct.event_filter*, %struct.event_filter** %3, align 8
  %8 = call i32 @pevent_filter_reset(%struct.event_filter* %7)
  store i32 0, i32* %6, align 4
  br label %9

9:                                                ; preds = %28, %2
  %10 = load i32, i32* %6, align 4
  %11 = load %struct.event_filter*, %struct.event_filter** %4, align 8
  %12 = getelementptr inbounds %struct.event_filter, %struct.event_filter* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  %14 = icmp slt i32 %10, %13
  br i1 %14, label %15, label %31

15:                                               ; preds = %9
  %16 = load %struct.event_filter*, %struct.event_filter** %3, align 8
  %17 = load %struct.event_filter*, %struct.event_filter** %4, align 8
  %18 = load %struct.event_filter*, %struct.event_filter** %4, align 8
  %19 = getelementptr inbounds %struct.event_filter, %struct.event_filter* %18, i32 0, i32 1
  %20 = load i32*, i32** %19, align 8
  %21 = load i32, i32* %6, align 4
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds i32, i32* %20, i64 %22
  %24 = call i64 @copy_filter_type(%struct.event_filter* %16, %struct.event_filter* %17, i32* %23)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %27

26:                                               ; preds = %15
  store i32 -1, i32* %5, align 4
  br label %27

27:                                               ; preds = %26, %15
  br label %28

28:                                               ; preds = %27
  %29 = load i32, i32* %6, align 4
  %30 = add nsw i32 %29, 1
  store i32 %30, i32* %6, align 4
  br label %9

31:                                               ; preds = %9
  %32 = load i32, i32* %5, align 4
  ret i32 %32
}

declare dso_local i32 @pevent_filter_reset(%struct.event_filter*) #1

declare dso_local i64 @copy_filter_type(%struct.event_filter*, %struct.event_filter*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

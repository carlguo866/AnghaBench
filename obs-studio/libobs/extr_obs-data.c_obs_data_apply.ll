; ModuleID = '/home/carl/AnghaBench/obs-studio/libobs/extr_obs-data.c_obs_data_apply.c'
source_filename = "/home/carl/AnghaBench/obs-studio/libobs/extr_obs-data.c_obs_data_apply.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { %struct.obs_data_item* }
%struct.obs_data_item = type { %struct.obs_data_item* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @obs_data_apply(%struct.TYPE_5__* %0, %struct.TYPE_5__* %1) #0 {
  %3 = alloca %struct.TYPE_5__*, align 8
  %4 = alloca %struct.TYPE_5__*, align 8
  %5 = alloca %struct.obs_data_item*, align 8
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %3, align 8
  store %struct.TYPE_5__* %1, %struct.TYPE_5__** %4, align 8
  %6 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %7 = icmp ne %struct.TYPE_5__* %6, null
  br i1 %7, label %8, label %15

8:                                                ; preds = %2
  %9 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %10 = icmp ne %struct.TYPE_5__* %9, null
  br i1 %10, label %11, label %15

11:                                               ; preds = %8
  %12 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %13 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %14 = icmp eq %struct.TYPE_5__* %12, %13
  br i1 %14, label %15, label %16

15:                                               ; preds = %11, %8, %2
  br label %30

16:                                               ; preds = %11
  %17 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %18 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %17, i32 0, i32 0
  %19 = load %struct.obs_data_item*, %struct.obs_data_item** %18, align 8
  store %struct.obs_data_item* %19, %struct.obs_data_item** %5, align 8
  br label %20

20:                                               ; preds = %23, %16
  %21 = load %struct.obs_data_item*, %struct.obs_data_item** %5, align 8
  %22 = icmp ne %struct.obs_data_item* %21, null
  br i1 %22, label %23, label %30

23:                                               ; preds = %20
  %24 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %25 = load %struct.obs_data_item*, %struct.obs_data_item** %5, align 8
  %26 = call i32 @copy_item(%struct.TYPE_5__* %24, %struct.obs_data_item* %25)
  %27 = load %struct.obs_data_item*, %struct.obs_data_item** %5, align 8
  %28 = getelementptr inbounds %struct.obs_data_item, %struct.obs_data_item* %27, i32 0, i32 0
  %29 = load %struct.obs_data_item*, %struct.obs_data_item** %28, align 8
  store %struct.obs_data_item* %29, %struct.obs_data_item** %5, align 8
  br label %20

30:                                               ; preds = %15, %20
  ret void
}

declare dso_local i32 @copy_item(%struct.TYPE_5__*, %struct.obs_data_item*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

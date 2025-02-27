; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/video/extr_leo.c_leo_init_wids.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/video/extr_leo.c_leo_init_wids.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fb_info = type { i32 }
%struct.fb_wid_item = type { i32, i32*, i32 }
%struct.fb_wid_list = type { i32, %struct.fb_wid_item* }

@FB_WID_DBL_8 = common dso_local global i32 0, align 4
@FB_WID_DBL_24 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.fb_info*)* @leo_init_wids to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @leo_init_wids(%struct.fb_info* %0) #0 {
  %2 = alloca %struct.fb_info*, align 8
  %3 = alloca %struct.fb_wid_item, align 8
  %4 = alloca %struct.fb_wid_list, align 8
  store %struct.fb_info* %0, %struct.fb_info** %2, align 8
  %5 = getelementptr inbounds %struct.fb_wid_list, %struct.fb_wid_list* %4, i32 0, i32 0
  store i32 1, i32* %5, align 8
  %6 = getelementptr inbounds %struct.fb_wid_list, %struct.fb_wid_list* %4, i32 0, i32 1
  store %struct.fb_wid_item* %3, %struct.fb_wid_item** %6, align 8
  %7 = load i32, i32* @FB_WID_DBL_8, align 4
  %8 = getelementptr inbounds %struct.fb_wid_item, %struct.fb_wid_item* %3, i32 0, i32 2
  store i32 %7, i32* %8, align 8
  %9 = getelementptr inbounds %struct.fb_wid_item, %struct.fb_wid_item* %3, i32 0, i32 0
  store i32 0, i32* %9, align 8
  %10 = getelementptr inbounds %struct.fb_wid_item, %struct.fb_wid_item* %3, i32 0, i32 1
  %11 = load i32*, i32** %10, align 8
  %12 = getelementptr inbounds i32, i32* %11, i64 0
  store i32 704, i32* %12, align 4
  %13 = load %struct.fb_info*, %struct.fb_info** %2, align 8
  %14 = call i32 @leo_wid_put(%struct.fb_info* %13, %struct.fb_wid_list* %4)
  %15 = getelementptr inbounds %struct.fb_wid_item, %struct.fb_wid_item* %3, i32 0, i32 0
  store i32 1, i32* %15, align 8
  %16 = getelementptr inbounds %struct.fb_wid_item, %struct.fb_wid_item* %3, i32 0, i32 1
  %17 = load i32*, i32** %16, align 8
  %18 = getelementptr inbounds i32, i32* %17, i64 0
  store i32 48, i32* %18, align 4
  %19 = load %struct.fb_info*, %struct.fb_info** %2, align 8
  %20 = call i32 @leo_wid_put(%struct.fb_info* %19, %struct.fb_wid_list* %4)
  %21 = getelementptr inbounds %struct.fb_wid_item, %struct.fb_wid_item* %3, i32 0, i32 0
  store i32 2, i32* %21, align 8
  %22 = getelementptr inbounds %struct.fb_wid_item, %struct.fb_wid_item* %3, i32 0, i32 1
  %23 = load i32*, i32** %22, align 8
  %24 = getelementptr inbounds i32, i32* %23, i64 0
  store i32 32, i32* %24, align 4
  %25 = load %struct.fb_info*, %struct.fb_info** %2, align 8
  %26 = call i32 @leo_wid_put(%struct.fb_info* %25, %struct.fb_wid_list* %4)
  %27 = load i32, i32* @FB_WID_DBL_24, align 4
  %28 = getelementptr inbounds %struct.fb_wid_item, %struct.fb_wid_item* %3, i32 0, i32 2
  store i32 %27, i32* %28, align 8
  %29 = getelementptr inbounds %struct.fb_wid_item, %struct.fb_wid_item* %3, i32 0, i32 0
  store i32 1, i32* %29, align 8
  %30 = getelementptr inbounds %struct.fb_wid_item, %struct.fb_wid_item* %3, i32 0, i32 1
  %31 = load i32*, i32** %30, align 8
  %32 = getelementptr inbounds i32, i32* %31, i64 0
  store i32 48, i32* %32, align 4
  %33 = load %struct.fb_info*, %struct.fb_info** %2, align 8
  %34 = call i32 @leo_wid_put(%struct.fb_info* %33, %struct.fb_wid_list* %4)
  ret void
}

declare dso_local i32 @leo_wid_put(%struct.fb_info*, %struct.fb_wid_list*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

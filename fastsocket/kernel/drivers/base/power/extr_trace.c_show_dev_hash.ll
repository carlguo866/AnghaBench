; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/base/power/extr_trace.c_show_dev_hash.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/base/power/extr_trace.c_show_dev_hash.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.list_head = type { %struct.list_head* }
%struct.device = type { i32 }

@dpm_list = common dso_local global %struct.list_head zeroinitializer, align 8
@DEVSEED = common dso_local global i32 0, align 4
@DEVHASH = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [14 x i8] c"hash matches\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @show_dev_hash to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @show_dev_hash(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca %struct.list_head*, align 8
  %5 = alloca %struct.device*, align 8
  %6 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  store i32 0, i32* %3, align 4
  %7 = load %struct.list_head*, %struct.list_head** getelementptr inbounds (%struct.list_head, %struct.list_head* @dpm_list, i32 0, i32 0), align 8
  store %struct.list_head* %7, %struct.list_head** %4, align 8
  br label %8

8:                                                ; preds = %27, %1
  %9 = load %struct.list_head*, %struct.list_head** %4, align 8
  %10 = icmp ne %struct.list_head* %9, @dpm_list
  br i1 %10, label %11, label %31

11:                                               ; preds = %8
  %12 = load %struct.list_head*, %struct.list_head** %4, align 8
  %13 = call %struct.device* @to_device(%struct.list_head* %12)
  store %struct.device* %13, %struct.device** %5, align 8
  %14 = load i32, i32* @DEVSEED, align 4
  %15 = load %struct.device*, %struct.device** %5, align 8
  %16 = call i32 @dev_name(%struct.device* %15)
  %17 = load i32, i32* @DEVHASH, align 4
  %18 = call i32 @hash_string(i32 %14, i32 %16, i32 %17)
  store i32 %18, i32* %6, align 4
  %19 = load i32, i32* %6, align 4
  %20 = load i32, i32* %2, align 4
  %21 = icmp eq i32 %19, %20
  br i1 %21, label %22, label %27

22:                                               ; preds = %11
  %23 = load %struct.device*, %struct.device** %5, align 8
  %24 = call i32 @dev_info(%struct.device* %23, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0))
  %25 = load i32, i32* %3, align 4
  %26 = add nsw i32 %25, 1
  store i32 %26, i32* %3, align 4
  br label %27

27:                                               ; preds = %22, %11
  %28 = load %struct.list_head*, %struct.list_head** %4, align 8
  %29 = getelementptr inbounds %struct.list_head, %struct.list_head* %28, i32 0, i32 0
  %30 = load %struct.list_head*, %struct.list_head** %29, align 8
  store %struct.list_head* %30, %struct.list_head** %4, align 8
  br label %8

31:                                               ; preds = %8
  %32 = load i32, i32* %3, align 4
  ret i32 %32
}

declare dso_local %struct.device* @to_device(%struct.list_head*) #1

declare dso_local i32 @hash_string(i32, i32, i32) #1

declare dso_local i32 @dev_name(%struct.device*) #1

declare dso_local i32 @dev_info(%struct.device*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

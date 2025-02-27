; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/block/extr_blk-throttle.c_throtl_select_dispatch.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/block/extr_blk-throttle.c_throtl_select_dispatch.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.throtl_data = type { %struct.throtl_rb_root }
%struct.throtl_rb_root = type { i32 }
%struct.bio_list = type { i32 }
%struct.throtl_grp = type { i64*, i32 }

@jiffies = common dso_local global i32 0, align 4
@throtl_quantum = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.throtl_data*, %struct.bio_list*)* @throtl_select_dispatch to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @throtl_select_dispatch(%struct.throtl_data* %0, %struct.bio_list* %1) #0 {
  %3 = alloca %struct.throtl_data*, align 8
  %4 = alloca %struct.bio_list*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.throtl_grp*, align 8
  %7 = alloca %struct.throtl_rb_root*, align 8
  store %struct.throtl_data* %0, %struct.throtl_data** %3, align 8
  store %struct.bio_list* %1, %struct.bio_list** %4, align 8
  store i32 0, i32* %5, align 4
  %8 = load %struct.throtl_data*, %struct.throtl_data** %3, align 8
  %9 = getelementptr inbounds %struct.throtl_data, %struct.throtl_data* %8, i32 0, i32 0
  store %struct.throtl_rb_root* %9, %struct.throtl_rb_root** %7, align 8
  br label %10

10:                                               ; preds = %2, %61
  %11 = load %struct.throtl_rb_root*, %struct.throtl_rb_root** %7, align 8
  %12 = call %struct.throtl_grp* @throtl_rb_first(%struct.throtl_rb_root* %11)
  store %struct.throtl_grp* %12, %struct.throtl_grp** %6, align 8
  %13 = load %struct.throtl_grp*, %struct.throtl_grp** %6, align 8
  %14 = icmp ne %struct.throtl_grp* %13, null
  br i1 %14, label %16, label %15

15:                                               ; preds = %10
  br label %62

16:                                               ; preds = %10
  %17 = load i32, i32* @jiffies, align 4
  %18 = load %struct.throtl_grp*, %struct.throtl_grp** %6, align 8
  %19 = getelementptr inbounds %struct.throtl_grp, %struct.throtl_grp* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 8
  %21 = call i64 @time_before(i32 %17, i32 %20)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %24

23:                                               ; preds = %16
  br label %62

24:                                               ; preds = %16
  %25 = load %struct.throtl_data*, %struct.throtl_data** %3, align 8
  %26 = load %struct.throtl_grp*, %struct.throtl_grp** %6, align 8
  %27 = call i32 @throtl_dequeue_tg(%struct.throtl_data* %25, %struct.throtl_grp* %26)
  %28 = load %struct.throtl_data*, %struct.throtl_data** %3, align 8
  %29 = load %struct.throtl_grp*, %struct.throtl_grp** %6, align 8
  %30 = load %struct.bio_list*, %struct.bio_list** %4, align 8
  %31 = call i64 @throtl_dispatch_tg(%struct.throtl_data* %28, %struct.throtl_grp* %29, %struct.bio_list* %30)
  %32 = load i32, i32* %5, align 4
  %33 = zext i32 %32 to i64
  %34 = add nsw i64 %33, %31
  %35 = trunc i64 %34 to i32
  store i32 %35, i32* %5, align 4
  %36 = load %struct.throtl_grp*, %struct.throtl_grp** %6, align 8
  %37 = getelementptr inbounds %struct.throtl_grp, %struct.throtl_grp* %36, i32 0, i32 0
  %38 = load i64*, i64** %37, align 8
  %39 = getelementptr inbounds i64, i64* %38, i64 0
  %40 = load i64, i64* %39, align 8
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %49, label %42

42:                                               ; preds = %24
  %43 = load %struct.throtl_grp*, %struct.throtl_grp** %6, align 8
  %44 = getelementptr inbounds %struct.throtl_grp, %struct.throtl_grp* %43, i32 0, i32 0
  %45 = load i64*, i64** %44, align 8
  %46 = getelementptr inbounds i64, i64* %45, i64 1
  %47 = load i64, i64* %46, align 8
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %56

49:                                               ; preds = %42, %24
  %50 = load %struct.throtl_data*, %struct.throtl_data** %3, align 8
  %51 = load %struct.throtl_grp*, %struct.throtl_grp** %6, align 8
  %52 = call i32 @tg_update_disptime(%struct.throtl_data* %50, %struct.throtl_grp* %51)
  %53 = load %struct.throtl_data*, %struct.throtl_data** %3, align 8
  %54 = load %struct.throtl_grp*, %struct.throtl_grp** %6, align 8
  %55 = call i32 @throtl_enqueue_tg(%struct.throtl_data* %53, %struct.throtl_grp* %54)
  br label %56

56:                                               ; preds = %49, %42
  %57 = load i32, i32* %5, align 4
  %58 = load i32, i32* @throtl_quantum, align 4
  %59 = icmp uge i32 %57, %58
  br i1 %59, label %60, label %61

60:                                               ; preds = %56
  br label %62

61:                                               ; preds = %56
  br label %10

62:                                               ; preds = %60, %23, %15
  %63 = load i32, i32* %5, align 4
  ret i32 %63
}

declare dso_local %struct.throtl_grp* @throtl_rb_first(%struct.throtl_rb_root*) #1

declare dso_local i64 @time_before(i32, i32) #1

declare dso_local i32 @throtl_dequeue_tg(%struct.throtl_data*, %struct.throtl_grp*) #1

declare dso_local i64 @throtl_dispatch_tg(%struct.throtl_data*, %struct.throtl_grp*, %struct.bio_list*) #1

declare dso_local i32 @tg_update_disptime(%struct.throtl_data*, %struct.throtl_grp*) #1

declare dso_local i32 @throtl_enqueue_tg(%struct.throtl_data*, %struct.throtl_grp*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/miscfs/specfs/extr_spec_vnops.c_throttle_info_set_initial_window.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/miscfs/specfs/extr_spec_vnops.c_throttle_info_set_initial_window.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32, %struct._throttle_io_info_t* }
%struct._throttle_io_info_t = type { i64, i64 }

@lowpri_throttle_enabled = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [20 x i8] c"updating info = %p\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_3__*, %struct._throttle_io_info_t*, i32, i32)* @throttle_info_set_initial_window to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @throttle_info_set_initial_window(%struct.TYPE_3__* %0, %struct._throttle_io_info_t* %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.TYPE_3__*, align 8
  %6 = alloca %struct._throttle_io_info_t*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %5, align 8
  store %struct._throttle_io_info_t* %1, %struct._throttle_io_info_t** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %9 = load i64, i64* @lowpri_throttle_enabled, align 8
  %10 = icmp eq i64 %9, 0
  br i1 %10, label %16, label %11

11:                                               ; preds = %4
  %12 = load %struct._throttle_io_info_t*, %struct._throttle_io_info_t** %6, align 8
  %13 = getelementptr inbounds %struct._throttle_io_info_t, %struct._throttle_io_info_t* %12, i32 0, i32 1
  %14 = load i64, i64* %13, align 8
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %17

16:                                               ; preds = %11, %4
  br label %45

17:                                               ; preds = %11
  %18 = load %struct._throttle_io_info_t*, %struct._throttle_io_info_t** %6, align 8
  %19 = getelementptr inbounds %struct._throttle_io_info_t, %struct._throttle_io_info_t* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = icmp eq i64 %20, 0
  br i1 %21, label %22, label %26

22:                                               ; preds = %17
  %23 = load %struct._throttle_io_info_t*, %struct._throttle_io_info_t** %6, align 8
  %24 = load i32, i32* %8, align 4
  %25 = call i32 @throttle_init_throttle_period(%struct._throttle_io_info_t* %23, i32 %24)
  br label %26

26:                                               ; preds = %22, %17
  %27 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %28 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %27, i32 0, i32 2
  %29 = load %struct._throttle_io_info_t*, %struct._throttle_io_info_t** %28, align 8
  %30 = icmp eq %struct._throttle_io_info_t* %29, null
  br i1 %30, label %31, label %45

31:                                               ; preds = %26
  %32 = load %struct._throttle_io_info_t*, %struct._throttle_io_info_t** %6, align 8
  %33 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %34 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %33, i32 0, i32 2
  store %struct._throttle_io_info_t* %32, %struct._throttle_io_info_t** %34, align 8
  %35 = load %struct._throttle_io_info_t*, %struct._throttle_io_info_t** %6, align 8
  %36 = call i32 @throttle_info_ref(%struct._throttle_io_info_t* %35)
  %37 = load %struct._throttle_io_info_t*, %struct._throttle_io_info_t** %6, align 8
  %38 = load %struct._throttle_io_info_t*, %struct._throttle_io_info_t** %6, align 8
  %39 = call i32 @DEBUG_ALLOC_THROTTLE_INFO(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), %struct._throttle_io_info_t* %37, %struct._throttle_io_info_t* %38)
  %40 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %41 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %40, i32 0, i32 0
  store i32 1, i32* %41, align 8
  %42 = load i32, i32* %7, align 4
  %43 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %44 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %43, i32 0, i32 1
  store i32 %42, i32* %44, align 4
  br label %45

45:                                               ; preds = %16, %31, %26
  ret void
}

declare dso_local i32 @throttle_init_throttle_period(%struct._throttle_io_info_t*, i32) #1

declare dso_local i32 @throttle_info_ref(%struct._throttle_io_info_t*) #1

declare dso_local i32 @DEBUG_ALLOC_THROTTLE_INFO(i8*, %struct._throttle_io_info_t*, %struct._throttle_io_info_t*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

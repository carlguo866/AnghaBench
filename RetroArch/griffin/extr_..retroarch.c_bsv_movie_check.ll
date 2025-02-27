; ModuleID = '/home/carl/AnghaBench/RetroArch/griffin/extr_..retroarch.c_bsv_movie_check.c'
source_filename = "/home/carl/AnghaBench/RetroArch/griffin/extr_..retroarch.c_bsv_movie_check.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32 }

@bsv_movie_state_handle = common dso_local global i32 0, align 4
@bsv_movie_state = common dso_local global %struct.TYPE_2__ zeroinitializer, align 4
@MSG_MOVIE_PLAYBACK_ENDED = common dso_local global i32 0, align 4
@MESSAGE_QUEUE_ICON_DEFAULT = common dso_local global i32 0, align 4
@MESSAGE_QUEUE_CATEGORY_INFO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@MSG_MOVIE_RECORD_STOPPED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @bsv_movie_check to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bsv_movie_check() #0 {
  %1 = alloca i32, align 4
  %2 = load i32, i32* @bsv_movie_state_handle, align 4
  %3 = icmp ne i32 %2, 0
  br i1 %3, label %6, label %4

4:                                                ; preds = %0
  %5 = call i32 (...) @runloop_check_movie_init()
  store i32 %5, i32* %1, align 4
  br label %37

6:                                                ; preds = %0
  %7 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @bsv_movie_state, i32 0, i32 0), align 4
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %9, label %23

9:                                                ; preds = %6
  %10 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @bsv_movie_state, i32 0, i32 1), align 4
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %13, label %12

12:                                               ; preds = %9
  store i32 0, i32* %1, align 4
  br label %37

13:                                               ; preds = %9
  %14 = load i32, i32* @MSG_MOVIE_PLAYBACK_ENDED, align 4
  %15 = call i32 @msg_hash_to_str(i32 %14)
  %16 = load i32, i32* @MESSAGE_QUEUE_ICON_DEFAULT, align 4
  %17 = load i32, i32* @MESSAGE_QUEUE_CATEGORY_INFO, align 4
  %18 = call i32 @runloop_msg_queue_push(i32 %15, i32 2, i32 180, i32 0, i32* null, i32 %16, i32 %17)
  %19 = load i32, i32* @MSG_MOVIE_PLAYBACK_ENDED, align 4
  %20 = call i32 @msg_hash_to_str(i32 %19)
  %21 = call i32 @RARCH_LOG(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i32 %20)
  %22 = call i32 (...) @bsv_movie_deinit()
  store i32 0, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @bsv_movie_state, i32 0, i32 1), align 4
  store i32 0, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @bsv_movie_state, i32 0, i32 0), align 4
  store i32 1, i32* %1, align 4
  br label %37

23:                                               ; preds = %6
  %24 = load i32, i32* @bsv_movie_state_handle, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %27, label %26

26:                                               ; preds = %23
  store i32 0, i32* %1, align 4
  br label %37

27:                                               ; preds = %23
  %28 = load i32, i32* @MSG_MOVIE_RECORD_STOPPED, align 4
  %29 = call i32 @msg_hash_to_str(i32 %28)
  %30 = load i32, i32* @MESSAGE_QUEUE_ICON_DEFAULT, align 4
  %31 = load i32, i32* @MESSAGE_QUEUE_CATEGORY_INFO, align 4
  %32 = call i32 @runloop_msg_queue_push(i32 %29, i32 2, i32 180, i32 1, i32* null, i32 %30, i32 %31)
  %33 = load i32, i32* @MSG_MOVIE_RECORD_STOPPED, align 4
  %34 = call i32 @msg_hash_to_str(i32 %33)
  %35 = call i32 @RARCH_LOG(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i32 %34)
  %36 = call i32 (...) @bsv_movie_deinit()
  store i32 1, i32* %1, align 4
  br label %37

37:                                               ; preds = %27, %26, %13, %12, %4
  %38 = load i32, i32* %1, align 4
  ret i32 %38
}

declare dso_local i32 @runloop_check_movie_init(...) #1

declare dso_local i32 @runloop_msg_queue_push(i32, i32, i32, i32, i32*, i32, i32) #1

declare dso_local i32 @msg_hash_to_str(i32) #1

declare dso_local i32 @RARCH_LOG(i8*, i32) #1

declare dso_local i32 @bsv_movie_deinit(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

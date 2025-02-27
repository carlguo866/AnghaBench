; ModuleID = '/home/carl/AnghaBench/h2o/deps/libyrmcds/extr_counter.c_yrmcds_cnt_shutdown.c'
source_filename = "/home/carl/AnghaBench/h2o/deps/libyrmcds/extr_counter.c_yrmcds_cnt_shutdown.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32 }

@YRMCDS_BAD_ARGUMENT = common dso_local global i32 0, align 4
@SHUT_RD = common dso_local global i32 0, align 4
@YRMCDS_SYSTEM_ERROR = common dso_local global i32 0, align 4
@YRMCDS_OK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @yrmcds_cnt_shutdown(%struct.TYPE_3__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_3__*, align 8
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %3, align 8
  %4 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %5 = icmp eq %struct.TYPE_3__* %4, null
  br i1 %5, label %6, label %8

6:                                                ; preds = %1
  %7 = load i32, i32* @YRMCDS_BAD_ARGUMENT, align 4
  store i32 %7, i32* %2, align 4
  br label %19

8:                                                ; preds = %1
  %9 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %10 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = load i32, i32* @SHUT_RD, align 4
  %13 = call i32 @shutdown(i32 %11, i32 %12)
  %14 = icmp eq i32 %13, -1
  br i1 %14, label %15, label %17

15:                                               ; preds = %8
  %16 = load i32, i32* @YRMCDS_SYSTEM_ERROR, align 4
  store i32 %16, i32* %2, align 4
  br label %19

17:                                               ; preds = %8
  %18 = load i32, i32* @YRMCDS_OK, align 4
  store i32 %18, i32* %2, align 4
  br label %19

19:                                               ; preds = %17, %15, %6
  %20 = load i32, i32* %2, align 4
  ret i32 %20
}

declare dso_local i32 @shutdown(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

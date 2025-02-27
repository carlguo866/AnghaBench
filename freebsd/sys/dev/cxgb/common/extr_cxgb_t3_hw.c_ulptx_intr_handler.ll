; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/cxgb/common/extr_cxgb_t3_hw.c_ulptx_intr_handler.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/cxgb/common/extr_cxgb_t3_hw.c_ulptx_intr_handler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.intr_info = type { i32, i8*, i32, i32 }
%struct.TYPE_5__ = type { i32 }

@ulptx_intr_handler.ulptx_intr_info = internal global [4 x %struct.intr_info] [%struct.intr_info { i32 131, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i32 0, i32 0), i32 129, i32 0 }, %struct.intr_info { i32 130, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.1, i32 0, i32 0), i32 128, i32 0 }, %struct.intr_info { i32 252, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.2, i32 0, i32 0), i32 -1, i32 1 }, %struct.intr_info zeroinitializer], align 16
@.str = private unnamed_addr constant [35 x i8] c"ULP TX channel 0 PBL out of bounds\00", align 1
@.str.1 = private unnamed_addr constant [35 x i8] c"ULP TX channel 1 PBL out of bounds\00", align 1
@.str.2 = private unnamed_addr constant [20 x i8] c"ULP TX parity error\00", align 1
@A_ULPTX_INT_CAUSE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_5__*)* @ulptx_intr_handler to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ulptx_intr_handler(%struct.TYPE_5__* %0) #0 {
  %2 = alloca %struct.TYPE_5__*, align 8
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %2, align 8
  %3 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %4 = load i32, i32* @A_ULPTX_INT_CAUSE, align 4
  %5 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %6 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 4
  %8 = call i64 @t3_handle_intr_status(%struct.TYPE_5__* %3, i32 %4, i32 -1, %struct.intr_info* getelementptr inbounds ([4 x %struct.intr_info], [4 x %struct.intr_info]* @ulptx_intr_handler.ulptx_intr_info, i64 0, i64 0), i32 %7)
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %13

10:                                               ; preds = %1
  %11 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %12 = call i32 @t3_fatal_err(%struct.TYPE_5__* %11)
  br label %13

13:                                               ; preds = %10, %1
  ret void
}

declare dso_local i64 @t3_handle_intr_status(%struct.TYPE_5__*, i32, i32, %struct.intr_info*, i32) #1

declare dso_local i32 @t3_fatal_err(%struct.TYPE_5__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

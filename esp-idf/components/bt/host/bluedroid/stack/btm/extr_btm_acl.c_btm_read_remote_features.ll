; ModuleID = '/home/carl/AnghaBench/esp-idf/components/bt/host/bluedroid/stack/btm/extr_btm_acl.c_btm_read_remote_features.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/bt/host/bluedroid/stack/btm/extr_btm_acl.c_btm_read_remote_features.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32, i64 }

@.str = private unnamed_addr constant [39 x i8] c"btm_read_remote_features() handle: %d\0A\00", align 1
@MAX_L2CAP_LINKS = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [44 x i8] c"btm_read_remote_features handle=%d invalid\0A\00", align 1
@btm_cb = common dso_local global %struct.TYPE_4__ zeroinitializer, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @btm_read_remote_features(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i64, align 8
  %4 = alloca %struct.TYPE_3__*, align 8
  store i32 %0, i32* %2, align 4
  %5 = load i32, i32* %2, align 4
  %6 = call i32 @BTM_TRACE_DEBUG(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0), i32 %5)
  %7 = load i32, i32* %2, align 4
  %8 = call i64 @btm_handle_to_acl_index(i32 %7)
  store i64 %8, i64* %3, align 8
  %9 = load i64, i64* @MAX_L2CAP_LINKS, align 8
  %10 = icmp uge i64 %8, %9
  br i1 %10, label %11, label %14

11:                                               ; preds = %1
  %12 = load i32, i32* %2, align 4
  %13 = call i32 @BTM_TRACE_ERROR(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.1, i64 0, i64 0), i32 %12)
  br label %26

14:                                               ; preds = %1
  %15 = load %struct.TYPE_3__*, %struct.TYPE_3__** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @btm_cb, i32 0, i32 0), align 8
  %16 = load i64, i64* %3, align 8
  %17 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %15, i64 %16
  store %struct.TYPE_3__* %17, %struct.TYPE_3__** %4, align 8
  %18 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %19 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %18, i32 0, i32 1
  store i64 0, i64* %19, align 8
  %20 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %21 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = call i32 @memset(i32 %22, i32 0, i32 4)
  %24 = load i32, i32* %2, align 4
  %25 = call i32 @btsnd_hcic_rmt_features_req(i32 %24)
  br label %26

26:                                               ; preds = %14, %11
  ret void
}

declare dso_local i32 @BTM_TRACE_DEBUG(i8*, i32) #1

declare dso_local i64 @btm_handle_to_acl_index(i32) #1

declare dso_local i32 @BTM_TRACE_ERROR(i8*, i32) #1

declare dso_local i32 @memset(i32, i32, i32) #1

declare dso_local i32 @btsnd_hcic_rmt_features_req(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

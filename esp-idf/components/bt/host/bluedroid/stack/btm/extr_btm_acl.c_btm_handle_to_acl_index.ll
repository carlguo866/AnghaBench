; ModuleID = '/home/carl/AnghaBench/esp-idf/components/bt/host/bluedroid/stack/btm/extr_btm_acl.c_btm_handle_to_acl_index.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/bt/host/bluedroid/stack/btm/extr_btm_acl.c_btm_handle_to_acl_index.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i64, i64 }

@btm_cb = common dso_local global %struct.TYPE_4__ zeroinitializer, align 8
@.str = private unnamed_addr constant [25 x i8] c"btm_handle_to_acl_index\0A\00", align 1
@MAX_L2CAP_LINKS = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @btm_handle_to_acl_index(i64 %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca %struct.TYPE_3__*, align 8
  %4 = alloca i64, align 8
  store i64 %0, i64* %2, align 8
  %5 = load %struct.TYPE_3__*, %struct.TYPE_3__** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @btm_cb, i32 0, i32 0), align 8
  %6 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %5, i64 0
  store %struct.TYPE_3__* %6, %struct.TYPE_3__** %3, align 8
  %7 = call i32 @BTM_TRACE_DEBUG(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0))
  store i64 0, i64* %4, align 8
  br label %8

8:                                                ; preds = %25, %1
  %9 = load i64, i64* %4, align 8
  %10 = load i64, i64* @MAX_L2CAP_LINKS, align 8
  %11 = icmp slt i64 %9, %10
  br i1 %11, label %12, label %30

12:                                               ; preds = %8
  %13 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %14 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %13, i32 0, i32 1
  %15 = load i64, i64* %14, align 8
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %24

17:                                               ; preds = %12
  %18 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %19 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = load i64, i64* %2, align 8
  %22 = icmp eq i64 %20, %21
  br i1 %22, label %23, label %24

23:                                               ; preds = %17
  br label %30

24:                                               ; preds = %17, %12
  br label %25

25:                                               ; preds = %24
  %26 = load i64, i64* %4, align 8
  %27 = add nsw i64 %26, 1
  store i64 %27, i64* %4, align 8
  %28 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %29 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %28, i32 1
  store %struct.TYPE_3__* %29, %struct.TYPE_3__** %3, align 8
  br label %8

30:                                               ; preds = %23, %8
  %31 = load i64, i64* %4, align 8
  ret i64 %31
}

declare dso_local i32 @BTM_TRACE_DEBUG(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/esp-idf/components/bt/host/bluedroid/stack/btm/extr_btm_pm.c_btm_pm_find_acl_ind.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/bt/host/bluedroid/stack/btm/extr_btm_pm.c_btm_pm_find_acl_ind.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { %struct.TYPE_4__*, %struct.TYPE_5__* }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_5__ = type { i64, i32, i64 }

@btm_cb = common dso_local global %struct.TYPE_6__ zeroinitializer, align 8
@MAX_L2CAP_LINKS = common dso_local global i64 0, align 8
@BD_ADDR_LEN = common dso_local global i32 0, align 4
@BT_TRANSPORT_BR_EDR = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [34 x i8] c"btm_pm_find_acl_ind ind:%d, st:%d\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @btm_pm_find_acl_ind to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @btm_pm_find_acl_ind(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_5__*, align 8
  %4 = alloca i64, align 8
  store i32 %0, i32* %2, align 4
  %5 = load %struct.TYPE_5__*, %struct.TYPE_5__** getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @btm_cb, i32 0, i32 1), align 8
  %6 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %5, i64 0
  store %struct.TYPE_5__* %6, %struct.TYPE_5__** %3, align 8
  store i64 0, i64* %4, align 8
  br label %7

7:                                                ; preds = %39, %1
  %8 = load i64, i64* %4, align 8
  %9 = load i64, i64* @MAX_L2CAP_LINKS, align 8
  %10 = icmp ult i64 %8, %9
  br i1 %10, label %11, label %44

11:                                               ; preds = %7
  %12 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %13 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %12, i32 0, i32 2
  %14 = load i64, i64* %13, align 8
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %38

16:                                               ; preds = %11
  %17 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %18 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 8
  %20 = load i32, i32* %2, align 4
  %21 = load i32, i32* @BD_ADDR_LEN, align 4
  %22 = call i32 @memcmp(i32 %19, i32 %20, i32 %21)
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %38, label %24

24:                                               ; preds = %16
  %25 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %26 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = load i64, i64* @BT_TRANSPORT_BR_EDR, align 8
  %29 = icmp eq i64 %27, %28
  br i1 %29, label %30, label %38

30:                                               ; preds = %24
  %31 = load i64, i64* %4, align 8
  %32 = load %struct.TYPE_4__*, %struct.TYPE_4__** getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @btm_cb, i32 0, i32 0), align 8
  %33 = load i64, i64* %4, align 8
  %34 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %32, i64 %33
  %35 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = call i32 @BTM_TRACE_DEBUG(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0), i64 %31, i32 %36)
  br label %44

38:                                               ; preds = %24, %16, %11
  br label %39

39:                                               ; preds = %38
  %40 = load i64, i64* %4, align 8
  %41 = add i64 %40, 1
  store i64 %41, i64* %4, align 8
  %42 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %43 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %42, i32 1
  store %struct.TYPE_5__* %43, %struct.TYPE_5__** %3, align 8
  br label %7

44:                                               ; preds = %30, %7
  %45 = load i64, i64* %4, align 8
  %46 = trunc i64 %45 to i32
  ret i32 %46
}

declare dso_local i32 @memcmp(i32, i32, i32) #1

declare dso_local i32 @BTM_TRACE_DEBUG(i8*, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

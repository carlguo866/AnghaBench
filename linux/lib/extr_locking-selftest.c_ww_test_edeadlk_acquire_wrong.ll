; ModuleID = '/home/carl/AnghaBench/linux/lib/extr_locking-selftest.c_ww_test_edeadlk_acquire_wrong.c'
source_filename = "/home/carl/AnghaBench/linux/lib/extr_locking-selftest.c_ww_test_edeadlk_acquire_wrong.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { %struct.TYPE_11__*, %struct.TYPE_13__ }
%struct.TYPE_11__ = type { i32 }
%struct.TYPE_13__ = type { i32 }

@o2 = common dso_local global %struct.TYPE_12__ zeroinitializer, align 8
@_THIS_IP_ = common dso_local global i32 0, align 4
@t2 = common dso_local global %struct.TYPE_11__ zeroinitializer, align 4
@t = common dso_local global %struct.TYPE_11__ zeroinitializer, align 4
@o = common dso_local global %struct.TYPE_12__ zeroinitializer, align 8
@EDEADLK = common dso_local global i32 0, align 4
@o3 = common dso_local global %struct.TYPE_12__ zeroinitializer, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @ww_test_edeadlk_acquire_wrong to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ww_test_edeadlk_acquire_wrong() #0 {
  %1 = alloca i32, align 4
  %2 = call i32 @mutex_lock(%struct.TYPE_13__* getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @o2, i32 0, i32 1))
  %3 = load i32, i32* @_THIS_IP_, align 4
  %4 = call i32 @mutex_release(i32* getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @o2, i32 0, i32 1, i32 0), i32 1, i32 %3)
  store %struct.TYPE_11__* @t2, %struct.TYPE_11__** getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @o2, i32 0, i32 0), align 8
  %5 = call i32 @WWAI(%struct.TYPE_11__* @t)
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 bitcast (%struct.TYPE_11__* @t2 to i8*), i8* align 4 bitcast (%struct.TYPE_11__* @t to i8*), i64 4, i1 false)
  %6 = load i32, i32* getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @t2, i32 0, i32 0), align 4
  %7 = add nsw i32 %6, -1
  store i32 %7, i32* getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @t2, i32 0, i32 0), align 4
  %8 = call i32 @WWL(%struct.TYPE_12__* @o, %struct.TYPE_11__* @t)
  store i32 %8, i32* %1, align 4
  %9 = load i32, i32* %1, align 4
  %10 = call i32 @WARN_ON(i32 %9)
  %11 = call i32 @WWL(%struct.TYPE_12__* @o2, %struct.TYPE_11__* @t)
  store i32 %11, i32* %1, align 4
  %12 = load i32, i32* %1, align 4
  %13 = load i32, i32* @EDEADLK, align 4
  %14 = sub nsw i32 0, %13
  %15 = icmp ne i32 %12, %14
  %16 = zext i1 %15 to i32
  %17 = call i32 @WARN_ON(i32 %16)
  %18 = load i32, i32* %1, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %22, label %20

20:                                               ; preds = %0
  %21 = call i32 @WWU(%struct.TYPE_12__* @o2)
  br label %22

22:                                               ; preds = %20, %0
  %23 = call i32 @WWU(%struct.TYPE_12__* @o)
  %24 = call i32 @WWL(%struct.TYPE_12__* @o3, %struct.TYPE_11__* @t)
  store i32 %24, i32* %1, align 4
  ret void
}

declare dso_local i32 @mutex_lock(%struct.TYPE_13__*) #1

declare dso_local i32 @mutex_release(i32*, i32, i32) #1

declare dso_local i32 @WWAI(%struct.TYPE_11__*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @WWL(%struct.TYPE_12__*, %struct.TYPE_11__*) #1

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local i32 @WWU(%struct.TYPE_12__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/libuv/test/extr_test-fs-readdir.c_non_empty_closedir_cb.c'
source_filename = "/home/carl/AnghaBench/libuv/test/extr_test-fs-readdir.c_non_empty_closedir_cb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i64 }

@closedir_req = common dso_local global %struct.TYPE_5__ zeroinitializer, align 8
@non_empty_closedir_cb_count = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_5__*)* @non_empty_closedir_cb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @non_empty_closedir_cb(%struct.TYPE_5__* %0) #0 {
  %2 = alloca %struct.TYPE_5__*, align 8
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %2, align 8
  %3 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %4 = icmp eq %struct.TYPE_5__* %3, @closedir_req
  %5 = zext i1 %4 to i32
  %6 = call i32 @ASSERT(i32 %5)
  %7 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %8 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = icmp eq i64 %9, 0
  %11 = zext i1 %10 to i32
  %12 = call i32 @ASSERT(i32 %11)
  %13 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %14 = call i32 @uv_fs_req_cleanup(%struct.TYPE_5__* %13)
  %15 = load i32, i32* @non_empty_closedir_cb_count, align 4
  %16 = add nsw i32 %15, 1
  store i32 %16, i32* @non_empty_closedir_cb_count, align 4
  ret void
}

declare dso_local i32 @ASSERT(i32) #1

declare dso_local i32 @uv_fs_req_cleanup(%struct.TYPE_5__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

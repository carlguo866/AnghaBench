; ModuleID = '/home/carl/AnghaBench/linux/drivers/misc/mei/extr_client.c_mei_io_cb_free.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/misc/mei/extr_client.c_mei_io_cb_free.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mei_cl_cb = type { %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { %struct.mei_cl_cb* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @mei_io_cb_free(%struct.mei_cl_cb* %0) #0 {
  %2 = alloca %struct.mei_cl_cb*, align 8
  store %struct.mei_cl_cb* %0, %struct.mei_cl_cb** %2, align 8
  %3 = load %struct.mei_cl_cb*, %struct.mei_cl_cb** %2, align 8
  %4 = icmp eq %struct.mei_cl_cb* %3, null
  br i1 %4, label %5, label %6

5:                                                ; preds = %1
  br label %17

6:                                                ; preds = %1
  %7 = load %struct.mei_cl_cb*, %struct.mei_cl_cb** %2, align 8
  %8 = getelementptr inbounds %struct.mei_cl_cb, %struct.mei_cl_cb* %7, i32 0, i32 1
  %9 = call i32 @list_del(i32* %8)
  %10 = load %struct.mei_cl_cb*, %struct.mei_cl_cb** %2, align 8
  %11 = getelementptr inbounds %struct.mei_cl_cb, %struct.mei_cl_cb* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 0
  %13 = load %struct.mei_cl_cb*, %struct.mei_cl_cb** %12, align 8
  %14 = call i32 @kfree(%struct.mei_cl_cb* %13)
  %15 = load %struct.mei_cl_cb*, %struct.mei_cl_cb** %2, align 8
  %16 = call i32 @kfree(%struct.mei_cl_cb* %15)
  br label %17

17:                                               ; preds = %6, %5
  ret void
}

declare dso_local i32 @list_del(i32*) #1

declare dso_local i32 @kfree(%struct.mei_cl_cb*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

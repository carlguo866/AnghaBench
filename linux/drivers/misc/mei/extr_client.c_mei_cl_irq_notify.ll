; ModuleID = '/home/carl/AnghaBench/linux/drivers/misc/mei/extr_client.c_mei_cl_irq_notify.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/misc/mei/extr_client.c_mei_cl_irq_notify.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mei_cl = type { i32, %struct.mei_device* }
%struct.mei_device = type { %struct.list_head }
%struct.list_head = type { i32 }
%struct.mei_cl_cb = type { i32, i32 }

@EOVERFLOW = common dso_local global i32 0, align 4
@EMSGSIZE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mei_cl_irq_notify(%struct.mei_cl* %0, %struct.mei_cl_cb* %1, %struct.list_head* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.mei_cl*, align 8
  %6 = alloca %struct.mei_cl_cb*, align 8
  %7 = alloca %struct.list_head*, align 8
  %8 = alloca %struct.mei_device*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.mei_cl* %0, %struct.mei_cl** %5, align 8
  store %struct.mei_cl_cb* %1, %struct.mei_cl_cb** %6, align 8
  store %struct.list_head* %2, %struct.list_head** %7, align 8
  %13 = load %struct.mei_cl*, %struct.mei_cl** %5, align 8
  %14 = getelementptr inbounds %struct.mei_cl, %struct.mei_cl* %13, i32 0, i32 1
  %15 = load %struct.mei_device*, %struct.mei_device** %14, align 8
  store %struct.mei_device* %15, %struct.mei_device** %8, align 8
  %16 = call i64 @mei_hbm2slots(i32 4)
  store i64 %16, i64* %9, align 8
  %17 = load %struct.mei_device*, %struct.mei_device** %8, align 8
  %18 = call i32 @mei_hbuf_empty_slots(%struct.mei_device* %17)
  store i32 %18, i32* %10, align 4
  %19 = load i32, i32* %10, align 4
  %20 = icmp slt i32 %19, 0
  br i1 %20, label %21, label %24

21:                                               ; preds = %3
  %22 = load i32, i32* @EOVERFLOW, align 4
  %23 = sub nsw i32 0, %22
  store i32 %23, i32* %4, align 4
  br label %58

24:                                               ; preds = %3
  %25 = load i32, i32* %10, align 4
  %26 = sext i32 %25 to i64
  %27 = load i64, i64* %9, align 8
  %28 = icmp slt i64 %26, %27
  br i1 %28, label %29, label %32

29:                                               ; preds = %24
  %30 = load i32, i32* @EMSGSIZE, align 4
  %31 = sub nsw i32 0, %30
  store i32 %31, i32* %4, align 4
  br label %58

32:                                               ; preds = %24
  %33 = load %struct.mei_cl_cb*, %struct.mei_cl_cb** %6, align 8
  %34 = getelementptr inbounds %struct.mei_cl_cb, %struct.mei_cl_cb* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 4
  %36 = call i32 @mei_cl_notify_fop2req(i32 %35)
  store i32 %36, i32* %12, align 4
  %37 = load %struct.mei_device*, %struct.mei_device** %8, align 8
  %38 = load %struct.mei_cl*, %struct.mei_cl** %5, align 8
  %39 = load i32, i32* %12, align 4
  %40 = call i32 @mei_hbm_cl_notify_req(%struct.mei_device* %37, %struct.mei_cl* %38, i32 %39)
  store i32 %40, i32* %11, align 4
  %41 = load i32, i32* %11, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %52

43:                                               ; preds = %32
  %44 = load i32, i32* %11, align 4
  %45 = load %struct.mei_cl*, %struct.mei_cl** %5, align 8
  %46 = getelementptr inbounds %struct.mei_cl, %struct.mei_cl* %45, i32 0, i32 0
  store i32 %44, i32* %46, align 8
  %47 = load %struct.mei_cl_cb*, %struct.mei_cl_cb** %6, align 8
  %48 = getelementptr inbounds %struct.mei_cl_cb, %struct.mei_cl_cb* %47, i32 0, i32 0
  %49 = load %struct.list_head*, %struct.list_head** %7, align 8
  %50 = call i32 @list_move_tail(i32* %48, %struct.list_head* %49)
  %51 = load i32, i32* %11, align 4
  store i32 %51, i32* %4, align 4
  br label %58

52:                                               ; preds = %32
  %53 = load %struct.mei_cl_cb*, %struct.mei_cl_cb** %6, align 8
  %54 = getelementptr inbounds %struct.mei_cl_cb, %struct.mei_cl_cb* %53, i32 0, i32 0
  %55 = load %struct.mei_device*, %struct.mei_device** %8, align 8
  %56 = getelementptr inbounds %struct.mei_device, %struct.mei_device* %55, i32 0, i32 0
  %57 = call i32 @list_move_tail(i32* %54, %struct.list_head* %56)
  store i32 0, i32* %4, align 4
  br label %58

58:                                               ; preds = %52, %43, %29, %21
  %59 = load i32, i32* %4, align 4
  ret i32 %59
}

declare dso_local i64 @mei_hbm2slots(i32) #1

declare dso_local i32 @mei_hbuf_empty_slots(%struct.mei_device*) #1

declare dso_local i32 @mei_cl_notify_fop2req(i32) #1

declare dso_local i32 @mei_hbm_cl_notify_req(%struct.mei_device*, %struct.mei_cl*, i32) #1

declare dso_local i32 @list_move_tail(i32*, %struct.list_head*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

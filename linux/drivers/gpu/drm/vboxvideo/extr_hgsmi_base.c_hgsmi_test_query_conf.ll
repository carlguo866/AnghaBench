; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/vboxvideo/extr_hgsmi_base.c_hgsmi_test_query_conf.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/vboxvideo/extr_hgsmi_base.c_hgsmi_test_query_conf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gen_pool = type { i32 }

@U32_MAX = common dso_local global i64 0, align 8
@EIO = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @hgsmi_test_query_conf(%struct.gen_pool* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.gen_pool*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  store %struct.gen_pool* %0, %struct.gen_pool** %3, align 8
  store i64 0, i64* %4, align 8
  %6 = load %struct.gen_pool*, %struct.gen_pool** %3, align 8
  %7 = load i64, i64* @U32_MAX, align 8
  %8 = call i32 @hgsmi_query_conf(%struct.gen_pool* %6, i64 %7, i64* %4)
  store i32 %8, i32* %5, align 4
  %9 = load i32, i32* %5, align 4
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %11, label %13

11:                                               ; preds = %1
  %12 = load i32, i32* %5, align 4
  store i32 %12, i32* %2, align 4
  br label %23

13:                                               ; preds = %1
  %14 = load i64, i64* %4, align 8
  %15 = load i64, i64* @U32_MAX, align 8
  %16 = icmp eq i64 %14, %15
  br i1 %16, label %17, label %18

17:                                               ; preds = %13
  br label %21

18:                                               ; preds = %13
  %19 = load i32, i32* @EIO, align 4
  %20 = sub nsw i32 0, %19
  br label %21

21:                                               ; preds = %18, %17
  %22 = phi i32 [ 0, %17 ], [ %20, %18 ]
  store i32 %22, i32* %2, align 4
  br label %23

23:                                               ; preds = %21, %11
  %24 = load i32, i32* %2, align 4
  ret i32 %24
}

declare dso_local i32 @hgsmi_query_conf(%struct.gen_pool*, i64, i64*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

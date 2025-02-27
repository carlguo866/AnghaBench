; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/codecs/extr_wm_adsp.c_wm_adsp_buffer_alloc.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/codecs/extr_wm_adsp.c_wm_adsp_buffer_alloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wm_adsp_compr_buf = type { i32, %struct.wm_adsp* }
%struct.wm_adsp = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.wm_adsp_compr_buf* (%struct.wm_adsp*)* @wm_adsp_buffer_alloc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.wm_adsp_compr_buf* @wm_adsp_buffer_alloc(%struct.wm_adsp* %0) #0 {
  %2 = alloca %struct.wm_adsp_compr_buf*, align 8
  %3 = alloca %struct.wm_adsp*, align 8
  %4 = alloca %struct.wm_adsp_compr_buf*, align 8
  store %struct.wm_adsp* %0, %struct.wm_adsp** %3, align 8
  %5 = load i32, i32* @GFP_KERNEL, align 4
  %6 = call %struct.wm_adsp_compr_buf* @kzalloc(i32 16, i32 %5)
  store %struct.wm_adsp_compr_buf* %6, %struct.wm_adsp_compr_buf** %4, align 8
  %7 = load %struct.wm_adsp_compr_buf*, %struct.wm_adsp_compr_buf** %4, align 8
  %8 = icmp ne %struct.wm_adsp_compr_buf* %7, null
  br i1 %8, label %10, label %9

9:                                                ; preds = %1
  store %struct.wm_adsp_compr_buf* null, %struct.wm_adsp_compr_buf** %2, align 8
  br label %22

10:                                               ; preds = %1
  %11 = load %struct.wm_adsp*, %struct.wm_adsp** %3, align 8
  %12 = load %struct.wm_adsp_compr_buf*, %struct.wm_adsp_compr_buf** %4, align 8
  %13 = getelementptr inbounds %struct.wm_adsp_compr_buf, %struct.wm_adsp_compr_buf* %12, i32 0, i32 1
  store %struct.wm_adsp* %11, %struct.wm_adsp** %13, align 8
  %14 = load %struct.wm_adsp_compr_buf*, %struct.wm_adsp_compr_buf** %4, align 8
  %15 = call i32 @wm_adsp_buffer_clear(%struct.wm_adsp_compr_buf* %14)
  %16 = load %struct.wm_adsp_compr_buf*, %struct.wm_adsp_compr_buf** %4, align 8
  %17 = getelementptr inbounds %struct.wm_adsp_compr_buf, %struct.wm_adsp_compr_buf* %16, i32 0, i32 0
  %18 = load %struct.wm_adsp*, %struct.wm_adsp** %3, align 8
  %19 = getelementptr inbounds %struct.wm_adsp, %struct.wm_adsp* %18, i32 0, i32 0
  %20 = call i32 @list_add_tail(i32* %17, i32* %19)
  %21 = load %struct.wm_adsp_compr_buf*, %struct.wm_adsp_compr_buf** %4, align 8
  store %struct.wm_adsp_compr_buf* %21, %struct.wm_adsp_compr_buf** %2, align 8
  br label %22

22:                                               ; preds = %10, %9
  %23 = load %struct.wm_adsp_compr_buf*, %struct.wm_adsp_compr_buf** %2, align 8
  ret %struct.wm_adsp_compr_buf* %23
}

declare dso_local %struct.wm_adsp_compr_buf* @kzalloc(i32, i32) #1

declare dso_local i32 @wm_adsp_buffer_clear(%struct.wm_adsp_compr_buf*) #1

declare dso_local i32 @list_add_tail(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

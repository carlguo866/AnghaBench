; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/etnaviv/extr_etnaviv_buffer.c_etnaviv_buffer_reserve.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/etnaviv/extr_etnaviv_buffer.c_etnaviv_buffer_reserve.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.etnaviv_gpu = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.etnaviv_cmdbuf = type { i64, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.etnaviv_gpu*, %struct.etnaviv_cmdbuf*, i32)* @etnaviv_buffer_reserve to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @etnaviv_buffer_reserve(%struct.etnaviv_gpu* %0, %struct.etnaviv_cmdbuf* %1, i32 %2) #0 {
  %4 = alloca %struct.etnaviv_gpu*, align 8
  %5 = alloca %struct.etnaviv_cmdbuf*, align 8
  %6 = alloca i32, align 4
  store %struct.etnaviv_gpu* %0, %struct.etnaviv_gpu** %4, align 8
  store %struct.etnaviv_cmdbuf* %1, %struct.etnaviv_cmdbuf** %5, align 8
  store i32 %2, i32* %6, align 4
  %7 = load %struct.etnaviv_cmdbuf*, %struct.etnaviv_cmdbuf** %5, align 8
  %8 = getelementptr inbounds %struct.etnaviv_cmdbuf, %struct.etnaviv_cmdbuf* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = load i32, i32* %6, align 4
  %11 = zext i32 %10 to i64
  %12 = mul i64 %11, 4
  %13 = add i64 %9, %12
  %14 = load %struct.etnaviv_cmdbuf*, %struct.etnaviv_cmdbuf** %5, align 8
  %15 = getelementptr inbounds %struct.etnaviv_cmdbuf, %struct.etnaviv_cmdbuf* %14, i32 0, i32 1
  %16 = load i64, i64* %15, align 8
  %17 = icmp ugt i64 %13, %16
  br i1 %17, label %18, label %21

18:                                               ; preds = %3
  %19 = load %struct.etnaviv_cmdbuf*, %struct.etnaviv_cmdbuf** %5, align 8
  %20 = getelementptr inbounds %struct.etnaviv_cmdbuf, %struct.etnaviv_cmdbuf* %19, i32 0, i32 0
  store i64 0, i64* %20, align 8
  br label %21

21:                                               ; preds = %18, %3
  %22 = load %struct.etnaviv_cmdbuf*, %struct.etnaviv_cmdbuf** %5, align 8
  %23 = load %struct.etnaviv_gpu*, %struct.etnaviv_gpu** %4, align 8
  %24 = getelementptr inbounds %struct.etnaviv_gpu, %struct.etnaviv_gpu* %23, i32 0, i32 0
  %25 = load %struct.TYPE_2__*, %struct.TYPE_2__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 0
  %27 = call i64 @etnaviv_cmdbuf_get_va(%struct.etnaviv_cmdbuf* %22, i32* %26)
  %28 = load %struct.etnaviv_cmdbuf*, %struct.etnaviv_cmdbuf** %5, align 8
  %29 = getelementptr inbounds %struct.etnaviv_cmdbuf, %struct.etnaviv_cmdbuf* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = add nsw i64 %27, %30
  ret i64 %31
}

declare dso_local i64 @etnaviv_cmdbuf_get_va(%struct.etnaviv_cmdbuf*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

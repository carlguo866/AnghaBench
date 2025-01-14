; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/etnaviv/extr_etnaviv_buffer.c_etnaviv_buffer_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/etnaviv/extr_etnaviv_buffer.c_etnaviv_buffer_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.etnaviv_gpu = type { %struct.TYPE_2__*, i32, %struct.etnaviv_cmdbuf }
%struct.TYPE_2__ = type { i32 }
%struct.etnaviv_cmdbuf = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @etnaviv_buffer_init(%struct.etnaviv_gpu* %0) #0 {
  %2 = alloca %struct.etnaviv_gpu*, align 8
  %3 = alloca %struct.etnaviv_cmdbuf*, align 8
  store %struct.etnaviv_gpu* %0, %struct.etnaviv_gpu** %2, align 8
  %4 = load %struct.etnaviv_gpu*, %struct.etnaviv_gpu** %2, align 8
  %5 = getelementptr inbounds %struct.etnaviv_gpu, %struct.etnaviv_gpu* %4, i32 0, i32 2
  store %struct.etnaviv_cmdbuf* %5, %struct.etnaviv_cmdbuf** %3, align 8
  %6 = load %struct.etnaviv_gpu*, %struct.etnaviv_gpu** %2, align 8
  %7 = getelementptr inbounds %struct.etnaviv_gpu, %struct.etnaviv_gpu* %6, i32 0, i32 1
  %8 = call i32 @lockdep_assert_held(i32* %7)
  %9 = load %struct.etnaviv_cmdbuf*, %struct.etnaviv_cmdbuf** %3, align 8
  %10 = getelementptr inbounds %struct.etnaviv_cmdbuf, %struct.etnaviv_cmdbuf* %9, i32 0, i32 0
  store i32 0, i32* %10, align 4
  %11 = load %struct.etnaviv_cmdbuf*, %struct.etnaviv_cmdbuf** %3, align 8
  %12 = call i32 @CMD_WAIT(%struct.etnaviv_cmdbuf* %11)
  %13 = load %struct.etnaviv_cmdbuf*, %struct.etnaviv_cmdbuf** %3, align 8
  %14 = load %struct.etnaviv_cmdbuf*, %struct.etnaviv_cmdbuf** %3, align 8
  %15 = load %struct.etnaviv_gpu*, %struct.etnaviv_gpu** %2, align 8
  %16 = getelementptr inbounds %struct.etnaviv_gpu, %struct.etnaviv_gpu* %15, i32 0, i32 0
  %17 = load %struct.TYPE_2__*, %struct.TYPE_2__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 0
  %19 = call i64 @etnaviv_cmdbuf_get_va(%struct.etnaviv_cmdbuf* %14, i32* %18)
  %20 = load %struct.etnaviv_cmdbuf*, %struct.etnaviv_cmdbuf** %3, align 8
  %21 = getelementptr inbounds %struct.etnaviv_cmdbuf, %struct.etnaviv_cmdbuf* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = sext i32 %22 to i64
  %24 = add nsw i64 %19, %23
  %25 = sub nsw i64 %24, 4
  %26 = call i32 @CMD_LINK(%struct.etnaviv_cmdbuf* %13, i32 2, i64 %25)
  %27 = load %struct.etnaviv_cmdbuf*, %struct.etnaviv_cmdbuf** %3, align 8
  %28 = getelementptr inbounds %struct.etnaviv_cmdbuf, %struct.etnaviv_cmdbuf* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = sdiv i32 %29, 8
  ret i32 %30
}

declare dso_local i32 @lockdep_assert_held(i32*) #1

declare dso_local i32 @CMD_WAIT(%struct.etnaviv_cmdbuf*) #1

declare dso_local i32 @CMD_LINK(%struct.etnaviv_cmdbuf*, i32, i64) #1

declare dso_local i64 @etnaviv_cmdbuf_get_va(%struct.etnaviv_cmdbuf*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

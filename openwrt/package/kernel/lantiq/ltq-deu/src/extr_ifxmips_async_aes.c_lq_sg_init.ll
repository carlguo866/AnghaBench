; ModuleID = '/home/carl/AnghaBench/openwrt/package/kernel/lantiq/ltq-deu/src/extr_ifxmips_async_aes.c_lq_sg_init.c'
source_filename = "/home/carl/AnghaBench/openwrt/package/kernel/lantiq/ltq-deu/src/extr_ifxmips_async_aes.c_lq_sg_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.aes_container = type { i8*, i8* }
%struct.scatterlist = type { i32 }
%struct.page = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.aes_container*, %struct.scatterlist*, %struct.scatterlist*)* @lq_sg_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @lq_sg_init(%struct.aes_container* %0, %struct.scatterlist* %1, %struct.scatterlist* %2) #0 {
  %4 = alloca %struct.aes_container*, align 8
  %5 = alloca %struct.scatterlist*, align 8
  %6 = alloca %struct.scatterlist*, align 8
  %7 = alloca %struct.page*, align 8
  %8 = alloca %struct.page*, align 8
  store %struct.aes_container* %0, %struct.aes_container** %4, align 8
  store %struct.scatterlist* %1, %struct.scatterlist** %5, align 8
  store %struct.scatterlist* %2, %struct.scatterlist** %6, align 8
  %9 = load %struct.scatterlist*, %struct.scatterlist** %5, align 8
  %10 = call %struct.page* @sg_virt(%struct.scatterlist* %9)
  store %struct.page* %10, %struct.page** %8, align 8
  %11 = load %struct.page*, %struct.page** %8, align 8
  %12 = bitcast %struct.page* %11 to i8*
  %13 = load %struct.aes_container*, %struct.aes_container** %4, align 8
  %14 = getelementptr inbounds %struct.aes_container, %struct.aes_container* %13, i32 0, i32 0
  store i8* %12, i8** %14, align 8
  %15 = load %struct.scatterlist*, %struct.scatterlist** %6, align 8
  %16 = call %struct.page* @sg_virt(%struct.scatterlist* %15)
  store %struct.page* %16, %struct.page** %7, align 8
  %17 = load %struct.page*, %struct.page** %7, align 8
  %18 = bitcast %struct.page* %17 to i8*
  %19 = load %struct.aes_container*, %struct.aes_container** %4, align 8
  %20 = getelementptr inbounds %struct.aes_container, %struct.aes_container* %19, i32 0, i32 1
  store i8* %18, i8** %20, align 8
  ret void
}

declare dso_local %struct.page* @sg_virt(%struct.scatterlist*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

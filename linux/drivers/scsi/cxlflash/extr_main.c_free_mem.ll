; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/cxlflash/extr_main.c_free_mem.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/cxlflash/extr_main.c_free_mem.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cxlflash_cfg = type { %struct.afu* }
%struct.afu = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.cxlflash_cfg*)* @free_mem to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @free_mem(%struct.cxlflash_cfg* %0) #0 {
  %2 = alloca %struct.cxlflash_cfg*, align 8
  %3 = alloca %struct.afu*, align 8
  store %struct.cxlflash_cfg* %0, %struct.cxlflash_cfg** %2, align 8
  %4 = load %struct.cxlflash_cfg*, %struct.cxlflash_cfg** %2, align 8
  %5 = getelementptr inbounds %struct.cxlflash_cfg, %struct.cxlflash_cfg* %4, i32 0, i32 0
  %6 = load %struct.afu*, %struct.afu** %5, align 8
  store %struct.afu* %6, %struct.afu** %3, align 8
  %7 = load %struct.cxlflash_cfg*, %struct.cxlflash_cfg** %2, align 8
  %8 = getelementptr inbounds %struct.cxlflash_cfg, %struct.cxlflash_cfg* %7, i32 0, i32 0
  %9 = load %struct.afu*, %struct.afu** %8, align 8
  %10 = icmp ne %struct.afu* %9, null
  br i1 %10, label %11, label %18

11:                                               ; preds = %1
  %12 = load %struct.afu*, %struct.afu** %3, align 8
  %13 = ptrtoint %struct.afu* %12 to i32
  %14 = call i32 @get_order(i32 4)
  %15 = call i32 @free_pages(i32 %13, i32 %14)
  %16 = load %struct.cxlflash_cfg*, %struct.cxlflash_cfg** %2, align 8
  %17 = getelementptr inbounds %struct.cxlflash_cfg, %struct.cxlflash_cfg* %16, i32 0, i32 0
  store %struct.afu* null, %struct.afu** %17, align 8
  br label %18

18:                                               ; preds = %11, %1
  ret void
}

declare dso_local i32 @free_pages(i32, i32) #1

declare dso_local i32 @get_order(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

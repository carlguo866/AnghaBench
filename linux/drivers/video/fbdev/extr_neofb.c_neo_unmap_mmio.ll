; ModuleID = '/home/carl/AnghaBench/linux/drivers/video/fbdev/extr_neofb.c_neo_unmap_mmio.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/video/fbdev/extr_neofb.c_neo_unmap_mmio.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fb_info = type { %struct.TYPE_2__, %struct.neofb_par* }
%struct.TYPE_2__ = type { i32, i32 }
%struct.neofb_par = type { i32* }

@.str = private unnamed_addr constant [15 x i8] c"neo_unmap_mmio\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.fb_info*)* @neo_unmap_mmio to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @neo_unmap_mmio(%struct.fb_info* %0) #0 {
  %2 = alloca %struct.fb_info*, align 8
  %3 = alloca %struct.neofb_par*, align 8
  store %struct.fb_info* %0, %struct.fb_info** %2, align 8
  %4 = load %struct.fb_info*, %struct.fb_info** %2, align 8
  %5 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %4, i32 0, i32 1
  %6 = load %struct.neofb_par*, %struct.neofb_par** %5, align 8
  store %struct.neofb_par* %6, %struct.neofb_par** %3, align 8
  %7 = call i32 @DBG(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0))
  %8 = load %struct.neofb_par*, %struct.neofb_par** %3, align 8
  %9 = getelementptr inbounds %struct.neofb_par, %struct.neofb_par* %8, i32 0, i32 0
  %10 = load i32*, i32** %9, align 8
  %11 = call i32 @iounmap(i32* %10)
  %12 = load %struct.neofb_par*, %struct.neofb_par** %3, align 8
  %13 = getelementptr inbounds %struct.neofb_par, %struct.neofb_par* %12, i32 0, i32 0
  store i32* null, i32** %13, align 8
  %14 = load %struct.fb_info*, %struct.fb_info** %2, align 8
  %15 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 4
  %18 = load %struct.fb_info*, %struct.fb_info** %2, align 8
  %19 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = call i32 @release_mem_region(i32 %17, i32 %21)
  ret void
}

declare dso_local i32 @DBG(i8*) #1

declare dso_local i32 @iounmap(i32*) #1

declare dso_local i32 @release_mem_region(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

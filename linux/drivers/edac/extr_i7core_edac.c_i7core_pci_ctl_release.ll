; ModuleID = '/home/carl/AnghaBench/linux/drivers/edac/extr_i7core_edac.c_i7core_pci_ctl_release.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/edac/extr_i7core_edac.c_i7core_pci_ctl_release.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i7core_pvt = type { i32*, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@KERN_ERR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [42 x i8] c"Couldn't find mem_ctl_info for socket %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.i7core_pvt*)* @i7core_pci_ctl_release to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @i7core_pci_ctl_release(%struct.i7core_pvt* %0) #0 {
  %2 = alloca %struct.i7core_pvt*, align 8
  store %struct.i7core_pvt* %0, %struct.i7core_pvt** %2, align 8
  %3 = load %struct.i7core_pvt*, %struct.i7core_pvt** %2, align 8
  %4 = getelementptr inbounds %struct.i7core_pvt, %struct.i7core_pvt* %3, i32 0, i32 0
  %5 = load i32*, i32** %4, align 8
  %6 = call i64 @likely(i32* %5)
  %7 = icmp ne i64 %6, 0
  br i1 %7, label %8, label %13

8:                                                ; preds = %1
  %9 = load %struct.i7core_pvt*, %struct.i7core_pvt** %2, align 8
  %10 = getelementptr inbounds %struct.i7core_pvt, %struct.i7core_pvt* %9, i32 0, i32 0
  %11 = load i32*, i32** %10, align 8
  %12 = call i32 @edac_pci_release_generic_ctl(i32* %11)
  br label %21

13:                                               ; preds = %1
  %14 = load i32, i32* @KERN_ERR, align 4
  %15 = load %struct.i7core_pvt*, %struct.i7core_pvt** %2, align 8
  %16 = getelementptr inbounds %struct.i7core_pvt, %struct.i7core_pvt* %15, i32 0, i32 1
  %17 = load %struct.TYPE_2__*, %struct.TYPE_2__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = call i32 @i7core_printk(i32 %14, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str, i64 0, i64 0), i32 %19)
  br label %21

21:                                               ; preds = %13, %8
  %22 = load %struct.i7core_pvt*, %struct.i7core_pvt** %2, align 8
  %23 = getelementptr inbounds %struct.i7core_pvt, %struct.i7core_pvt* %22, i32 0, i32 0
  store i32* null, i32** %23, align 8
  ret void
}

declare dso_local i64 @likely(i32*) #1

declare dso_local i32 @edac_pci_release_generic_ctl(i32*) #1

declare dso_local i32 @i7core_printk(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

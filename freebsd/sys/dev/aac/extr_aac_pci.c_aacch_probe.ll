; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/aac/extr_aac_pci.c_aacch_probe.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/aac/extr_aac_pci.c_aacch_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@ENXIO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [17 x i8] c"AAC RAID Channel\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @aacch_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @aacch_probe(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %4 = load i32, i32* %3, align 4
  %5 = call i32 @pci_get_vendor(i32 %4)
  %6 = icmp ne i32 %5, 36869
  br i1 %6, label %11, label %7

7:                                                ; preds = %1
  %8 = load i32, i32* %3, align 4
  %9 = call i32 @pci_get_device(i32 %8)
  %10 = icmp ne i32 %9, 197
  br i1 %10, label %11, label %13

11:                                               ; preds = %7, %1
  %12 = load i32, i32* @ENXIO, align 4
  store i32 %12, i32* %2, align 4
  br label %16

13:                                               ; preds = %7
  %14 = load i32, i32* %3, align 4
  %15 = call i32 @device_set_desc(i32 %14, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0))
  store i32 -10, i32* %2, align 4
  br label %16

16:                                               ; preds = %13, %11
  %17 = load i32, i32* %2, align 4
  ret i32 %17
}

declare dso_local i32 @pci_get_vendor(i32) #1

declare dso_local i32 @pci_get_device(i32) #1

declare dso_local i32 @device_set_desc(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

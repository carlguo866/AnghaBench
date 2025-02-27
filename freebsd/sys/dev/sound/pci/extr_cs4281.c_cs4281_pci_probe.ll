; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/sound/pci/extr_cs4281.c_cs4281_pci_probe.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/sound/pci/extr_cs4281.c_cs4281_pci_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [29 x i8] c"Crystal Semiconductor CS4281\00", align 1
@BUS_PROBE_DEFAULT = common dso_local global i32 0, align 4
@ENXIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @cs4281_pci_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cs4281_pci_probe(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  store i32 %0, i32* %2, align 4
  store i8* null, i8** %3, align 8
  %4 = load i32, i32* %2, align 4
  %5 = call i32 @pci_get_devid(i32 %4)
  switch i32 %5, label %7 [
    i32 128, label %6
  ]

6:                                                ; preds = %1
  store i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i8** %3, align 8
  br label %7

7:                                                ; preds = %1, %6
  %8 = load i8*, i8** %3, align 8
  %9 = icmp ne i8* %8, null
  br i1 %9, label %10, label %14

10:                                               ; preds = %7
  %11 = load i32, i32* %2, align 4
  %12 = load i8*, i8** %3, align 8
  %13 = call i32 @device_set_desc(i32 %11, i8* %12)
  br label %14

14:                                               ; preds = %10, %7
  %15 = load i8*, i8** %3, align 8
  %16 = icmp ne i8* %15, null
  br i1 %16, label %17, label %19

17:                                               ; preds = %14
  %18 = load i32, i32* @BUS_PROBE_DEFAULT, align 4
  br label %21

19:                                               ; preds = %14
  %20 = load i32, i32* @ENXIO, align 4
  br label %21

21:                                               ; preds = %19, %17
  %22 = phi i32 [ %18, %17 ], [ %20, %19 ]
  ret i32 %22
}

declare dso_local i32 @pci_get_devid(i32) #1

declare dso_local i32 @device_set_desc(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

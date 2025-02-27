; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/vte/extr_if_vte.c_vte_find_ident.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/vte/extr_if_vte.c_vte_find_ident.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vte_ident = type { i64, i64, i32* }

@vte_ident_table = common dso_local global %struct.vte_ident* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.vte_ident* (i32)* @vte_find_ident to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.vte_ident* @vte_find_ident(i32 %0) #0 {
  %2 = alloca %struct.vte_ident*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.vte_ident*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  store i32 %0, i32* %3, align 4
  %7 = load i32, i32* %3, align 4
  %8 = call i64 @pci_get_vendor(i32 %7)
  store i64 %8, i64* %5, align 8
  %9 = load i32, i32* %3, align 4
  %10 = call i64 @pci_get_device(i32 %9)
  store i64 %10, i64* %6, align 8
  %11 = load %struct.vte_ident*, %struct.vte_ident** @vte_ident_table, align 8
  store %struct.vte_ident* %11, %struct.vte_ident** %4, align 8
  br label %12

12:                                               ; preds = %32, %1
  %13 = load %struct.vte_ident*, %struct.vte_ident** %4, align 8
  %14 = getelementptr inbounds %struct.vte_ident, %struct.vte_ident* %13, i32 0, i32 2
  %15 = load i32*, i32** %14, align 8
  %16 = icmp ne i32* %15, null
  br i1 %16, label %17, label %35

17:                                               ; preds = %12
  %18 = load i64, i64* %5, align 8
  %19 = load %struct.vte_ident*, %struct.vte_ident** %4, align 8
  %20 = getelementptr inbounds %struct.vte_ident, %struct.vte_ident* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = icmp eq i64 %18, %21
  br i1 %22, label %23, label %31

23:                                               ; preds = %17
  %24 = load i64, i64* %6, align 8
  %25 = load %struct.vte_ident*, %struct.vte_ident** %4, align 8
  %26 = getelementptr inbounds %struct.vte_ident, %struct.vte_ident* %25, i32 0, i32 1
  %27 = load i64, i64* %26, align 8
  %28 = icmp eq i64 %24, %27
  br i1 %28, label %29, label %31

29:                                               ; preds = %23
  %30 = load %struct.vte_ident*, %struct.vte_ident** %4, align 8
  store %struct.vte_ident* %30, %struct.vte_ident** %2, align 8
  br label %36

31:                                               ; preds = %23, %17
  br label %32

32:                                               ; preds = %31
  %33 = load %struct.vte_ident*, %struct.vte_ident** %4, align 8
  %34 = getelementptr inbounds %struct.vte_ident, %struct.vte_ident* %33, i32 1
  store %struct.vte_ident* %34, %struct.vte_ident** %4, align 8
  br label %12

35:                                               ; preds = %12
  store %struct.vte_ident* null, %struct.vte_ident** %2, align 8
  br label %36

36:                                               ; preds = %35, %29
  %37 = load %struct.vte_ident*, %struct.vte_ident** %2, align 8
  ret %struct.vte_ident* %37
}

declare dso_local i64 @pci_get_vendor(i32) #1

declare dso_local i64 @pci_get_device(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

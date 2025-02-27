; ModuleID = '/home/carl/AnghaBench/freebsd/sys/netpfil/ipfw/extr_ip_fw_table.c_store_tei_result.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/netpfil/ipfw/extr_ip_fw_table.c_store_tei_result.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tentry_info = type { i32 }

@OP_ADD = common dso_local global i32 0, align 4
@TEI_FLAGS_ADDED = common dso_local global i32 0, align 4
@OP_DEL = common dso_local global i32 0, align 4
@TEI_FLAGS_DELETED = common dso_local global i32 0, align 4
@TEI_FLAGS_NOTFOUND = common dso_local global i32 0, align 4
@TEI_FLAGS_EXISTS = common dso_local global i32 0, align 4
@TEI_FLAGS_ERROR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.tentry_info*, i32, i32, i32)* @store_tei_result to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @store_tei_result(%struct.tentry_info* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.tentry_info*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.tentry_info* %0, %struct.tentry_info** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  store i32 0, i32* %9, align 4
  %10 = load i32, i32* %7, align 4
  switch i32 %10, label %31 [
    i32 0, label %11
    i32 128, label %27
    i32 129, label %29
  ]

11:                                               ; preds = %4
  %12 = load i32, i32* %6, align 4
  %13 = load i32, i32* @OP_ADD, align 4
  %14 = icmp eq i32 %12, %13
  br i1 %14, label %15, label %20

15:                                               ; preds = %11
  %16 = load i32, i32* %8, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %20

18:                                               ; preds = %15
  %19 = load i32, i32* @TEI_FLAGS_ADDED, align 4
  store i32 %19, i32* %9, align 4
  br label %20

20:                                               ; preds = %18, %15, %11
  %21 = load i32, i32* %6, align 4
  %22 = load i32, i32* @OP_DEL, align 4
  %23 = icmp eq i32 %21, %22
  br i1 %23, label %24, label %26

24:                                               ; preds = %20
  %25 = load i32, i32* @TEI_FLAGS_DELETED, align 4
  store i32 %25, i32* %9, align 4
  br label %26

26:                                               ; preds = %24, %20
  br label %33

27:                                               ; preds = %4
  %28 = load i32, i32* @TEI_FLAGS_NOTFOUND, align 4
  store i32 %28, i32* %9, align 4
  br label %33

29:                                               ; preds = %4
  %30 = load i32, i32* @TEI_FLAGS_EXISTS, align 4
  store i32 %30, i32* %9, align 4
  br label %33

31:                                               ; preds = %4
  %32 = load i32, i32* @TEI_FLAGS_ERROR, align 4
  store i32 %32, i32* %9, align 4
  br label %33

33:                                               ; preds = %31, %29, %27, %26
  %34 = load i32, i32* %9, align 4
  %35 = load %struct.tentry_info*, %struct.tentry_info** %5, align 8
  %36 = getelementptr inbounds %struct.tentry_info, %struct.tentry_info* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = or i32 %37, %34
  store i32 %38, i32* %36, align 4
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/qib/extr_qib_file_ops.c_find_free_ctxt.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/qib/extr_qib_file_ops.c_find_free_ctxt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { i32 }
%struct.qib_user_info = type { i64 }
%struct.qib_devdata = type { i64 }

@ENODEV = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, %struct.file*, %struct.qib_user_info*)* @find_free_ctxt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @find_free_ctxt(i32 %0, %struct.file* %1, %struct.qib_user_info* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.file*, align 8
  %6 = alloca %struct.qib_user_info*, align 8
  %7 = alloca %struct.qib_devdata*, align 8
  %8 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store %struct.file* %1, %struct.file** %5, align 8
  store %struct.qib_user_info* %2, %struct.qib_user_info** %6, align 8
  %9 = load i32, i32* %4, align 4
  %10 = call %struct.qib_devdata* @qib_lookup(i32 %9)
  store %struct.qib_devdata* %10, %struct.qib_devdata** %7, align 8
  %11 = load %struct.qib_devdata*, %struct.qib_devdata** %7, align 8
  %12 = icmp ne %struct.qib_devdata* %11, null
  br i1 %12, label %13, label %26

13:                                               ; preds = %3
  %14 = load %struct.qib_user_info*, %struct.qib_user_info** %6, align 8
  %15 = getelementptr inbounds %struct.qib_user_info, %struct.qib_user_info* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %29

18:                                               ; preds = %13
  %19 = load %struct.qib_user_info*, %struct.qib_user_info** %6, align 8
  %20 = getelementptr inbounds %struct.qib_user_info, %struct.qib_user_info* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = load %struct.qib_devdata*, %struct.qib_devdata** %7, align 8
  %23 = getelementptr inbounds %struct.qib_devdata, %struct.qib_devdata* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = icmp sgt i64 %21, %24
  br i1 %25, label %26, label %29

26:                                               ; preds = %18, %3
  %27 = load i32, i32* @ENODEV, align 4
  %28 = sub nsw i32 0, %27
  store i32 %28, i32* %8, align 4
  br label %37

29:                                               ; preds = %18, %13
  %30 = load %struct.file*, %struct.file** %5, align 8
  %31 = load %struct.qib_devdata*, %struct.qib_devdata** %7, align 8
  %32 = load %struct.qib_user_info*, %struct.qib_user_info** %6, align 8
  %33 = getelementptr inbounds %struct.qib_user_info, %struct.qib_user_info* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = load %struct.qib_user_info*, %struct.qib_user_info** %6, align 8
  %36 = call i32 @choose_port_ctxt(%struct.file* %30, %struct.qib_devdata* %31, i64 %34, %struct.qib_user_info* %35)
  store i32 %36, i32* %8, align 4
  br label %37

37:                                               ; preds = %29, %26
  %38 = load i32, i32* %8, align 4
  ret i32 %38
}

declare dso_local %struct.qib_devdata* @qib_lookup(i32) #1

declare dso_local i32 @choose_port_ctxt(%struct.file*, %struct.qib_devdata*, i64, %struct.qib_user_info*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

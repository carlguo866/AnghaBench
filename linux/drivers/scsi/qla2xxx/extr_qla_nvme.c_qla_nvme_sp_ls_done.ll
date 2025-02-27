; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/qla2xxx/extr_qla_nvme.c_qla_nvme_sp_ls_done.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/qla2xxx/extr_qla_nvme.c_qla_nvme_sp_ls_done.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, %struct.nvme_private* }
%struct.nvme_private = type { i32, i32 }

@EINVAL = common dso_local global i32 0, align 4
@qla_nvme_ls_complete = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_3__*, i32)* @qla_nvme_sp_ls_done to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @qla_nvme_sp_ls_done(%struct.TYPE_3__* %0, i32 %1) #0 {
  %3 = alloca %struct.TYPE_3__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.nvme_private*, align 8
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %7 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %6, i32 0, i32 1
  %8 = load %struct.nvme_private*, %struct.nvme_private** %7, align 8
  store %struct.nvme_private* %8, %struct.nvme_private** %5, align 8
  %9 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %10 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %9, i32 0, i32 0
  %11 = call i64 @kref_read(i32* %10)
  %12 = icmp eq i64 %11, 0
  %13 = zext i1 %12 to i32
  %14 = call i64 @WARN_ON_ONCE(i32 %13)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %17

16:                                               ; preds = %2
  br label %34

17:                                               ; preds = %2
  %18 = load i32, i32* %4, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %23

20:                                               ; preds = %17
  %21 = load i32, i32* @EINVAL, align 4
  %22 = sub nsw i32 0, %21
  store i32 %22, i32* %4, align 4
  br label %23

23:                                               ; preds = %20, %17
  %24 = load i32, i32* %4, align 4
  %25 = load %struct.nvme_private*, %struct.nvme_private** %5, align 8
  %26 = getelementptr inbounds %struct.nvme_private, %struct.nvme_private* %25, i32 0, i32 0
  store i32 %24, i32* %26, align 4
  %27 = load %struct.nvme_private*, %struct.nvme_private** %5, align 8
  %28 = getelementptr inbounds %struct.nvme_private, %struct.nvme_private* %27, i32 0, i32 1
  %29 = load i32, i32* @qla_nvme_ls_complete, align 4
  %30 = call i32 @INIT_WORK(i32* %28, i32 %29)
  %31 = load %struct.nvme_private*, %struct.nvme_private** %5, align 8
  %32 = getelementptr inbounds %struct.nvme_private, %struct.nvme_private* %31, i32 0, i32 1
  %33 = call i32 @schedule_work(i32* %32)
  br label %34

34:                                               ; preds = %23, %16
  ret void
}

declare dso_local i64 @WARN_ON_ONCE(i32) #1

declare dso_local i64 @kref_read(i32*) #1

declare dso_local i32 @INIT_WORK(i32*, i32) #1

declare dso_local i32 @schedule_work(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
